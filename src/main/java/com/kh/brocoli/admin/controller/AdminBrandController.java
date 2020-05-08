package com.kh.brocoli.admin.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.model.service.AdminBrandService;
import com.kh.brocoli.general.model.vo.Contact;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Entering_Question;


@Controller
@SessionAttributes("loginUser")
public class AdminBrandController {

   @Autowired
   private AdminBrandService ABService;
   
	/**
	 * 작성자 : 신은지
	 * 1. 브랜드 등록 페이지 이동
	 * @return
	 */
	@RequestMapping("brand-enroll.ad")
	public String brandEnroll() {
		return "brand-enroll";
	}
   
   /**
    * 작성자 : 신은지
    * 2. 브랜드 list
    * @param mv
    * @return
    */
   @RequestMapping("brandManagement.ad")
   public ModelAndView brandManagement(ModelAndView mv) {
      
      ArrayList<Brand> BrandList = ABService.selectBrandList();
      mv.addObject("BrandList",BrandList);
      mv.setViewName("brand-management");
      
      return mv;
   }
   
	/**
	 * 작성자 : 신은지
	 * 3. 브랜드 상세보기
	 * @param mv
	 * @param brand_NO
	 * @return
	 */
   @RequestMapping("brandDetail.ad")
   public ModelAndView brandDetail(ModelAndView mv, @RequestParam("brand_NO") int brand_NO) {
	   Brand b = ABService.selectBrandDetail(brand_NO);
      
	   if(b != null) {
		   mv.addObject("b",b);
		   mv.setViewName("brand-detail");
	   }
	   
      return mv;
   }
   
   
	/**
	 * 작성자: 신은지
	 * 4. 브랜드 수정
	 * @param mv
	 * @param b
	 * @return
	 */
   @RequestMapping("brandUpdate.ad")
   public ModelAndView brandUpdate(ModelAndView mv, Brand b, String sessionName){
	   int result = ABService.brandUpdate(b);
	   if(result>0) {
		   mv.setViewName("redirect:brandManagement.ad");
	   }
	   return mv;
   }
   
   
   	/**
   	 * 작성자 : 신은지
   	 * 5. ajax 유효성 검사 브랜드이름
   	 * @param brandName
   	 * @return
   	 */
   	@RequestMapping("brandCheck.ad")
   	@ResponseBody
   	public String brandCheck(String brandName ) {
   		int result = ABService.brandNameCheck(brandName);
   		
   		if(result>0) {
   			return "fail";
   		}else {
   			return "ok";
   		}
   		
   	}
   	
   	/**
   	 * 작성자 : 신은지
   	 * 6. ajax 유효성 검사 ownerId1
   	 * @param brandName
   	 * @return
   	 */
   	@RequestMapping("ownerId1Check.ad")
   	@ResponseBody
   	public String ownerId1Check(String ownerId) {
   		int result = ABService.ownerId1Check(ownerId);
   		
   		if(result>0) {
   			return "fail";
   		}else {
   			return "ok";
   		}
   	}
   	
   	/**
   	 * 작성자 : 신은지
   	 * 7. ajax 유효성 검사 ownerId2
   	 * @param brandName
   	 * @return
   	 */
   	@RequestMapping("ownerId2Check.ad")
   	@ResponseBody
   	public String ownerId2Check(String ownerId) {
   		int result = ABService.ownerId2Check(ownerId);
   		
   		if(result>0) {
   			return "fail";
   		}else {
   			return "ok";
   		}
   	}
   	
   	/**
   	 * 작성자 : 신은지
   	 * 8. ajax 유효성 검사 ownerId3
   	 * @param brandName
   	 * @return
   	 */
   	@ResponseBody
   	@RequestMapping("ownerId3Check.ad")
   	public String ownerId3Check(String ownerId) {
   		int result = ABService.ownerId3Check(ownerId);
   		
   		if(result>0) {
   			return "fail";
   		}else {
   			return "ok";
   		}
   	}
   	
