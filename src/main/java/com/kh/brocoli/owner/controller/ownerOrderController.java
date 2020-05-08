package com.kh.brocoli.owner.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.owner.model.service.ownerOrderService;
import com.kh.brocoli.product.model.vo.Statistics;

@SessionAttributes("loginUser")
@Controller
public class ownerOrderController {

	
	@Autowired  ownerOrderService oService;
	
	
	@RequestMapping("incomeDaySelect.ow")
	public ModelAndView incomeDaySelect(ModelAndView mv, int Brand_NO) {
		
		ArrayList<Statistics> olist = oService.incomeDaySelect(Brand_NO);

		if(olist != null) {
			mv.addObject("olist",olist);
			mv.setViewName("income-day");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	@RequestMapping("incomeMonthSelect.ow")
	public ModelAndView incomeMonthSelect(ModelAndView mv, int Brand_NO) {
		
		ArrayList<Statistics> olist = oService.incomeMonthSelect(Brand_NO);

		if(olist != null) {
			mv.addObject("olist",olist);
			mv.setViewName("income-month");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	@RequestMapping("incomeYearSelect.ow")
	public ModelAndView incomeYearSelect(ModelAndView mv, int Brand_NO) {
		
		ArrayList<Statistics> olist = oService.incomeYearSelect(Brand_NO);

		if(olist != null) {
			mv.addObject("olist",olist);
			mv.setViewName("income-year");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}

	@RequestMapping("order_progress.ow")
	public ModelAndView order_progress(ModelAndView mv, int Brand_NO) {
		ArrayList<Orders> list = oService.orderProgress(Brand_NO);
		
		if(list != null) {
			mv.addObject("list",list);
			mv.setViewName("order-progress");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	@RequestMapping("order_complete.ow")
	public ModelAndView order_complete(ModelAndView mv, int Brand_NO) {
		
		ArrayList<Orders> list = oService.orderComplete(Brand_NO);
		
		if(list != null) {
			mv.addObject("list",list);
			mv.setViewName("order-complete");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	@RequestMapping("order_reject.ow")
	public ModelAndView order_reject(ModelAndView mv, int bNO) {
		ArrayList<Orders> list = oService.orderReJect(bNO);
		System.out.println("BNO:" + bNO);
		if(list != null) {
			mv.addObject("list",list);
			mv.setViewName("order-return");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	@RequestMapping("order_change.ow")
	public ModelAndView order_change(ModelAndView mv, int bNO) {
		ArrayList<Orders> list = oService.orderChange(bNO);
		
		
		System.out.println("BNO:" + bNO);
		
		for (Orders orders : list) {
			System.out.println("orders : " + orders);
		}
		
		if(list != null) {
			mv.addObject("list",list);
			mv.setViewName("order-exchange");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	@RequestMapping("order_detail.ow")
	public ModelAndView order_detail(ModelAndView mv , int oNO) {
		Orders od = oService.orderDetail(oNO);
		
		if(od != null) {
			mv.addObject("o",od);
			mv.setViewName("order-detail");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	
}
