package com.kh.brocoli.member.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.board.model.service.QnAService;
import com.kh.brocoli.board.model.vo.Notice;
import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.QnA;
import com.kh.brocoli.board.model.vo.SearchCondition;
import com.kh.brocoli.commons.Pagination;
import com.kh.brocoli.member.model.service.MypageService;
import com.kh.brocoli.member.model.service.UserService;
import com.kh.brocoli.member.model.vo.Change;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.member.model.vo.Reject;
import com.kh.brocoli.product.model.vo.Review;

@SessionAttributes("loginUser")
@Controller
public class MypageController {
		
	@Autowired
	private MypageService myService;
	
	// 암호화 처리 
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	
//**************************************마이페이지 이동경로*****************************************//	
	
		 /** 작성자 : 김주희
		 *  작성일 : 2020-04-02
		 *  내용 : 마이페이지로 이동
		 * @return
		 */
		@RequestMapping("mypage.mn")
		public String mypage() {
			return "MyPage";
		}
		
		
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-02
		 *  내용 : 마이페이지에서 개인정보수정으로 이동중 비밀번호 체크
		 * @return
		 * @param pwd
		 */
	
		@RequestMapping("p_check.mn")
		public String pwdCheckPage() {
			return "My-P-Check";
		}
		
		@RequestMapping(value="password_check.mn",method=RequestMethod.POST)
		public ModelAndView pwdCheck(@RequestParam("password") String password, ModelAndView mv,HttpSession session) {
			
			//System.out.println("result : " + result);
			
			Member m = (Member)session.getAttribute("loginUser");
			
			
			System.out.println("result : " + m);
			if(m != null && bcryptPasswordEncoder.matches(password,m.getPwd() ) ) {
				mv.setViewName("MyInformation");
			}else {
			
			mv.addObject("msg","로그인 실패!!");
			mv.setViewName("My-P-Check");
			}
			return mv;
			
		}
	
	
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-02
		 *  내용 : 마이페이지에서 개인정보수정으로 이동
		 * @return
		 */
		@RequestMapping("myInfo.mn")
		public String myinfo() {
			
			return "MyInformation";
		}
	
	
	
	
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-02
		 *  내용 : 개인정보수정
		 * @return
		 */
		@RequestMapping("mupdate.mn")
		public String memberUpdate(Member m,Model model,SessionStatus status,
				   @RequestParam("post") String post,
				   @RequestParam("address1") String addr1,
				   @RequestParam("address2") String addr2) {
			
			
	   // 주소데이터들 ','를 구분자로 저장
	   if(!post.equals("")) {
	   m.setAddress(post+","+addr1+","+addr2);
	   }
	
	   System.out.println("id :" + m.getmId());
	   int result = myService.updateMember(m);
	   System.out.println("result : " +  result);
	
	   if(result > 0) {
	   model.addAttribute("loginUser",m);
	   status.setComplete();
	   return "redirect:index.jsp";
	   }else {
	   model.addAttribute("msg","회원 정보 수정 실패!");
	   return "common/errorPage";
	  }
	}

		/** 작성자 : 김주희
		*  작성일 : 2020-04-02
		*  내용 : 정보수정 -> 비밀번호변경
		* @return
		*/
		@RequestMapping("p_change.mn")
		public String p_ChangeView() {
			return "My-P-Change";
		}

		
		/**
		* 사용자 비밀번호 변경
		* @author 김주희
		* @param model
		* @param session
		* @param pwd2
		* @return
		*/
		@RequestMapping(value="password_change.mn" ,method=RequestMethod.POST)
		public String p_Change(Model model,
				   HttpSession session,
				   @RequestParam("p_change2") String pwd2) {
		   // Session에서 사용자 정보 추출해서 새로받은 password를 갱신
		   Member m = (Member)session.getAttribute("loginUser");
		    m.setPwd(bcryptPasswordEncoder.encode(pwd2)); // 현재 pwd2는 그냥 문자열 --> 암호화를 감싸서 
		
		   System.out.println("m :" + m);
		   // password 업데이트 
		   int result = myService.updateMember(m);
		   
		   if(result > 0) {
			   model.addAttribute("loginUser",m);
			   session.invalidate();
			   return "redirect:index.jsp";
		   }else {
		   	
		   	model.addAttribute("msg","비밀번호 변경 실패");
		   	return "common/errorPage";
		   }
		    
		   
		
		}

		
		