   	/**
   	 * 작성자 : 신은지
   	 * 9. 브랜드 등록 
   	 * @param b
   	 * @param request
   	 * @param file
   	 * @return
   	 */
   	
   	@RequestMapping("brandEnroll.ad")
   	public String brandEnroll( Brand b, HttpServletRequest request, 
   						      @RequestParam(name="file1",required=false) MultipartFile file, String b_Name) {
   		if(!file.getOriginalFilename().equals("")) {
   			//getOriginalFilename: 업로드한 파일의 실제이름을 구해서  ==> .equals("") 동일한지 비교
   			String renameFileName = saveFile(file,request,b_Name);
   			if(renameFileName != null) {
   				b.setB_Logo(file.getOriginalFilename());
   				b.setB_Logo_ReName(renameFileName);
   			}
   		}
   		int result = ABService.brandEnroll(b);
   		if(result>0) {
   			return "redirect:brandManagement.ad";
   		}else {
   			return null;
   		}
   	}
   
   	public String saveFile(MultipartFile file, HttpServletRequest request , String b_Name) {
   		String root = request.getSession().getServletContext().getRealPath("resources");
   		
   		String savePath = root + "\\brandLogo";
   		
   		File folder = new File(savePath);
   		
   		if(!folder.exists()) {
   			folder.mkdir(); // 폴더 없으면 생성
   		}
   		
   		String originFileName = file.getOriginalFilename();
   		
   		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
   		String renameFileName =  b_Name + "_" + sdf.format(new java.sql.Date(System.currentTimeMillis()))+"." + originFileName.substring(originFileName.lastIndexOf(".")+1);
   		
   		System.out.println("renameFileName: "+renameFileName);
   		
   		String renamePath = folder + "\\" + renameFileName;
   		
   		try {
   			file.transferTo(new File(renamePath));
   		}catch(Exception e) {
   			System.out.println("파일 전송 에러: "+e.getMessage());
   		}
   		
   		return renameFileName;
   	}
   	
   	/**
   	 * 작성자 : 신은지
   	 * 10. 오너 콘택트 목록
   	 * @param mv
   	 * @return
   	 */
   	@RequestMapping("brandOwnerContact.ad")
   	public ModelAndView brandOwnerContact(ModelAndView mv){
   		
   		ArrayList<Contact> OwnerContactList = ABService.selectOwnerContactList();
        mv.addObject("OwnerContactList",OwnerContactList);
        mv.setViewName("brand-owner-contact");
        
        return mv;
   	}
   	
   	/**
   	 * 작성자 : 신은지 
   	 * 11. 오너 콘택트 글쓰기
   	 * @return
   	 */
   	@RequestMapping("contactWrite.ad")
   	public String brandOwnerContactWrite() {
		return "brand-owner-contact-write";
	} 
   	
   	/**
   	 * 작성자 : 신은지
   	 * 12. 오너 콘택트 게시판 상세보기
   	 * @param mv
   	 * @param ocId
   	 * @return
   	 */
   	@RequestMapping("ownerContactDetail.ad")
   	public ModelAndView ownerContactDetail(ModelAndView mv, int ocId) {
   		
   		Contact c = ABService.ownerContactDetail(ocId);
   		
   		if(c!=null) {
   		mv.addObject("c",c);
   		mv.setViewName("brand-owner-contact-detail");
   		}
   		
   		return mv;
   	}
   	
