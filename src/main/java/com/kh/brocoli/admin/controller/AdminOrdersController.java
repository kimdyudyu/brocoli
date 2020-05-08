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

import com.kh.brocoli.admin.model.service.AdminOrdersService;
import com.kh.brocoli.member.model.vo.Change;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.member.model.vo.Reject;
import com.kh.brocoli.product.model.vo.Product_Option;

@Controller
@SessionAttributes("loginUser")
public class AdminOrdersController {

	@Autowired
	private AdminOrdersService AOService;
	
	/**
	 * 작성자 : 신은지
	 * 1. 주문현황 목록 list
	 * @param mv
	 * @return
	 */
	@RequestMapping("orderStatus.ad")
	public ModelAndView ordersStatus(ModelAndView mv) {
		
		ArrayList<Orders> ordersList = AOService.selectOrdersList();
		
		mv.addObject(ordersList);
		mv.setViewName("order-status");
		
		return mv;
	}
	
	/**
	 * 작성자 : 신은지 
	 * 2. 주문현황 상태 버튼 클릭시 상태변화
	 * @param or_No
	 * @param or_Status
	 * @return
	 */
	@RequestMapping("orderStatusChange.ad")
	@ResponseBody
	public String orderStatusChange(@RequestParam("or_NO") int or_No, 
									@RequestParam("or_Status") String or_Status) {
		Orders orders = new Orders();
		orders.setOr_NO(or_No);
		orders.setOr_Status(or_Status);
		
		int result = AOService.orderStatusChange(orders);
		
		if(result>0) {
			System.out.println("result: "+result);
			return "Sucess";
		}else {
			return "Fail";
		}	
	}
	
	/**
	 * 	작성자 : 신은지
	 *  3. 교환, 환불 list 
	 * @param mv
	 * @return
	 */
	@RequestMapping("orderChangeReject.ad")
	public ModelAndView orderChangeReject(ModelAndView mv,Change change, Reject reject) {
		
		ArrayList<Change> changeList = AOService.selectChangeList(); 
		ArrayList<Reject> rejectList = AOService.selectRejectList(); 
		System.out.println("changeList11"+changeList);
		System.out.println("rejectList11"+rejectList);
		mv.addObject(changeList);
		mv.addObject(rejectList);
		mv.setViewName("order-exchange");
		
		return mv;
	}
	
	/**
	 *  작성자 : 신은지
	 *  4. 교환 modal
	 * @return
	 */
	@RequestMapping("orderChangeModal.ad")
	@ResponseBody
	public ArrayList<Product_Option> orderChangeModal(@RequestParam(value="chPNO",required=false) int chPNO,
			                       @RequestParam(value="chPname",required=false) String chPname) throws Exception {
		
		System.out.println("chPNO"+chPNO);
    	System.out.println("chPname"+chPname);
    	
    	ArrayList<Product_Option> po = AOService.orderChangeModal(chPNO);
    	
    	System.out.println("PO"+po);
		return po;
	}
	
	/**
	 * 작성자 : 신은지
	 * 5. 교환 모달창 저장
	 * @param or_Option1Select
	 * @param or_Option2Select
	 * @param modalChangeSelect
	 * @return
	 */
	@RequestMapping("changeOption.ad")
	@ResponseBody
	public String changeOption(@RequestParam(value="or_Option1Select",required=false)String or_Option1Select,
							   @RequestParam(value="or_Option2Select",required=false)String or_Option2Select,
							   @RequestParam(value="modalChangeSelect",required=false)String modalChangeSelect,
							   @RequestParam(value="chNO",required=false)String chNO,
							   @RequestParam(value="chORNO", required=false)String chORNO) {
		
		HashMap<String,String> hmap = new HashMap<>();		
		hmap.put("or_Option1Select",or_Option1Select);
		hmap.put("or_Option2Select",or_Option2Select);
		hmap.put("modalChangeSelect",modalChangeSelect);
		hmap.put("chNO",chNO);
		hmap.put("chORNO",chORNO);
		
		System.out.println("hmap"+hmap);
		
		int result = AOService.changeOption(hmap);
		
		if(result>0) {
			return "Sucess";
		}else {
			return "Fail";
		}	
	}
	
	/**
	 * 작성자 : 신은지
	 * 6. 반품 
	 * @param reORNO
	 * @param re_Pname
	 * @return
	 */
	@RequestMapping("orderReject.ad")
	@ResponseBody
	public String orderReject(@RequestParam(value="reNO",required=false)String reNO,
							  @RequestParam(value="re_Op_NO",required=false)String re_Op_NO,
							  @RequestParam(value="reORNO",required=false)String reORNO) {
		
		HashMap<String,String> hmap = new HashMap<>();		
		hmap.put("reNO",reNO);
		hmap.put("re_Op_NO",re_Op_NO);
		hmap.put("reORNO",reORNO);
		
		int result = AOService.orderReject(hmap);
		
		if(result>0) {
			return "Sucess";
		}else {
			return "Fail";
		}	
	}
	
}
	