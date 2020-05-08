package com.kh.brocoli.board.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.board.model.service.BoardService;
import com.kh.brocoli.board.model.vo.Notice;
import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.SearchCondition;
import com.kh.brocoli.commons.Pagination;


@Controller
public class BoardController {

	@Autowired
	private BoardService bnService;

	/**
	 * 페이징 처리
	 * 
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("bnlist.mn")
	public ModelAndView boardlist(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {
		System.out.println("커런트 페이지유 : " + currentPage);

		int listCount = bnService.getListCount();

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<Notice> list = bnService.selectList(pi);

		System.out.println("listCount : " + listCount);
		System.out.println("pi : " + pi);
		System.out.println("list : " + list);

		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("Board-Notice-List");

		return mv;
	}

	@RequestMapping("bnInsertView.mn")
	public String boardInsertView() {
		return "Board-Notice-Insert";
	}

	/**
	 * 게시판 삽입
	 * 
	 * @param n
	 * @param request
	 * @param file
	 * @return
	 */
	@RequestMapping("bnInsert.mn")
	public String insertBoard(Notice n, HttpServletRequest request,
			@RequestParam(name = "uploadFile", required = false) MultipartFile file) {
		if (!file.getOriginalFilename().equals("")) {

			String n_Img_ReName = saveFile(file, request);

			if (n_Img_ReName != null) {
				n.setN_Img(file.getOriginalFilename());
				n.setN_Img_ReName(n_Img_ReName);
			}
		}

		System.out.println("Controller insert : " + n);

		int result = bnService.insertBoardNotice(n);

		if (result > 0) {
			return "redirect:bnlist.mn";
		} else {
			return "common/errorPage";
		}
	}

	/**
	 * 파일 업로드
	 * 
	 * @param file
	 * @param request
	 * @return
	 */
	private String saveFile(MultipartFile file, HttpServletRequest request) {

		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + "\\Notice-Img";

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdir();
		}

		String n_Img = file.getOriginalFilename();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String ReName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
				+ n_Img.substring(n_Img.lastIndexOf(".") + 1);

		System.out.println("n_Img_ReName : " + ReName);

		String renamePath = folder + "\\" + ReName;

		try {
			file.transferTo(new File(renamePath)); // 이때 전달받은 file이 rename명으로 저장이된다.
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}

		return ReName;

	}

	/**
	 * 게시판 디테일
	 * 
	 * @param mv
	 * @param n_No
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("bnDetail.mn")
	public ModelAndView boardDetail(ModelAndView mv, int n_No,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {

		Notice n = bnService.selectBoardNotice(n_No);

		if (n != null) {
			mv.addObject("n", n).addObject("currentPage", currentPage).setViewName("Board-Notice-Detail");
		} else {
			mv.addObject("msg", "게시글 상세보기 실패").setViewName("common/errorPage");
		}

		return mv;

	}

	@RequestMapping("bnUpdateView.mn")
	public ModelAndView boardUpdateView(ModelAndView mv, int n_No) {
		mv.addObject("n", bnService.selectUpdateBoardNotice(n_No)).setViewName("Board-Notice-Update");

		return mv;
	}

	/**
	 * 게시판 수정
	 * 
	 * @param mv
	 * @param n
	 * @param request
	 * @param file
	 * @return
	 */
	@RequestMapping("bnUpdate.mn")
	public ModelAndView boardUpdate(ModelAndView mv, @ModelAttribute Notice n, HttpServletRequest request,
			@RequestParam(value = "reloadFile", required = false) MultipartFile file) {

		System.out.println("업뎃 n : " + n);

		if (file != null && file.isEmpty()) {
			if (n.getN_Img_ReName() != null) {
				deleteFile(n.getN_Img_ReName(), request);
			}
		}

		String renameFileName = saveFile(file, request);
		System.out.println("업뎃 renameFileName : " + renameFileName);

		if (renameFileName != null) {
			n.setN_Img(file.getOriginalFilename());
			n.setN_Img_ReName(renameFileName);
		}

		int result = bnService.updateBoardNotice(n);
		System.out.println("업뎃 result : " + result);

		if (result > 0) {
			mv.addObject("n_No", n.getN_No()).setViewName("redirect:bnDetail.mn");
		} else {
			mv.addObject("msg", "수정실패");
		}

		return mv;

	}

	public void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\buploadFiles";

		File f = new File(savePath + "\\" + fileName);

		if (f.exists()) {
			f.delete();
		}
	}

	/**
	 * 게시판 삭제
	 * 
	 * @param model
	 * @param n_No
	 * @param request
	 * @return
	 */
	@RequestMapping("bnDelete.mn")
	public String boardDelete(Model model, int n_No, HttpServletRequest request) {
		Notice n = bnService.selectUpdateBoardNotice(n_No);

		if (n.getN_Img_ReName() != null) {
			deleteFile(n.getN_Img_ReName(), request);
		}

		int result = bnService.deleteBoardNtice(n_No);

		if (result > 0) {
			return "redirect:bnlist.mn";
		} else {
			model.addAttribute("msg", "삭제 시 실패");
			return "comoon/errorPage";
		}
	}
	
	@RequestMapping("bnSearch.mn")
	public ModelAndView searchBoard(ModelAndView mv, 
									@RequestParam(value = "search", required = false) String search,
									@RequestParam(value = "condition", required = false) String condition,
									@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage
									) {
		
		System.out.println("bnSearch.mn" + search);
		System.out.println("bnSearch.mn" + condition);
		
		SearchCondition sc = new SearchCondition();
		
		sc.setSearch(search);
		sc.setCondition(condition);
		
		
		if(condition.equals("writer")) {
			sc.setWriter(search);
		}else if(condition.equals("title")) {
			sc.setTitle(search);
		}else if(condition.equals("content")) {
			sc.setContent(search);
		}
		
		// 검색 결과에 해당되는 게시물 갯수 조회
		int listCount = bnService.getSearchResultListCount(sc);
		
		// 페이지 정보가 담겨있는 PageInfo 받기 위해서 Pagination static 호출
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		// 검색결과에 해당되는 게시물 목록 조회
		ArrayList<Notice> list = bnService.selectSearchResultList(sc, pi);
		
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		
		mv.addObject("sc", sc);
		mv.addObject("contdition", condition);
		mv.addObject("search", search);
		
		mv.setViewName("Board-Notice-List");
		
		return mv;
	}
	  
}
	 
