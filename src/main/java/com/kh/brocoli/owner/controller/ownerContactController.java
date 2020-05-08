package com.kh.brocoli.owner.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

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
import com.kh.brocoli.general.model.vo.Contact;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.owner.model.service.ownerContactService;

@Controller
@SessionAttributes("loginUser")
public class ownerContactController {

	@Autowired ownerContactService oService;
	
	@RequestMapping("contactListSelect.ow")
	@ResponseBody
	public void contactListSelect(HttpServletResponse response,Contact ct) throws JsonIOException, IOException {
		ArrayList<Contact> list = oService.contactListSelect(ct);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(list,response.getWriter());
	}
	
	@RequestMapping("contactUserSelect.ow")
	@ResponseBody
	public void contactUserSelect(HttpServletResponse response,Member m) throws JsonIOException, IOException{
		ArrayList<Member> mlist = oService.contactUserSelect(m);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(mlist,response.getWriter());
		System.out.println("======================================");
	}
	
	@RequestMapping("contactViewCheckUpdate.ow")
	@ResponseBody
	public int contactViewCheckUpdate(int con_NO) {
		int coNO = con_NO;
		int result = oService.contactViewCheckUpdate(con_NO);
		
		if(result > 0) {
			result = coNO;
			System.out.println("읽음 변경한 게시물 번호 : " + result);
		}
		return result;
	}
	
	/** 작성자 : 박주완
	 *  작성일 : 2020-04-28
	 *  내용  : 컨택트 메시지 insert
	 *  */
	@RequestMapping("contactInsert.ow")
	@ResponseBody
	public void contactInsert(Contact ct, HttpServletRequest request, HttpServletResponse response) throws JsonIOException, IOException {
		String content = ct.getCon_Content();
		
		if(content.length() < 5) {
			ct.setCon_Title(content);
		}
		if(content.length() > 5) {
			ct.setCon_Title(content.substring(0,4));
		}
		
		if(content == null) {
			ct.setCon_Content("  내용없음      ");
		}
		if(ct.getCon_Title() == null) {
			ct.setCon_Title("   제목없음    ");
		}
		System.out.println("잘라낸 타이틀명  : " + ct.getCon_Title());
		
		int result = oService.contactInsert(ct);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(result,response.getWriter());
	}
	
	/** 작성자 : 박주완
	 *  작성일 : 2020-04-28
	 *  내용  : 컨택트 메시지 insert
	 *  */
	@RequestMapping("contactInsertImg.ow")
	@ResponseBody
	public void contactInsertImg(Contact ct, HttpServletRequest request, HttpServletResponse response,
					@RequestParam(name="file",required = false) MultipartFile file) throws JsonIOException, IOException {
		String content = ct.getCon_Content();
		
		if(content.length() < 5) {
			ct.setCon_Title(content);
		}else if(content.length() < 10 && content.length() > 5) {
			ct.setCon_Title(content.substring(0,4)); 
		}
		else if(content.length() > 10) {
			ct.setCon_Title(content.substring(0,7));
		}
		System.out.println("잘라낸 타이틀명  : " + ct.getCon_Title());
		String name = ct.getBrandName();
		
		if(!file.getOriginalFilename().equals("")) {
			String renameImageName = saveImages(file, request, name);
			if(renameImageName != null) {
				ct.setCon_Img(file.getOriginalFilename());
				ct.setCon_Img_ReName(renameImageName);
			}
		}
		
		int result = oService.contactInsertImg(ct);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(result,response.getWriter());
	}
	
	/** 작성자 : 박주완
	 *  작성일 : 2020-04-26
	 *  내용  : 컨택트 이미지 파일 명 변경
	 *  */
	public String saveImages(MultipartFile file, HttpServletRequest request, String name) {
		//경로지정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\contact-Img";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdir();	//폴더가 없으면 새로생성시킨다
		}
		
		String originImageName = file.getOriginalFilename();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String renameImageName = name +"_" + sdf.format(new java.sql.Date(System.currentTimeMillis())) + "." + 
									originImageName.substring(originImageName.lastIndexOf(".")+1); 
																			
		String renamePath = folder + "\\" + renameImageName;
		
		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("옥션 이미지 등록 에러 : " +  e.getMessage());
		}
		
		return renameImageName;
	}
	
	
	
	
	
	
}
