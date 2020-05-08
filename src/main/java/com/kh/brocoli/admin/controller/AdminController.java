package com.kh.brocoli.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.model.service.AdminBrandService;
import com.kh.brocoli.admin.model.service.AdminService;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;

@SessionAttributes("loginUser")
@Controller
public class AdminController {
	
	@Autowired
	private AdminService AService;
	   
	
	/**
	 * 작성자 : 신은지
	 * 1. ADMIN 홈  회원수
	 * @return
	 */
	@RequestMapping("admin.ad")
	public ModelAndView member(ModelAndView mv) {
		
		int memberCount = AService.memberCount();		
		int brandCount = AService.brandCount();
		int orderCount = AService.orderCount();
		String sales = AService.sales();
		
		ArrayList<Brand> BrandList = AService.BrandList();
		
		int memberWCount = AService.memberWCount();
		int memberMCount = AService.memberMCount();
		
		mv.addObject("memberCount",memberCount);
		mv.addObject("brandCount",brandCount);
		mv.addObject("orderCount",orderCount);
		mv.addObject("sales",sales);
		mv.addObject("BrandList",BrandList);
		mv.addObject("memberWCount",memberWCount);
		mv.addObject("memberMCount",memberMCount);
		mv.setViewName("admin");
		return mv;
	}
	
	
	
}
