package com.kh.brocoli.member.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.service.MemberService;
import com.kh.brocoli.member.model.vo.Email;
import com.kh.brocoli.member.model.vo.EmailSender;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.ProductDetail;
import com.kh.brocoli.product.model.vo.QNAProduct;
import com.kh.brocoli.product.model.vo.QNAProduct_Reply;
import com.kh.brocoli.product.model.vo.QnAComment;
import com.kh.brocoli.product.model.vo.Review;
import com.kh.brocoli.product.model.vo.Review_Reply;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	/**
	 * 메인페이지 로딩
	 * @return
	 */
	@RequestMapping(value="MainPage")
	public ModelAndView MainPage(Auction ac,Product rank,ModelAndView mv) {
		
		ArrayList<Auction> alist = mService.selectList();
		
		ArrayList<Product> plist = mService.selectpList();
		
		ArrayList<Product> elist = mService.selectEList();
		
		mv.addObject("Auctionlist",alist);
		mv.addObject("RankList",plist);
		mv.addObject("EventList",elist);
		mv.setViewName("main/Main");
		return mv;
	}

	
	

	
	/*************************Header 페이지 이동 (못찾을시 Footer 참조)********************************/
	/**
	 * 공지사항 페이지 이동
	 * @return
	 */
	@RequestMapping("NoticeView.mn")
	public String NoticeView() {
		return "Board-Notice-List";
	}
	
	
	/**
	 * 랭킹 요일 페이지로 이동
	 * @return
	 */
	@RequestMapping("rankday.mn")
	public ModelAndView dayRank(Product pd, ModelAndView mv) {
		
		ArrayList<Product> daylist = mService.selectdayList();
		
		mv.addObject("dayList",daylist);
		
		mv.setViewName("Main-Rank-day");
		return mv;
	}
	
	/**
	 * 랭킹 월별 페이지로 이동
	 * @param pd
	 * @param mv
	 * @return
	 */
	@RequestMapping("rankmonth.mn")
	public ModelAndView monthRank(Product pd, ModelAndView mv) {
		
		
		ArrayList<Product> monthlist = mService.selectmonthList();
		
		mv.addObject("monthList",monthlist);
		
		mv.setViewName("Main-Rank-month");
		return mv;
	}
	
	/**
	 * 랭킹 년별 페이지로 이동
	 * @param pd
	 * @param mv
	 * @return
	 */
	@RequestMapping("rankyear.mn")
	public ModelAndView yearRank(Product pd, ModelAndView mv) {
		
		ArrayList<Product> yearlist = mService.selectyearList();
		
		mv.addObject("yearList",yearlist);
		
		mv.setViewName("Main-Rank-year");
		return mv;
	}
	/**
	 * 브랜드 이름 페이지로 이동
	 * @return
	 */
	@RequestMapping("brandView.mn")
	public ModelAndView BrandView(Brand br,ModelAndView mv) {
		
		ArrayList<Brand> blist = mService.selectbList();
		mv.addObject("BrandList",blist);
		mv.setViewName("Main-Brand");
		return mv;
	}
	
	/**
	 * 브랜드 상품 페이지로 이동
	 * 작성자 : 윤석훈
	 * @param br
	 * @param mv
	 * @return
	 */
	@RequestMapping("bproduct.mn")
	public ModelAndView BrandProductView(Brand br,ModelAndView mv,String b_Name) {
		
		ArrayList<Brand> bplist = mService.selectbpList(b_Name);
		mv.addObject("bProductList",bplist);
		mv.setViewName("Main-BrandProduct");
		return mv;
	}
	
	/**
	 * 상품 페이지로 이동
	 * @return
	 */
	@RequestMapping("productView.mn")
	public ModelAndView ProductView(Product pr,ModelAndView mv) {
		
		ArrayList<Product> aplist = mService.selectapList();
		mv.addObject("aProductList",aplist);
		mv.setViewName("Main-Product");
		return  mv;
	}
	
	
	/**
	 * 찜목록 페이지로 이동
	 * @return
	 */
	@RequestMapping("wishlistView.mn")
	public String WishlistView() {
		return "MyWishlist";
	}
	
	@RequestMapping("adminPage")
	public String loginAdmin() {
		return "redirect:index-admin.jsp";
	}
	
	/**
	 * 상품 상세화면
	 * @return
	 */
	@RequestMapping("productDetail.mn")
	public ModelAndView ProductDetail(ProductDetail pd,String p_NO,String or_Mno,ModelAndView mv) {
		HashMap<String,String> hmap = new HashMap<>();
		hmap.put("or_P_NO",p_NO);
		hmap.put("or_Mno", or_Mno);
		
		ArrayList<ProductDetail> pDetail = mService.selectpDetail(p_NO);
		ArrayList<ProductDetail> pOption = mService.selectOption1(p_NO);
		
		ArrayList<Orders> order = mService.selectorder(hmap);
		
		mv.addObject("aProducDetailtList",pDetail);
		mv.addObject("option",pOption);
		mv.addObject("order",order);
		mv.setViewName("Main-Product-Detail");
		return mv;
	}
	
	/**
	 * 상품 모달
	 * @param response
	 * @param p_NO
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("productModal")
	public void productModal(HttpServletResponse response,String p_NO) throws JsonIOException, IOException{
		
		ArrayList<ProductDetail> pDetail = mService.selectpDetail(p_NO);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(pDetail,response.getWriter());
		
	}
	
	/**
	 * 두번째 옵션 리스트
	 * @param response
	 * @param p_NO
	 * @param option_1
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("optionDetail")
	public void optionDetail(HttpServletResponse response,String p_NO,String option_1) throws JsonIOException, IOException{
		HashMap<String,String> hmap = new HashMap<>();
		hmap.put("p_NO", p_NO);
		hmap.put("option_1", option_1);
		
		
		ArrayList<ProductDetail> option = mService.selectOption(hmap);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(option,response.getWriter());
	}
	
	/**
	 * 상품 qna insert
	 * @param pq
	 * @param request
	 * @param file1
	 * @param file2
	 * @param pq_Writer
	 * @return
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("qnacomment")
	@ResponseBody
	public String qnacomment(QNAProduct pq,HttpServletRequest request,
			@RequestParam(name = "uploadFile1", required = false) MultipartFile file1 ,
			@RequestParam(name = "uploadFile2", required = false) MultipartFile file2,String pq_Writer) throws JsonIOException, IOException{
		
			pq.setPq_B_No(pq.getPq_B_No());
			pq.setPq_Content(pq.getPq_Content());
			pq.setPq_Id(pq.getPq_Id());
			pq.setPq_P_No(pq.getPq_P_No());
			pq.setPq_Writer(pq.getPq_Writer());
			pq.setPq_mNo(pq.getPq_mNo());
			
			
			
			int count=1;
			if(!file1.getOriginalFilename().equals("")) {
				
				String q_Img1_Rename = saveFile(file1, request,pq_Writer,count);
				
				if(q_Img1_Rename != null) {
					pq.setPq_Img1(file1.getOriginalFilename());
					pq.setPq_Img1_ReName(q_Img1_Rename);
				}
			}
			
			if(!file2.getOriginalFilename().equals("")) {
				
				String q_Img2_Rename = saveFile(file2, request,pq_Writer,count+1);
				
				if(q_Img2_Rename != null) {
					pq.setPq_Img2(file2.getOriginalFilename());
					pq.setPq_Img2_ReName(q_Img2_Rename);
				}
			}
			
			int result = mService.insertQnaCommant(pq);
			if(result > 0) {
				return "ok";
			}else {
				return "false";
			}
			
		
	}
	
	/**
	 * 파일 업로드
	 * @param file
	 * @param request
	 * @return
	 */
	private String saveFile(MultipartFile file, HttpServletRequest request,String pq_Writer,int count) {

		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + "\\QnA-Img";

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdir();
		}

		String q_Img1 = file.getOriginalFilename();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String ReName = pq_Writer+"_"+count+ "_" +sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
				+ q_Img1.substring(q_Img1.lastIndexOf(".") + 1);


		String renamePath = folder + "\\" + ReName;

		try {
			file.transferTo(new File(renamePath)); // 이때 전달받은 file이 rename명으로 저장이된다.
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}

		return ReName;
	}
	
	/**
	 * 상품 qna 리스트
	 * @param response
	 * @param pq_P_No
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("qnacommentlist")
	@ResponseBody
	private void qnacommentlist(HttpServletResponse response,String pq_P_No) throws JsonIOException, IOException{

		HashMap< String,ArrayList<QnAComment> > hmap = new HashMap<>();
		ArrayList<QnAComment> qna = mService.selectQnaCommant(pq_P_No);
		ArrayList<QnAComment> qna_reply = mService.selectQnaReCommant();
		
		hmap.put("list",qna);
		hmap.put("list2", qna_reply);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");


		Gson gson = new GsonBuilder().create();
		gson.toJson(hmap,response.getWriter());
		
	}
	
	/**
	 * 상품 댓글 삭제
	 * @param response
	 * @param pq_P_No
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("deleteqna")
	@ResponseBody
	private String delteqna(HttpServletResponse response,String pq_No) throws JsonIOException, IOException{

		
		int result = mService.deleteqna(pq_No);
		
		if(result > 0) {
			return "ok";
		}else {
			return "false";
		}
		
	}
	/**
	 * 상품 리뷰 인서트
	 * @param re
	 * @param request
	 * @param file1
	 * @param file2
	 * @param v_Writer
	 * @param v_Score
	 * @return
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("reviewcomment")
	@ResponseBody
	public String reviewcomment(Review re,HttpServletRequest request,
			@RequestParam(name = "uploadFile3", required = false) MultipartFile file1 ,
			@RequestParam(name = "uploadFile4", required = false) MultipartFile file2,String v_Writer,int v_Score) throws JsonIOException, IOException{
		
			re.setV_B_NO(re.getV_B_NO());
			re.setV_Content(re.getV_Content());
			re.setV_P_NO(re.getV_P_NO());
			re.setV_Writer(re.getV_Writer());
			re.setV_Mno(re.getV_Mno());
			
			System.out.println(re.getV_Score());
			
			if(re.getV_Score() != null) {
				re.setV_Score(re.getV_Score());
			}else {
				re.setV_Score("0");
			}
			System.out.println("re" + re);

			int count=1;
			
			if(!file1.getOriginalFilename().equals("")) {
				
				String q_Img1_Rename = saveFile2(file1, request,v_Writer,count);
				
				if(q_Img1_Rename != null) {
					re.setV_Img1(file1.getOriginalFilename());
					re.setV_Img1_ReName(q_Img1_Rename);
				}
			}
			
			if(!file2.getOriginalFilename().equals("")) {
				
				String q_Img2_Rename = saveFile2(file2, request,v_Writer,count+1);
				
				if(q_Img2_Rename != null) {
					re.setV_Img2(file2.getOriginalFilename());
					re.setV_Img2_ReName(q_Img2_Rename);
				}
			}
			
			int result = mService.insertreviewCommant(re);
			if(result > 0) {
				return "ok";
			}else {
				return "false";
			}
	
		
	}
	
	/**
	 * 파일 업로드
	 * @param file
	 * @param request
	 * @return
	 */
	private String saveFile2(MultipartFile file, HttpServletRequest request,String pq_Writer,int count) {

		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + "\\review-Img";

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdir();
		}

		String q_Img1 = file.getOriginalFilename();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String ReName = pq_Writer+"_"+count+ "_" +sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
				+ q_Img1.substring(q_Img1.lastIndexOf(".") + 1);


		String renamePath = folder + "\\" + ReName;

		try {
			file.transferTo(new File(renamePath)); // 이때 전달받은 file이 rename명으로 저장이된다.
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}

		return ReName;
	}
	/**
	 * 상품 리뷰 조회
	 * @param response
	 * @param v_P_NO
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("reviewcommentlist")
	@ResponseBody
	private void reviewcommentlist(HttpServletResponse response,int v_P_NO) throws JsonIOException, IOException{

		HashMap< String,Object > hmap = new HashMap<>();

		ArrayList<Review> re = mService.selectReviewCommant(v_P_NO);
		ArrayList<Review_Reply> rep = mService.selectReviewReCommant();
		ArrayList<Review> avg = mService.selectAvgReview(v_P_NO);
		
		hmap.put("list",re);
		hmap.put("list2", rep);
		hmap.put("avg",avg);
			
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");


		Gson gson = new GsonBuilder().create();
		gson.toJson(hmap,response.getWriter());
		
	}
	
	
	/**
	 * 상품 리뷰 삭제
	 * @param response
	 * @param v_NO
	 * @return
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("deletereview")
	@ResponseBody
	private String deletereview(HttpServletResponse response,String v_NO) throws JsonIOException, IOException{

		
		int result = mService.deletereview(v_NO);
		
		if(result > 0) {
			return "ok";
		}else {
			return "false";
		}
		
	}
	

}
