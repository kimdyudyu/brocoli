package com.kh.brocoli.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.model.service.AdminSalesService;
import com.kh.brocoli.member.model.vo.Orders;

@Controller
@SessionAttributes("loginUser")
public class AdminSalesController {

	@Autowired
	private AdminSalesService ASService;

	/**
	 * 작성자 : 신은지 1. 매출검색 목록 list
	 * 
	 * @param mv
	 * @return
	 */
	@RequestMapping("sales-management.ad")
	public ModelAndView salesManagement(ModelAndView mv) {

		ArrayList<Orders> salesList = ASService.selectSalesList();

		mv.addObject("salesList", salesList);
		mv.setViewName("sales-management");

		return mv;
	}

	/**
	 * 작성자 : 신은지 2. 매출 검색(날짜,브랜드)
	 * 
	 * @param mv
	 * @return
	 */
    @RequestMapping("totalSalesSearch.ad")
    @ResponseBody
    public ArrayList<Orders> totalSalesSearch(@RequestParam(value="date1", required=false) String date1,
    											@RequestParam(value="date2", required=false) String date2,
    											@RequestParam(value="dropSearch", required=false) String dropSearch,
    											@RequestParam(value="content", required=false) String content) throws Exception{
    	System.out.println(date1);
    	System.out.println(date2);
    	System.out.println(dropSearch);
    	System.out.println(content);
    	
    	HashMap<String,String> hmap = new HashMap<>();
    	hmap.put("date1",date1);
    	hmap.put("date2",date2);
    	hmap.put("dropSearch",dropSearch);
    	hmap.put("content",content);
    	
    	ArrayList<Orders> searchList = ASService.searchList(hmap);
    	
    	System.out.println("searchList" + searchList);
    	return searchList;
    	
    }
	 	 

}
