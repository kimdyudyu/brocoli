package com.kh.brocoli.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.member.model.service.WishService;
import com.kh.brocoli.member.model.vo.Wish;

@Controller
public class WishController {
	
	@Autowired
	private WishService wService;
	
	@RequestMapping("wInsert.mn")
	public String wInsert(Wish w) {
		
		System.out.println("인설트 wlist : " + w.getW_Mno());
		System.out.println("인설트 wlist : " + w.getW_P_NO());
		
		w.setW_Mno(w.getW_Mno());
		w.setW_P_NO(w.getW_P_NO());
		
		int result = wService.wInsert(w);
		if(result > 0) {
			System.out.println("컨트롤 리절트 : " + result);
			return "redirect:wishList.mn?w_Mno="+w.getW_Mno();
		}else {
			return "common/errorPage";
		}
	}
	
	@RequestMapping("wishList.mn")
	   public ModelAndView wishList(ModelAndView mv,@RequestParam("w_Mno") int w_Mno) {
		  System.out.println(w_Mno);
	      ArrayList<Wish> wList = wService.wishList(w_Mno);
	      
	      System.out.println("들어갔나요 ? " + wList);

	      mv.addObject("wList", wList);
	      mv.setViewName("MyWishlist");

	      return mv;
	   }
	
	@RequestMapping("wDelete.mn")
	public String wishDelete(@RequestParam(value = "w_No") int w_No, int Mno) {
		System.out.println("삭제 버튼 눌렸나유? " + w_No);
		int result = wService.deleteWish(w_No);
		if(result > 0) {
			System.out.println("삭제 버튼 눌른 훈가유? " + w_No);
			return "redirect:wishList.mn?w_Mno="+Mno;
		}else {
			return "common/errorPage";
		}
		

	}
	

}
