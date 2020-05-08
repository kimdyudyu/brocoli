package com.kh.brocoli.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.brocoli.board.model.service.QnAService;
import com.kh.brocoli.board.model.vo.Notice;
import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.QnA;
import com.kh.brocoli.board.model.vo.QnA_Reply;
import com.kh.brocoli.board.model.vo.SearchCondition;
import com.kh.brocoli.commons.Pagination;

@Controller
public class QnAController {
	
	@Autowired
	private QnAService qService;

	@RequestMapping("QnAlist.mn")
	public ModelAndView boardlist(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {
		
		System.out.println("커런트 페이지유 : " + currentPage);

		int listCount = qService.getListCount();

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<QnA> list = qService.selectList(pi);

		System.out.println("listCount : " + listCount);
		System.out.println("pi : " + pi);
		System.out.println("list : " + list);

		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("Board-QnA-List");

		return mv;
	}
	
	@RequestMapping("qnaInsertView.mn")
	public String qnaInsertView() {
		return "Board-QnA-Insert";
	}
	
	/**
	 * 질문 삽입
	 * @param q
	 * @param request
	 * @param file
	 * @return
	 */
	@RequestMapping("qnaInsert.mn")
	public String insertQna(QnA q, HttpServletRequest request,
			@RequestParam(name = "uploadFile1", required = false) MultipartFile file1 ,
			@RequestParam(name = "uploadFile2", required = false) MultipartFile file2){
		
		System.out.println("파일1이유 : " + file1);
		System.out.println("파일2이유 : " + file2);
		
		if(!file1.getOriginalFilename().equals("")) {
			
			String q_Img1_Rename = saveFile(file1, request,"f1");
			
			if(q_Img1_Rename != null) {
				q.setQ_Img1(file1.getOriginalFilename());
				q.setQ_Img1_ReName(q_Img1_Rename);
			}
		}
		
		if(!file2.getOriginalFilename().equals("")) {
			
			String q_Img2_Rename = saveFile(file2, request,"f2");
			
			if(q_Img2_Rename != null) {
				q.setQ_Img2(file2.getOriginalFilename());
				q.setQ_Img2_ReName(q_Img2_Rename);
			}
		}
		System.out.println("qna 인설트 : " + q);
		
		int result = qService.insertQnA(q);
		
		if(result > 0) {
			return "redirect:QnAlist.mn";
		}else {
			return "common/errorPage";
		}
	}
	
	/**
	 * 파일 업로드
	 * @param file
	 * @param request
	 * @return
	 */
	private String saveFile(MultipartFile file, HttpServletRequest request,String pre) {

		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + "\\QnA-Img";

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdir();
		}

		String q_Img1 = file.getOriginalFilename();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String ReName = pre+sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
				+ q_Img1.substring(q_Img1.lastIndexOf(".") + 1);

		System.out.println("q_Img1_ReName : " + ReName);

		String renamePath = folder + "\\" + ReName;

		try {
			file.transferTo(new File(renamePath)); // 이때 전달받은 file이 rename명으로 저장이된다.
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}

		return ReName;
	}
	
