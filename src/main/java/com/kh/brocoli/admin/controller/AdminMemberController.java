package com.kh.brocoli.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.model.service.AdminMemberService;
import com.kh.brocoli.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class AdminMemberController {

	@Autowired
	private AdminMemberService AMService;
	
	/**
	 * 작성자: 신은지
	 * 1. 회원 리스트 
	 * @param mv
	 * @return
	 */
	@RequestMapping("memberManagement.ad")
	public ModelAndView memberManagement (ModelAndView mv) {
		
		ArrayList<Member> MemberList = AMService.selectMemberList(); 
		
		mv.addObject("MemberList",MemberList);
		mv.setViewName("member-management");
		
		return mv;
	}
	
	/**
	 * 작성자: 신은지
	 * 2.회원 상세보기
	 * @param mv
	 * @param mId
	 * @return
	 */
	@RequestMapping("memberDetail.ad")
	public ModelAndView memberManagementDetail (ModelAndView mv,
										  @RequestParam("mId") String mId) {
		
		Member m = AMService.selectMemberDetail(mId);
		
		if(m != null) {
			mv.addObject("m",m);	
			mv.setViewName("member-detail");
		}
		
		return mv;
	}
	
	/**
	 * 작성자 : 신은지
	 * 3.회원 정보 수정
	 * @param mv
	 * @param m
	 * @return
	 */
	@RequestMapping("memberUpdate.ad")
	public ModelAndView memberUpdate (ModelAndView mv, Member m) {
		int result = AMService.memberUpdate(m);
		System.out.println("m"+m);
		if(result>0) {
			mv.setViewName("redirect:memberManagement.ad");
		}
		return mv;	
	}
	
	/**
	 * 작성자 : 신은지
	 * 4.회원 정보 삭제
	 * @param model
	 * @param mId
	 * @return
	 */
	@RequestMapping("memberDelete.ad")
	public String memberDelete(Model model,@RequestParam("mId") String mId) {
		
		int result = AMService.memberDelete(mId);
		
		if(result>0) {
		return "redirect:memberManagement.ad";
		}
		else {
			model.addAttribute("msg","회원 삭제 실패");
			return "common/errorPage";
		}
	}
	
//	/**
//	 * 작성자: 신은지
//	 * 5.회원 상세보기
//	 * @param mv
//	 * @param mId
//	 * @return
//	 */
//	@RequestMapping("ownerDetail.ad")
//	public ModelAndView ownerManagementDetail (ModelAndView mv,
//										  @RequestParam("mId") String mId) {
//		
//		Member m = AMService.selectOwnerDetail(mId);
//		
//		if(m != null) {
//			mv.addObject("m",m);	
//			mv.setViewName("member-owner-detail");
//		}
//		
//		return mv;
//	}
//	
	
}
