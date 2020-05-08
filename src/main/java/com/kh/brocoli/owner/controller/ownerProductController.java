package com.kh.brocoli.owner.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.owner.model.service.ownerProductService;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_File;
import com.kh.brocoli.product.model.vo.Product_Option;

@SessionAttributes("loginUser")
@Controller
public class ownerProductController {

	
		@Autowired ownerProductService oService;
		
		
	/** 작성자 : 박주완
	 *  작성일 : 2020-04-02
	 *  내용  : 상품업로드
	 * @return
	 */
	@RequestMapping("ownerPage")
	public String ownerPage() {
		return "redirect:index-owner.jsp";
	}
	
	@RequestMapping("productInsertMenu.ow")
	public String PinsertMenu() {
		return "product-insert";
	}
	
	/** 작성자 : 박주완
	 *  작성일 : 2020-04-02
	 *  내용  : 상품등록
	 * @param p
	 * @param request
	 * @param file
	 * @return
	 */
	@RequestMapping("product-insert.ow")
	public String productInsert(Product p,Product_File pf,Product_Option po, HttpServletRequest request,
							@RequestParam(name="file1",required=false) MultipartFile file1,
							@RequestParam(name="file2",required=false) MultipartFile file2,
							@RequestParam(name="file3",required=false) MultipartFile file3,
							@RequestParam(name="file4",required=false) MultipartFile file4,
							@RequestParam(name="file5",required=false) MultipartFile file5,
							@RequestParam(name="file6",required=false) MultipartFile file6,
							@RequestParam(name="file7",required=false) MultipartFile file7,
							@RequestParam(name="file8",required=false) MultipartFile file8,
							@RequestParam(name="file9",required=false) MultipartFile file9
	) {

		//파일이름 저장시 앞쪽에 상품명 접두사로 추가.
		String name = p.getP_Name();
		
		int count = 0;
		int count2 = 0;
		if(!file1.getOriginalFilename().equals("")) {
			String renameImageName = saveImages(file1, request ,name ,count+1);
			if(renameImageName != null) {
				pf.setPf_Img1(file1.getOriginalFilename());//DB에 파일명 저장
				pf.setPf_Img1_ReName(renameImageName);
			}
		}
		if(!file2.getOriginalFilename().equals("")) {
			String renameImageName = saveImages(file2, request ,name ,count+2);
			if(renameImageName != null) {
				pf.setPf_Img2(file2.getOriginalFilename());//DB에 파일명 저장
				pf.setPf_Img2_ReName(renameImageName);
			}
		}
		if(!file3.getOriginalFilename().equals("")) {
			String renameImageName = saveImages(file3, request ,name ,count+3);
			if(renameImageName != null) {
				pf.setPf_Img3(file3.getOriginalFilename());//DB에 파일명 저장
				pf.setPf_Img3_ReName(renameImageName);
			}
		}
		if(!file4.getOriginalFilename().equals("")) {
			String renameImageName = saveImages(file4, request ,name ,count+4);
			if(renameImageName != null) {
				pf.setPf_Img4(file4.getOriginalFilename());//DB에 파일명 저장
				pf.setPf_Img4_ReName(renameImageName);
			}
		}
		if(!file5.getOriginalFilename().equals("")) {
			String renameImageName = saveImages(file5, request ,name ,count+5);
			if(renameImageName != null) {
				pf.setPf_Img5(file5.getOriginalFilename());//DB에 파일명 저장
				pf.setPf_Img5_ReName(renameImageName);
			}
		}
		if(!file6.getOriginalFilename().equals("")) {
			String renameImageName = saveImages(file6, request ,name ,count+6);
			if(renameImageName != null) {
				pf.setPf_Img6(file6.getOriginalFilename());//DB에 파일명 저장
				pf.setPf_Img6_ReName(renameImageName);
			}
		}
		if(!file7.getOriginalFilename().equals("")) {
			String renameImageName = saveDtailImages(file7, request ,name ,count2+1);
			if(renameImageName != null) {
				pf.setPf_Dimg1(file7.getOriginalFilename());//DB에 파일명 저장
				pf.setPf_Dimg1_ReName(renameImageName);
			}
		}
		if(!file8.getOriginalFilename().equals("")) {
			String renameImageName = saveDtailImages(file8, request ,name ,count2+2);
			if(renameImageName != null) {
				pf.setPf_Dimg2(file8.getOriginalFilename());//DB에 파일명 저장
				pf.setPf_Dimg2_ReName(renameImageName);
			}
		}
		if(!file9.getOriginalFilename().equals("")) {
			String renameImageName = saveDtailImages(file9, request ,name ,count2+3);
			if(renameImageName != null) {
				pf.setPf_Dimg3(file9.getOriginalFilename());//DB에 파일명 저장
				pf.setPf_Dimg3_ReName(renameImageName);
			}
		}
		
		
		int result = oService.productInsert(p,pf,po);
		if(result > 0) {
				return "redirect:index-owner.jsp";
		}else {
			return "404-Page";
		}
	}
	
