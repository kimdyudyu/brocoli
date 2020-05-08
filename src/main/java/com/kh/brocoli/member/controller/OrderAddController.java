package com.kh.brocoli.member.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.member.model.service.OrderAddService;
import com.kh.brocoli.member.model.vo.Cart;
import com.kh.brocoli.member.model.vo.OrderAdd;

@Controller
public class OrderAddController {
	
	@Autowired
	private OrderAddService OaService;

	@RequestMapping(value="cOrderAddInsert.mn", method=RequestMethod.POST)
	@ResponseBody
	public String cOrderAdd(@RequestParam(value="ct_NO") ArrayList<String> ct_NO
							/*@RequestParam(value="tdArr") ArrayList<String> tdArr*/) {
		
		System.out.println(ct_NO);
		
		ArrayList<Cart> result = new ArrayList<>();  
		
		for(int i=0; i<ct_NO.size(); i++) {
			
			
			Cart ct = OaService.selectCart(Integer.parseInt(ct_NO.get(i)));
			
			result.add(ct);
		}
		
		
			int result2 = -1;
		
		for (Cart cart : result) {
			
			
			OrderAdd add = new OrderAdd();
			add.setOa_Option_1(cart.getCt_Option_1());
			add.setOa_Option_2(cart.getCt_Option_2());
			add.setOa_Amount(Integer.toString(cart.getCt_Amount()));
			add.setOa_Mno(cart.getCt_Mno());
			add.setOa_P_NO(cart.getCt_P_NO());
			
			result2 = OaService.insertCartAdd(add);
		}
		System.out.println(result2 + "22");
		
		if(result2 > 0) {
			return "ok";
		}else if(result2 == 0) {
			return "ok";
		}else {
			return "false";
		}

		
	}
	
}
