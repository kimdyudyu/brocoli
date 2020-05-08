package com.kh.brocoli.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.model.service.AdminMagazineService;
import com.kh.brocoli.magazine.model.vo.Magazine;

@Controller
@SessionAttributes("loginUser")
public class AdminMagazineController {
	
	   @Autowired
	   private AdminMagazineService AMGService;

   /** 작성자 : 신은지
    * 	1. 매거진 신청 list
	 * @param mv
	 * @return
	 */
	@RequestMapping("magazine-management.ad")
	public ModelAndView magazineList(ModelAndView mv) {
		   
		  ArrayList<Magazine> magazineList = AMGService.magazineList();
		   
		  mv.addObject("magazineList", magazineList).setViewName("magazine-management");
		   
		  return mv;
	}
	
	/**
	 *  작성자 : 신은지
	 *   2. 매거진 상세보기
	 * @param mv
	 * @param m_NO
	 * @return
	 */
	@RequestMapping("magazineManagementDetail.ad")
	public ModelAndView magazineManagementDetail(ModelAndView mv, @RequestParam("m_NO") int m_NO) {
		
		Magazine magazine = AMGService.magazineManagementDetail(m_NO);
		
		mv.addObject("mg",magazine).setViewName("magazine-management-detail");
		
		System.out.println("magazine"+magazine);
		return mv;
	}
	
	/**
	 * 작성자 : 신은지
	 * 3. 매거진 등록(승인)
	 * @param m_NO
	 * @return
	 */
	@RequestMapping("magazineEnroll.ad")
	public String magazineEnroll(@RequestParam("m_NO") int m_NO) {
		
		int result = AMGService.magazineEnroll(m_NO);
		
		if(result>0) {
			return "redirect:magazine-management.ad";
		}else {
			return "";
		}
	}
	
	/**
	 * 작성자 : 신은지
	 * 4. 매거진 현환 list
	 * @param mv
	 * @return
	 */
	@RequestMapping("magazine-upload.ad")
	public ModelAndView magazineUpload(ModelAndView mv) {
		
		ArrayList<Magazine> magazineUploadList = AMGService.magazineUploadList();
		
		mv.addObject("mgUp",magazineUploadList).setViewName("magazine-upload");
		
		return mv;
	}
	
	
	/**
	 * 작성자 : 신은지
	 * 5. 매거진 삭제 
	 * @param m_NO
	 * @return
	 */
	@RequestMapping("magazineDelete.ad") 
	public String magazineDelete(@RequestParam("m_NO") int m_NO) {
	  
	int result = AMGService.magazineDelete(m_NO);
	  
		if(result>0) { 
			return "redirect:magazine-upload.ad"; 
		}else {
			return "";
		}
	}
}