	@RequestMapping("qDetail.mn")
	public ModelAndView qnaDetail(ModelAndView mv, int q_No,
			@RequestParam(value="currentPage", required = false, defaultValue="1") int currentPage) {
		
		QnA q = qService.selectQnA(q_No);
		
		if(q != null) {
			mv.addObject("q", q).addObject("currentPage", currentPage).setViewName("Board-QnA-Detail");
		}else {
			mv.addObject("msg", "질문 상세보기 실패").setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	/**
	 * 게시판 수정
	 * @param mv
	 * @param n_No
	 * @return
	 */
	@RequestMapping("qUpdateView.mn")
	public ModelAndView boardUpdateView(ModelAndView mv, int q_No) {
		mv.addObject("q", qService.selectUpdateQnA(q_No)).setViewName("Board-QnA-Update");

		return mv;
	}
	
	@RequestMapping("qUpdate.mn")
	public ModelAndView qnaUpdate(ModelAndView mv, @ModelAttribute QnA q, HttpServletRequest request,
			@RequestParam(value = "reloadFile1", required = false) MultipartFile file1,
			@RequestParam(value = "reloadFile2", required = false) MultipartFile file2) {
		
		System.out.println("업뎃 q : " + q);
		
		if(file1 != null && file1.isEmpty() || file2 != null && file2.isEmpty()) {
			if(q.getQ_Img1_ReName() != null  ) {
				deleteFile(q.getQ_Img1_ReName(), request);
			}
			if(q.getQ_Img2_ReName() != null) {
				deleteFile(q.getQ_Img2_ReName(), request);
			}
		}
		String renameFileName1 = "";
		String renameFileName2 = "";
		
		if(file1 != null) {
			renameFileName1 = saveFile(file1, request,"f1");
			System.out.println("업뎃 renameFileName1 : " + renameFileName1);
		}
		
		if(file2 != null) {
			renameFileName2 = saveFile(file2, request,"f2");
			System.out.println("업뎃 renameFileName2 : " + renameFileName2);
		}
		
		if (renameFileName1 != null) {
			q.setQ_Img1(file1.getOriginalFilename());
			q.setQ_Img1_ReName(renameFileName1);
		}
		
		if (renameFileName2 != null) {
			q.setQ_Img2(file2.getOriginalFilename());
			q.setQ_Img2_ReName(renameFileName2);
		}

		int result = qService.updateQnA(q);
		System.out.println("업뎃 result : " + result);

		if (result > 0) {
			mv.addObject("q_No", q.getQ_No()).setViewName("redirect:qDetail.mn");
		} else {
			mv.addObject("msg", "수정실패");
		}

		return mv;
		
	}
	
	/**
	 * 댓글 등록
	 * ㅅㅈㄷ
	 * @param r
	 * @return
	 */
	@RequestMapping("addReply.mn")
	@ResponseBody
	public String addReply(QnA_Reply qr) {
		
		System.out.println("댓글 qr : " + qr);
		System.out.println("컨트롤러 댓글 : " + qr.getQr_Qno());
		
		int result = qService.insertReply(qr);
		
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	@RequestMapping("rList.mn") //ajax에서 호출
	public void getReplyList(HttpServletResponse response, int bId) throws JsonIOException, IOException {
		
		ArrayList<QnA_Reply> rList = qService.selectReplyList(bId);
		
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(rList,response.getWriter());
	}
	
	public void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\buploadFiles";

		File f = new File(savePath + "\\" + fileName);

		if (f.exists()) {
			f.delete();
		}
	}
	
	@RequestMapping("qDelete.mn")
	public String qnaDelete(Model model, int q_No, HttpServletRequest request) {
		QnA q = qService.selectUpdateQnA(q_No);
		
		if(q.getQ_Img1_ReName() != null) {
			deleteFile(q.getQ_Img1_ReName(), request);
		}
		
		int result = qService.deleteQnA(q_No);
		
		if(result > 0) {
			return "redirect:QnAlist.mn";
		}else {
			model.addAttribute("msg","삭제 시 실패");
			return "common/errorPage";
		}
	}
	
	@RequestMapping("qSearch.mn")
	public ModelAndView searchBoard(ModelAndView mv,
									@RequestParam(value = "search", required = false) String search,
									@RequestParam(value = "condition", required = false) String condition,
									@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage
									) {
		
		System.out.println("qSearch.mn" + search);
		System.out.println("qSearch.mn" + condition);
		
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
		
		int listCount = qService.getSearchResultListCount(sc);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		// 검색결과에 해당되는 게시물 목록 조회
		ArrayList<QnA> list = qService.selectSearchResultList(sc, pi);
		
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		
		mv.addObject("sc", sc);
		mv.addObject("contdition", condition);
		mv.addObject("search", search);
		
		mv.setViewName("Board-QnA-List");
		
		return mv;
	}
	
}
