package com.kh.brocoli.owner.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.owner.model.service.ownerAuctionService;
import com.kh.brocoli.product.model.vo.QnAComment;

@Controller
@SessionAttributes("loginUser")
public class ownerAuctionController {

	@Autowired ownerAuctionService oService;
	
	@RequestMapping("banner_Tip.ow")
	public String banner_Tip() {
		return "banner-Tip";
	}
	
	@RequestMapping("banner_sale.ow")
	public String banner_sale() {
		return "banner-sale";
	}
	
	@RequestMapping("banner_result.ow")
	public String banner_result() {
		return "banner-result";
	}

	
	@RequestMapping("auctionListSelect.ow")
	@ResponseBody
	public void auctionListSelect(HttpServletResponse response,int bNO) throws JsonIOException, IOException {
		HashMap< String,ArrayList<Auction> > hMap = new HashMap<>();
		ArrayList<Auction> list = oService.auctionListSelect(bNO);
		ArrayList<Auction> beforlist = oService.auctionbeforListSelect(bNO);
		
		hMap.put("list",list);
		hMap.put("beforlist", beforlist);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(hMap,response.getWriter());
	}
	
	@RequestMapping("auctionBannerInsert.ow")
	@ResponseBody
	public void auctionBannerInsert(Auction ac,HttpServletRequest request,HttpServletResponse response,
							@RequestParam(name="file",required=false) MultipartFile file) throws JsonIOException, IOException {
		
		String name = ac.getAc_Brand();	//파일이름 저장시 앞에 브랜드명 추가.
		int count = Integer.parseInt(ac.getAc_Banner_NO());
		if(!file.getOriginalFilename().equals("")) {	//input file 에 새로운 이미지가 있을경우 
			String renameImageName = saveImages(file, request ,name ,count);
			if(renameImageName != null) {
				ac.setAc_Img(file.getOriginalFilename());//DB에 파일명 저장
				ac.setAc_Img_Rename(renameImageName);
			}
		}
		
		Auction result = oService.auctionBannerInsert(ac);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(result,response.getWriter());
	}
	
	@RequestMapping("auctionBannerUpdate.ow")
	@ResponseBody
	public void auctionBannerUpdate(Auction ac,HttpServletRequest request,HttpServletResponse response,
							@RequestParam(name="file",required=false) MultipartFile file) throws JsonIOException, IOException {
		
		String name = ac.getAc_Brand();	//파일이름 저장시 앞에 브랜드명 추가.
		int count = Integer.parseInt(ac.getAc_Banner_NO());
		ac.setAc_Price(ac.getAc_Price().replaceAll(",",""));
		
		if(file != null) {
				if(!file.getOriginalFilename().equals("")) {	//input file 에 새로운 이미지가 있을경우 
					String renameImageName = saveImages(file, request ,name ,count);
					if(renameImageName != null) {
						ac.setAc_Img(file.getOriginalFilename());//DB에 파일명 저장
						ac.setAc_Img_Rename(renameImageName);
					}
				}
		}else {
			ac.setAc_Img(ac.getAc_Img().substring(ac.getAc_Img().lastIndexOf("/")+1));
			ac.setAc_Img_Rename(ac.getAc_Img()); 
		}
		
		Auction result = oService.auctionBannerUpdate(ac);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(result,response.getWriter());
	}
	
	/** 작성자 : 박주완
	 *  작성일 : 2020-04-26
	 *  내용  : 옥션 이미지 파일명 변경
	 *  */
	public String saveImages(MultipartFile file, HttpServletRequest request, String name, int count) {
		//경로지정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\Auction-Img";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdir();	//폴더가 없으면 새로생성시킨다
		}
		
		String originImageName = file.getOriginalFilename();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String renameImageName = name + "_" + count + "_" + sdf.format(new java.sql.Date(System.currentTimeMillis())) + "." + 
									originImageName.substring(originImageName.lastIndexOf(".")+1); 
																			
		String renamePath = folder + "\\" + renameImageName;
		
		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("옥션 이미지 등록 에러 : " +  e.getMessage());
		}
		
		return renameImageName;
	}
	
	@RequestMapping("auctionDelete.ow")
	@ResponseBody
	public void auctionDelete(HttpServletResponse response,Auction ac) throws JsonIOException, IOException {
		System.out.println("제거할 옥션 넘버 : " + ac.getAc_No());
		
		Auction result = oService.auctionDelete(ac);
		
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(ac,response.getWriter());
	}
	
	
	
	
}