		/** 작성자 : 김주희
		*  작성일 : 2020-04-02
		*  내용 : 회원탈퇴
		* @return
		*/
		@RequestMapping("mdelete.mn")
		public String memberDelete(String mId, Model model,HttpSession session) {
			
			    Member m = (Member)session.getAttribute("loginUser");
				//SessionStatus : 세션의 상태값을 찾아서 sestComplete를 사용해서 세션을 초기
				int result = myService.deleteMember(m);
				System.out.println("result1 : " + result);
				
				if(result > 0) {
					session.invalidate();
			    	return "redirect:index.jsp";
			    }else {
			        model.addAttribute("msg","비밀번호 변경 실패");
			    	return "common/errorPage";
			    }
		
		}
			
	
//************************************************주문상세 이동경로********************************************************//	
	
	
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-03
		 *  내용 : 주문현황에서 상세페이지
		 * @return
		 */
		@RequestMapping("trackprocess.mn")
		public ModelAndView trackprocess(ModelAndView mv, HttpSession session,
				                         @RequestParam("or_No") String or_No){
			
			Member m = (Member)session.getAttribute("loginUser");
			ArrayList<Orders> list = myService.trackprocess(or_No);
			System.out.println("list : " + list);

			mv.addObject("list", list);
			mv.setViewName("My-Track-Process");
			
			return mv;
		}
		
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-02
		 *  내용 : 배송추적
		 * @return
		 */
		@RequestMapping("mytrackDetail.mn")
		public String mytrackDetail() {
			return "My-Track-Detail";
		}
	
	
	
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-03
		 *  내용 : 주문현황에서 교환 
		 * @return
		 */
		@RequestMapping("my_p_change.mn")
		public ModelAndView P_change(ModelAndView mv, HttpSession session,
			                     	@RequestParam("or_No") String or_No) {
			Member m = (Member)session.getAttribute("loginUser");
			
			ArrayList<Orders> list = myService.P_change(or_No);
			System.out.println("list : " + list);
	
			mv.addObject("list", list);
			mv.setViewName("My-Product-Change");
			
			
			return mv;
		}
	
	
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-03
		 *  내용 : 교환 신청완료
		 */
		
		  @RequestMapping("C_complete.mn") 
		  public ModelAndView C_complete(ModelAndView mv,Change ch,HttpSession session) {
		 
			  Member m = (Member)session.getAttribute("loginUser");
			  System.out.println(ch);
			  int result = myService.C_complete(ch);	
			  System.out.println(result);
			  
			  if(result > 0) {
	           
				   mv.addObject("Change",ch);
			 
		           mv.setViewName("redirect:myOrderList.mn");
				 
			 }
		
			  return mv;
	   }
		
	
	
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-02
		 *  내용 : 교환->반품  
		 * @return
		 */
		@RequestMapping("my_p_reject.mn")
		public ModelAndView P_reject(ModelAndView mv, HttpSession session,
	             	@RequestParam("or_No") String or_No) {
			Member m = (Member)session.getAttribute("loginUser");
			
			ArrayList<Orders> list = myService.P_reject(or_No);
			System.out.println("list : " + list);
			
			mv.addObject("list", list);
			mv.setViewName("My-Product-Reject");
	
	
		    return mv;
		}
	
	
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-03
		 *  내용 : 반품 신청완료
		 */
		
		  @RequestMapping("R_complete.mn") 
		  public ModelAndView R_complete(ModelAndView mv,Reject re,HttpSession session) {
		 
			  Member m = (Member)session.getAttribute("loginUser");
			  System.out.println(re);
			  int result = myService.R_complete(re);	
			  System.out.println(result);
			  
			  if(result > 0) {
	           
				   mv.addObject("Reject",re);
			 
		           mv.setViewName("redirect:myOrderList.mn");
				 
			 }
		
			  return mv;
	   }
		
	
	
		
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-02
		 *  내용 : 마이페이지에서 주문현황으로 이동
		 * @return
		 */
		@RequestMapping("myOrderList.mn")
		public ModelAndView myorderlist(ModelAndView mv, HttpSession session){
			
			Member m = (Member)session.getAttribute("loginUser");
			ArrayList<Orders> list = myService.myorderList(m);
			System.out.println("list : " + list);
	
			mv.addObject("list", list);
			mv.setViewName("MyOrderList");
			
			return mv;
		}
		
