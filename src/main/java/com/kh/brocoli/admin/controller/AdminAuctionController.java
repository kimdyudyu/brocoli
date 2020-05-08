package com.kh.brocoli.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.model.service.AdminAuctionService;
import com.kh.brocoli.general.model.vo.Auction;

@Controller
@SessionAttributes("loginUser")
public class AdminAuctionController {

	 @Autowired
	 private AdminAuctionService AAService;
	 
	 /**
	  *  작성자 : 신은지
	  *  1. 경매 list
	 * @param mv
	 * @return
	 */
	@RequestMapping("advertisement-auction.ad")
	 public ModelAndView auctionList(ModelAndView mv) {
			
			ArrayList<Auction> auctionList = AAService.auctionList();
			System.out.println("auctionList"+auctionList);
			mv.addObject(auctionList);
			mv.setViewName("advertisement-auction");
			
			return mv;
	}
	
	/**
	 * 작성자 : 신은지
	 * 2. 경매 낙찰시 ajax
	 * @param ac_CommentText
	 * @param ac_No
	 * @return
	 */
	@RequestMapping("auctionWin.ad")
	@ResponseBody
	public String auctionWin(@RequestParam(value="ac_CommentText",required=false)String ac_CommentText,
							 @RequestParam(value="ac_No",required=false)String ac_No) {
		
		HashMap<String,String> hmap = new HashMap<>();
		
		hmap.put("ac_CommentText",ac_CommentText);
		hmap.put("ac_No",ac_No);
		
		int result = AAService.auctionWin(hmap);
		System.out.println(result+"result");
		if(result>0) {
			return "Sucess";
		}else {
			return "Fail";
		}
	}
	  
	/**
	 * 작성자 : 신은지
	 * 3. 경매 폐찰시 ajax
	 * @param ac_CommentText
	 * @param ac_No
	 * @return
	 */
	@RequestMapping("auctionFail.ad")
	@ResponseBody
	public String auctionFail(@RequestParam(value="ac_CommentText",required=false)String ac_CommentText,
							 @RequestParam(value="ac_No",required=false)String ac_No) {
		
		HashMap<String,String> hmap = new HashMap<>();
		
		hmap.put("ac_CommentText",ac_CommentText);
		hmap.put("ac_No",ac_No);
		
		int result = AAService.auctionFail(hmap);
		System.out.println(result+"result");
		if(result>0) {
			return "Sucess";
		}else {
			return "Fail";
		}
	}
}
