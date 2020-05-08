package com.kh.brocoli.owner.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.magazine.model.vo.Magazine;
import com.kh.brocoli.magazine.model.vo.Magazine_File;
import com.kh.brocoli.owner.model.service.ownerMagazineService;

@Controller
@SessionAttributes("loginUser")
public class ownerMagazineController {
	
	@Autowired ownerMagazineService oService;
	
	@RequestMapping("magazineInsert.ow")
	public String magazineInsert(Magazine m,Magazine_File mf,String bName,HttpServletRequest request,
			@RequestParam(name="file1",required=false) MultipartFile file1,
			@RequestParam(name="file2",required=false) MultipartFile file2,
			@RequestParam(name="file3",required=false) MultipartFile file3,
			@RequestParam(name="file4",required=false) MultipartFile file4,
			@RequestParam(name="file5",required=false) MultipartFile file5,
			@RequestParam(name="file6",required=false) MultipartFile file6 ){
		
			String name = bName;
			
			int count = 0;
			
			if(!file1.getOriginalFilename().equals("")) {
				String renameImageName = saveImages(file1, request ,name ,count+1);
				if(renameImageName != null) {
					mf.setMf_Img1(file1.getOriginalFilename());//DB에 파일명 저장
					mf.setMf_Img1_ReName(renameImageName);
				}
			}
				
			if(!file2.getOriginalFilename().equals("")) {
				String renameImageName = saveImages(file2, request ,name ,count+2);
				if(renameImageName != null) {
					mf.setMf_Img2(file2.getOriginalFilename());//DB에 파일명 저장
					mf.setMf_Img2_ReName(renameImageName);
				}
			}
			if(!file3.getOriginalFilename().equals("")) {
				String renameImageName = saveImages(file3, request ,name ,count+3);
				if(renameImageName != null) {
					mf.setMf_Img3(file3.getOriginalFilename());//DB에 파일명 저장
					mf.setMf_Img3_ReName(renameImageName);
				}
			}
			if(!file4.getOriginalFilename().equals("")) {
				String renameImageName = saveImages(file4, request ,name ,count+4);
				if(renameImageName != null) {
					mf.setMf_Img4(file4.getOriginalFilename());//DB에 파일명 저장
					mf.setMf_Img4_ReName(renameImageName);
				}
			}
			if(!file5.getOriginalFilename().equals("")) {
				String renameImageName = saveImages(file5, request ,name ,count+5);
				if(renameImageName != null) {
					mf.setMf_Img5(file5.getOriginalFilename());//DB에 파일명 저장
					mf.setMf_Img5_ReName(renameImageName);
				}
			}
			if(!file6.getOriginalFilename().equals("")) {
				String renameImageName = saveImages(file6, request ,name ,count+6);
				if(renameImageName != null) {
					mf.setMf_Img6(file6.getOriginalFilename());//DB에 파일명 저장
					mf.setMf_Img6_ReName(renameImageName);
				}
			}
			
			
			int result = oService.magazineInsert(m,mf);
			if(result > 0) {
				return "redirect:index-owner.jsp";
			}else {
				return "404-Page";
			}
	}
	
	/** 작성자 : 박주완
	 *  작성일 : 2020-04-28
	 *  내용  : 메거진 이미지 파일명 변경
	 *  */
	public String saveImages(MultipartFile file, HttpServletRequest request, String name, int count) {
		//경로지정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\magazine-Img";
		
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
	 *  작성일 : 2020-04-28
	 *  내용  : 메거진 등록현황 SELECT 후 페이지 이동.
	 *  */
	@RequestMapping("manazineResultPage.ow")
	public ModelAndView manazineResultPage(ModelAndView mv,int bNO) {
		
		ArrayList<Magazine> list = oService.selectResultMagazine(bNO);
		for (Magazine magazine : list) {
			String comment = magazine.getM_Comment();
			if(comment.length() > 28) {
				magazine.setM_Comment(comment.substring(0,27)+"...");
			}
		}
		
		if(list != null) {
			mv.addObject("list",list);
			mv.setViewName("magazine-result");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	@RequestMapping("manazineSelectPage.ow")
	public ModelAndView manazineSelectPage(ModelAndView mv,int bNO) {
		
		ArrayList<Magazine> list = oService.selectOldMagazine(bNO);
		for (Magazine magazine : list) {
			String comment = magazine.getM_Comment();
			if(comment.length() > 26) {
				magazine.setM_Comment(comment.substring(0,25)+"...");
			}
		}
		
		if(list != null) {
			mv.addObject("list",list);
			mv.setViewName("magazine-old");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