		@RequestMapping("selectDetail.mn")
		public ModelAndView selectDetail(ModelAndView mv, HttpSession session, 
				                      @RequestParam("type") String type){
			System.out.println("type : " + type);
			Member m = (Member)session.getAttribute("loginUser");
			Orders od = new Orders();
			od.setOr_Status(type);
			od.setOr_Mno(m.getmNO());
			
			ArrayList<Orders> list = myService.selectDetail(od);
			System.out.println("olist : " + list);
			
			mv.addObject("type", type);
			mv.addObject("list",list);
			mv.setViewName("MyOrderList");
			
			return mv;
		}
		
		@RequestMapping("searchDetail.mn")
		public ModelAndView searchDetail(ModelAndView mv, HttpSession session, 
				                      @RequestParam("start") String start,
				                      @RequestParam("end") String end){
			Date one = Date.valueOf(start);
			Date two = Date.valueOf(end);
			System.out.println(one);
			System.out.println("start : " + start);
			System.out.println("end : " + end);
			Member m = (Member)session.getAttribute("loginUser");
			
			HashMap<String,Date> hmap = new HashMap<>();
			hmap.put("one", one);
			hmap.put("two", two);
			
			ArrayList<Orders> list = myService.searchDetail(hmap);
			System.out.println(list);
			mv.addObject("list",list);
			mv.setViewName("MyOrderList");
			
			return mv;
		}
		
		
		
		
		
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-02
		 *  내용 : 마이페이지에서 관심상품으로 이동
		 * @return
		 */
		@RequestMapping("myWishList.mn")
		public String mywishlist() {
			return "MyWishlist";
		}
		
		
		
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-02
		 *  내용 : 마이페이지에서 장바구니로 이동
		 * @return
		 */
		@RequestMapping("myCart.mn")
		public String myCart() {
			return "MyCart";
		}
		
		
		
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-02
		 *  내용 : 마이페이지에서 내가쓴글로 이동
		 * @return
		 */
		@RequestMapping("B_Alllist.mn")
		public ModelAndView alllist(ModelAndView mv, HttpSession session,
				@RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) {
			
	        System.out.println(currentPage);
	        
	        Member m = (Member)session.getAttribute("loginUser");
			
			int listCount = myService.getmyListCount();
			
			System.out.println("listCount : " + listCount);
			
			PageInfo pi = Pagination.getPageInfo(currentPage,listCount);
			
			ArrayList<QnA> list = myService.myselectList(pi,m);
			
			
			mv.addObject("list", list);
			mv.addObject("pi",pi);
			mv.setViewName("Board-All-List");
			
			return mv;
			
		}
		
	
		@RequestMapping("mySearch.mn")
		public ModelAndView searchBoard(ModelAndView mv, HttpSession session,
										@RequestParam(value = "search", required = false) String search,
										@RequestParam(value = "condition", required = false) String condition,
										@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {
			
			System.out.println("bnSearch.mn" + search);
			System.out.println("bnSearch.mn" + condition);
			
			SearchCondition sc = new SearchCondition();
			sc.setSearch(search);
			sc.setCondition(condition);
			
			if(condition.equals("writer")) {
				
				sc.setWriter(search);
			}else if(condition.equals("title")) {
				sc.setTitle(search);
			}else if(condition.equals("content")) {
				sc.setContent(search);
			}
			
			// 검색 결과에 해당되는 게시물 갯수 조회
			int listCount = myService.getSearchResultListCount(sc);
			
			// 페이지 정보가 담겨있는 PageInfo 받기 위해서 Pagination static 호출
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			// 검색결과에 해당되는 게시물 목록 조회
			ArrayList<QnA> list = myService.selectSearchResultList(session, sc, pi);
			
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			
			mv.addObject("sc", sc);
			mv.addObject("contdition", condition);
			mv.addObject("search", search);
			
			mv.setViewName("Board-All-List");
			
			return mv;
		}
		
		

}