   	/**
   	 * 작성자 : 신은지
   	 * 13. 오우너 콘택트 게시판 글쓰기
   	 * @param c
   	 * @param request
   	 * @param file
   	 * @return
   	 */
   	@RequestMapping("ownerContactWrite.ad")
   	public String ownerContactWrite( Contact c, HttpServletRequest request, 
			      @RequestParam(name="file1",required=false) MultipartFile file) {
		if(!file.getOriginalFilename().equals("")) {
			//getOriginalFilename: 업로드한 파일의 실제이름을 구해서  ==> .equals("") 동일한지 비교
			String renameFileName = saveFile(file,request);
			
			if(renameFileName != null) {
			c.setCon_Img(file.getOriginalFilename());
			c.setCon_Img_ReName(renameFileName);
			}
		}
		
		int result = ABService.ownerContactWrite(c);
		
		if(result>0) {
			return "redirect:brandOwnerContact.ad";
		}else {
			return null;
		}
	}
		
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\ownerContact";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdir(); // 폴더 없으면 생성
		}
		
		String originFileName = file.getOriginalFilename();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis()))+"." + originFileName.substring(originFileName.lastIndexOf(".")+1);
		
		System.out.println("renameFileName: "+renameFileName);
		
		String renamePath = folder + "\\" + renameFileName;
		
		try {
			file.transferTo(new File(renamePath));
		}catch(Exception e) {
			System.out.println("파일 전송 에러: "+e.getMessage());
		}
		return renameFileName;
	}
   	
	/**
	 * 작성자 : 신은지 
	 * 14. 오너 컨택트 게시글 수정view
	 * @param mv
	 * @param ocNO
	 * @return
	 */
	@RequestMapping("ownerContactUpdate.ad")
	public ModelAndView ownerContactUpdate(ModelAndView mv,int con_NO) {
		Contact c = ABService.ownerContactUpdate(con_NO);
		
		if( c != null) {
			mv.addObject("c",c);
			mv.setViewName("brand-owner-contact-detailModify");
		}
		return mv;
	}
	
	/**
	 * 작성자 :신은지
	 * 15. 오너 컨택트 게시판 수정 update
	 * @param mv
	 * @param c
	 * @param request
	 * @param file
	 * @return
	 */
	@RequestMapping("ownerContactUpdateSave.ad")
	public ModelAndView ownerContactUpdateSave (ModelAndView mv, Contact c,HttpServletRequest request, 
		      								@RequestParam(name="reloadFile",required=false) MultipartFile file) {
		if(file != null & !file.isEmpty()) { //새로 업로드된 파일이 있다면
			if(c.getCon_Img_ReName() != null) {
				deleteFile(c.getCon_Img_ReName(),request);
			}
			
			//첨부파일 수정시 넣어주기
			String Con_Img_ReName = saveFile(file,request);
			
			if(Con_Img_ReName != null) {
				c.setCon_Img(file.getOriginalFilename());
				c.setCon_Img_ReName(Con_Img_ReName);
			}
		}
		
		int result = ABService.ownerContactUpdateSave(c);
		
		if(result>0) {
			mv.addObject("ocId",c.getCon_NO())
			.setViewName("redirect:ownerContactDetail.ad");
		}else {
			mv.addObject("msg","수정실패");
		}
		
		return mv;
	}
	
	public void deleteFile(String fileName,HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\buploadFIles";
		
		File f = new File(savePath + "\\" + fileName);
		// webapp/resource/buploadFiles/202003261111.png
		
		if(f.exists()) {
			f.delete();
		}
	}
	
	
	/**
	 * 작성자 : 신은지
	 * 16. 브랜드 삭제
	 * @param model
	 * @param brand_NO
	 * @return
	 */
	@RequestMapping("brandDelete.ad")
	public String brandDelete(Model model,@RequestParam("brand_NO") int brand_NO) {
		int result = ABService.brandDelete(brand_NO);
		
		if(result>0) {
		return "redirect:brandManagement.ad";
		}
		else {
			model.addAttribute("msg","회원 삭제 실패");
			return "common/errorPage";
		}
	}
	
	/**
	 *  작성자 : 신은지
	 *  17. 브랜드 입점 문의 list
	 * @param mv
	 * @return
	 */
	@RequestMapping("brand-apply.ad")
	public ModelAndView brandApply(ModelAndView mv) {
		
		ArrayList<Entering_Question> brandApplyList = ABService.brandApplyList();
		
		mv.addObject("brandApplyList",brandApplyList).setViewName("brand-entering-question");
		
		return mv;
	}
}