	/** 작성자 : 박주완
	 *  작성일 : 2020-04-06
	 *  내용  : 상품 이미지 파일명 변경
	 *  */
	public String saveImages(MultipartFile file, HttpServletRequest request, String name, int count) {
		//경로지정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\product-Img";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdir();	//폴더가 없으면 새로생성시킨다
		}
		
		String originImageName = file.getOriginalFilename();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String renameImageName = name + "_" + count + "_" + sdf.format(new java.sql.Date(System.currentTimeMillis())) + "." + 
									originImageName.substring(originImageName.lastIndexOf(".")+1); 
																			
		String renamePath = folder + "\\" + renameImageName;
		
		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("상품 이미지 등록 에러 : " +  e.getMessage());
		}
		
		return renameImageName;
	}
	
	/** 작성자 : 박주완
	 *  작성일 : 2020-04-06
	 *  내용  : 상품 상세설명이미지 파일명 변경
	 *  */
	public String saveDtailImages(MultipartFile file, HttpServletRequest request, String name, int count2) {
		//경로지정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\product-Detail-Img";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdir();	//폴더가 없으면 새로생성시킨다
		}
		
		String originDimageName = file.getOriginalFilename();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String renameDimageName = name + "_Detail_" + count2 + "_" +  sdf.format(new java.sql.Date(System.currentTimeMillis())) + "." + 
									originDimageName.substring(originDimageName.lastIndexOf(".")+1); 
		
		String renamePath = folder + "\\" + renameDimageName;
		
		
		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("상품 이미지 등록 에러 : " +  e.getMessage());
		}
		
		return renameDimageName;
	}
	
	
	@RequestMapping("productList.ow")
	public ModelAndView productList(ModelAndView mv, String Brand_NO) {
		
		ArrayList<Product> list = oService.productList(Brand_NO);
		
		mv.addObject("list",list);
		mv.setViewName("product-management");
		
		return mv;
	};
	
	@RequestMapping("stock_detail.ow")
	public ModelAndView stock_detail(ModelAndView mv, int pNO, String pName) {
		ArrayList<Product_Option> list = oService.stockDetail(pNO);
		
		mv.addObject("list",list);
		mv.addObject("pName",pName);
		mv.addObject("pNO",pNO);
		mv.setViewName("stock-detail");
		
		return mv;
	};
	
	
	@RequestMapping("stock_change.ow")
	public ModelAndView stockchange(ModelAndView mv ,Product_Option po ,int pNO ,String pName ,HttpServletRequest request) {
		int result = oService.stockChange(po);
		mv.addObject("pName",pName);
		mv.addObject("pNO",pNO);
		
		if(result > 0) {
			mv.setViewName("redirect:stock_detail.ow");
			System.out.println("상품재고 변경 성공");
		}else {
			mv.setViewName("404-Page");
			System.out.println("상품재고 변경 실패");
		}
		
		return mv;
	}
	
	@RequestMapping("stockList.ow")
	public ModelAndView stockList(ModelAndView mv, Product_Option po, String Brand_NO, HttpServletRequest request) {
		ArrayList<Product_Option> list = oService.stockList(Brand_NO);
		
		if(list != null) {
			mv.addObject("list",list);
			mv.setViewName("stock-management");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	
	
	
	
	
	
}
