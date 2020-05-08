package com.kh.brocoli.owner.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.owner.model.service.ownerBasicService;
import com.kh.brocoli.owner.model.service.ownerOrderService;
import com.kh.brocoli.owner.vo.ownerAge;
import com.kh.brocoli.owner.vo.ownerCategore;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Statistics;

@SessionAttributes("loginUser")
@Controller
public class ownerBaiscController {
	
	@Autowired ownerBasicService oService;
	
	
	@RequestMapping("goToHome.ow")
	public String gotohome() {
		return "../owner";
	}
	
	@RequestMapping("Cropper.ow")
	public String Cropper() {
		return "Cropper";
	}
	
	@RequestMapping("color_picker.ow")
	public String color_picker() {
		return "color-picker";
	}
	
	@RequestMapping("alarmSetting.ow")
	public String alarmSetting() {
		return "alarm-setting";
	}
	
	@RequestMapping("brandSetting.ow")
	public String brandSetting() {
		return "brand_setting";
	}
	
	@RequestMapping("managerContact.ow")
	public String managerContact() {
		return "manager-contact";
	}
	
	@RequestMapping("manazineInsertPage.ow")
	public String manazineInsertPage() {
		return "magazine-insert";
	}
	
	@RequestMapping("ownerHaeder.ow")
	public void ownerHaeder(HttpServletResponse response,int bNO) throws JsonIOException, IOException {
		
		HashMap<String, Object> data = new HashMap<>();
		
		int countMassege = oService.selectMassegeCount(bNO);
		int countReview = oService.selectReviewCount(bNO);
		int countOrder = oService.selectOrderCount(bNO);
		int countQnA = oService.selectQnACount(bNO);
		String brandLogo = oService.selectBrandLogo(bNO);
		
		data.put("countMassege",countMassege );
		data.put("countReview",countReview );
		data.put("countOrder",countOrder );
		data.put("countQnA",countQnA );
		data.put("brandLogo",brandLogo);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(data,response.getWriter());
	}
	
	@RequestMapping("ownerHome.ow")
	public void ownerHome(HttpServletResponse response,int bNO) throws JsonIOException, IOException {
		
		Brand bInfo = oService.selectBrandInfo(bNO);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(bInfo,response.getWriter());
	}
	
	@RequestMapping("ownerResultPrice.ow")
	public void ownerResultPrice(HttpServletResponse response,int bNO) throws JsonIOException, IOException {
		HashMap<String, Object> data = new HashMap<>();
		
		int totalPrice = oService.selectTotalPrice(bNO);
		int resultPrice = oService.selectResultPrice(bNO);
		int countOrder = oService.selectCountOrder(bNO);
		int countReject = oService.selectCountReject(bNO);
		int countChange = oService.selectCountChange(bNO);
		
		data.put("totalPrice", totalPrice);
		data.put("resultPrice", resultPrice);
		data.put("countOrder", countOrder);
		data.put("countReject", countReject);
		data.put("countChange", countChange);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(data,response.getWriter());
		
		
	}
	
	@RequestMapping("ownerResultProduct.ow")
	public void ownerResultProduct(HttpServletResponse response,int bNO) throws JsonIOException, IOException {
		ArrayList<Product> data = oService.ownerResultProduct(bNO);

		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(data,response.getWriter());
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
