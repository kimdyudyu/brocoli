package com.kh.brocoli.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.brocoli.magazine.model.vo.Magazine2;
import com.kh.brocoli.member.model.service.UserService;
import com.kh.brocoli.member.model.vo.Email;
import com.kh.brocoli.member.model.vo.EmailSender;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.member.model.vo.OrderAdd;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.member.model.vo.trackOrders;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Entering_Question;
import com.kh.brocoli.product.model.vo.Product;

@SessionAttributes("loginUser")
@Controller
public class UserController {

	@Autowired
	private UserService uService;

	@Autowired
	private EmailSender emailSender;
	@Autowired
	private Email email;

	@Autowired
	private JavaMailSender mailSender;

	// 암호화 처리
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	/************************ 로그인 창 이동 ***************************/
	/**
	 * 로그인 페이지 뷰
	 * 
	 * @return
	 */
	@RequestMapping(value = "loginPage.mn")
	public String loginPage() {
		return "Login";
	}

	/**
	 * 로그아웃
	 * 
	 * @param status
	 * @return
	 */
	@RequestMapping(value = "logoutPage")
	public String logoutPage(SessionStatus status) {

		status.setComplete();

		return "redirect:index.jsp";
	}

	/**
	 * 작성자 : 임현섭 작성일 200408 아이디 찾기 페이지 이동
	 * 
	 * @return
	 */
	@RequestMapping("findId.mn")
	public String findId() {
		return "Login-IdFind";
	}

	@RequestMapping("findPwd")
	public String findPwd() {
		return "Login-PwdFind";
	}

	/************************ 로그인 창 이동 ***************************/

	/************************ footer 페이지 이동 *******************************/
	/**
	 * 작성자: 임현섭 작성일 : 20-04-02 회사소개 페이지 이동
	 * 
	 * @return
	 */
	@RequestMapping("mIntroduceView.mn")
	public String mIntroduceView() {
		return "Main-Introduce";
	}

	/**
	 * 개인정보보호정책 페이지 이동
	 * 
	 * @return
	 */
	@RequestMapping("pPolicyView.mn")
	public String pPolicyView() {
		return "Privacy-Policy";
	}

	/**
	 * Contact 페이지 이동
	 * 
	 * @return
	 */
	@RequestMapping("mContactView.mn")
	public String mContactView() {
		return "Main-Contact";
	}

	/**
	 * 배송조회 페이지 이동
	 * 
	 * @return
	 */
	@RequestMapping("mTrackListView.mn")
	public ModelAndView mTrackListView(ModelAndView mv,HttpSession session) {
		Member m = (Member)session.getAttribute("loginUser");
		String[] arr = m.getAddress().split(",");
		int mno = m.getmNO();
		ArrayList<OrderAdd> oa = uService.cartCheck(mno);
		
		
		mv.addObject("post",arr[0].toString())
		.addObject("add1", arr[1].toString())
		.addObject("add2",arr[2].toString())
		.addObject("cList",oa);
		System.out.println("LLL"+oa);
		mv.setViewName("My-Track-List");
		return mv;
	}

	/**
	 * 교환 환불 페이지 이동
	 * 
	 * @return
	 */
	@RequestMapping("pChangeView.mn")
	public String pChangeView() {
		return "My-Product-Change";
	}

	/**
	 * 문의하기 페이지 이동
	 * 
	 * @return
	 */
	@RequestMapping("QnAView.mn")
	public String QnAView() {
		return "Board-QnA-List";
	}

	/**
	 * 자주묻는질문 페이지 이동
	 * 
	 * @return
	 */
	@RequestMapping("FAQView.mn")
	public String FAQView() {
		return "Board-FAQ-List";
	}

	/**
	 * 입점문의 페이지 이동
	 * 
	 * @return
	 */
	@RequestMapping("eStoreView.mn")
	public String eStoreView() {
		return "Main-EnterStore";
	}

	/***************************** 로그인 ***************************************/

	@RequestMapping("idEmail.mn")
	public String idEmail() {
		return "Login-IdEmail";
	}

	/**
	 * 회원가입 페이지로 이동
	 * 
	 * @return
	 */
	@RequestMapping("joinView.mn")
	public String JoinView() {
		return "Login-Join";
	}

	/**
	 * 작성자 : 임현섭 작성일 : 20-04-03 Id 중복체크
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping("idCheck.do")
	public String idCheck(String id) throws IOException {

		int result = uService.idCheck(id);

		if (result > 0) {
			return "fail";
		} else {
			return "ok";
		}
	}

	/**
	 * 작성자 : 임현섭 회원가입창 Email 중복조회
	 * 
	 * @param email
	 * @return
	 * @throws IOException
	 */
	@ResponseBody
	@RequestMapping("mailCheck.do")
	public String mailCheck(String email) throws IOException {

		int result = uService.mailCheck(email);

		if (result > 0) {
			return "fail";
		} else {
			return "ok";
		}
	}

	/**
	 * 작성자: 임현섭 ID찾기
	 * 
	 * @param email
	 * @return
	 * @throws IOException
	 */
	@ResponseBody
	@RequestMapping("loginIdCheck.do")
	public String mailCheck2(String email) throws IOException {

		String result = uService.mailCheck2(email);
		System.out.println(result);

		StringBuffer sb = new StringBuffer(result);

		String mId = sb.replace(result.length() - 4, result.length() - 2, "**").toString();

		if (result == null) {
			return "fail";
		} else {
			return mId;
		}
	}

	/**
	 * 작성자 : 임현섭 회원가입
	 * 
	 * @param m
	 * @param model
	 * @param post
	 * @param address1
	 * @param address2
	 * @return
	 */
	@RequestMapping("join.mn")
	public String insertMember(Member m, Model model, @RequestParam("post") String post,
			@RequestParam("address1") String address1, @RequestParam("address2") String address2) {
		// 회원 가입 전 회원정보를 출력
		System.out.println(m);
		System.out.println(post + ", " + address1 + ", " + address2);

		String encPwd = bcryptPasswordEncoder.encode(m.getPwd());

		m.setPwd(encPwd);

		// 주소데이터들 ","를 구분자로 저장
		if (!post.contentEquals("")) {
			m.setAddress(post + "," + address1 + "," + address2);
		}
		System.out.println(m.getAddress());
		int result = uService.insertMember(m);

		if (result > 0) {
			return "redirect:index.jsp";
		} else {
			model.addAttribute("msg", "회원가입실패!!");
			return "common/errorPage";
		}

	}

	// 암호화 처리 후 로그인 부분
	@ResponseBody
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String memberLogin(Member m, HttpSession session) {

		Member loginUser = uService.loginMember(m);

		if (loginUser != null && bcryptPasswordEncoder.matches(m.getPwd(), loginUser.getPwd())) {
//			model.addAttribute("loginUser", loginUser);
			session.setAttribute("loginUser", loginUser);

			return "ok";
		} else {

			return "fail";
		}
	}

	/**
	 * 작성자 임현섭 비밀번호 새로 설정 후 메일 발송
	 * 
	 * @param mId
	 * @param email
	 * @param session
	 * @return
	 * @throws Exception
	 */
	/**********************************
	 * 메일발송
	 *********************************************/
	@ResponseBody
	@RequestMapping("pwdFind.do")
	public String pwdFind(String mId, String email, HttpSession session) throws Exception {
		Member m = new Member();
		m.setmId(mId);
		m.setEmail(email);
		System.out.println("m:::" + m);
		int result = uService.pwdFind(m);
		System.out.println("result :::" + result);

		String newPwd = newPasswordCreate(m);
		m.setPwd(newPwd);
		System.out.println("newPwd ::::" + newPwd);
		if (result > 0) {
			findPasswordOK(m);
			String encPwd = bcryptPasswordEncoder.encode(newPwd);
			m.setPwd(encPwd);
			uService.newPassword(m);

			return "ok";

		} else {

			return "fail";
		}

	}

//		@RequestMapping("pwdFind.mn")

	/**
	 * 비밀번호 생성기
	 * 
	 * @param m
	 * @return
	 */
	public String newPasswordCreate(Member m) {

		// 인증 번호 생성기
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
			int rIndex = rnd.nextInt(3);
			switch (rIndex) {
			case 0:
				// a-z
				temp.append((char) ((int) (rnd.nextInt(26)) + 97));
				break;
			case 1:
				// A-Z
				temp.append((char) ((int) (rnd.nextInt(26)) + 65));
				break;
			case 2:
				// 0-9
				temp.append((rnd.nextInt(10)));
				break;
			}
		}
		String AuthenticationKey = temp.toString();
		System.out.println("인증번호 값 " + AuthenticationKey);

//			String npassword = "bapsi" + Integer.toString(num);// 새로운 비밀번호 변경

//			String encPwd = AuthenticationKey;

		// m.setPwd(encPwd);

//			m.setPwd(npassword);

//			int result = uService.newPassword(m);
//			if(result > 0 ) {
//			
//			}else {
//				
//			}

		return AuthenticationKey;

	}

	// 이메일로 비밀번호가 전송이된다.

//		@RequestMapping("findPassword.mn")

	public void findPasswordOK(Member m) throws Exception {

//			m = (Member) session.getAttribute("m");
//			String str = (String)session.getAttribute("pass");
		email.setContent(
				"안녕하세요 BROCOLI입니다. \n 임시 비밀번호는 " + m.getPwd() + " 입니다.  \n 혹시라도 비밀번호 변경 요청을 하신적이 없다면, " + "즉시 비밀번호 변경을 권장드립니다. \n 감사합니다.");

		email.setReceiver(m.getEmail());

		email.setSubject("안녕하세요" + m.getEmail() + "님  재설정된 비밀번호를 확인해주세요.");

		emailSender.SendEmail(email);

		System.out.println("email::::" + email);

//				session.invalidate();

	}

	/********************************* 메일발송 끝 **********************************/

	/**
	 * 작성자 임현섭 입점문의
	 * 
	 * @param b
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("sEnter.mn")
	public String sEnter(Entering_Question b, Model model) throws Exception {
		System.out.println(b);
		b.setEnt_Comment(b.getEnt_Comment());
		int result = uService.sEnter(b);
		System.out.println("2" + b);
		if (result > 0) {
			return "redirect:index.jsp";
		} else {
			model.addAttribute("msg", "입점문의실패!!");
			return "common/errorPage";
		}
	}

	@ResponseBody
	@RequestMapping("bNameCheck.do")
	public String bNameCheck( String name) {
		System.out.println("name "+name);
		int result = uService.bNameCheck(name);

		if (result > 0) {
			return "fail";
		} else {
			return "ok";
		}
	}

	@ResponseBody
	@RequestMapping("sendEmail.do")
	public String sendEmail(String email, HttpSession session) throws Exception {
		Member m = new Member();
		m.setEmail(email);

		int result = uService.mailCheck(email);

		String newPwd = newPasswordCreate(m);
		session.setAttribute("keys", newPwd);
		m.setPwd(newPwd);
		System.out.println("newPwd ::::" + newPwd);
		if (result > 0) {

			return "fail";

		} else {
			sendMail(m);
			return "ok";
		}

	}

	public void sendMail(Member m) throws Exception {

		email.setContent(m.getEmail() + "님  인증번호를 확인해주세요. \n" + "인증번호는 " + m.getPwd() + " 입니다. \n 감사합니다.");

		email.setReceiver(m.getEmail());

		email.setSubject("안녕하세요 BROCOLI입니다.");

		emailSender.SendEmail(email);

		System.out.println("email::::" + email);

	}

	@RequestMapping("logingo.mn")
	public ModelAndView logingo(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String keys = (String) session.getAttribute("keys");

		mav.setViewName("Login-IdEmail");
		mav.addObject("keys", keys);
		session.invalidate();
		return mav;
	}

	/**
	 * 메거진 페이지로 이동
	 * 
	 * @return
	 */
	@RequestMapping("magazineView.mn")
	public ModelAndView MagazineView(ModelAndView mv) {
//		int listCount = uService.getListCount3();
		
		
		int m1 = uService.selectM1();
		int m2 = uService.selectM2();
		int m3 = uService.selectM3();
		int m4 = uService.selectM4();
		int m5 = uService.selectM5();
		int m6 = uService.selectM6();
		int m7 = uService.selectM7();
		int m8 = uService.selectM8();
		int m9 = uService.selectM9();
		int m10 = uService.selectM10();
		int m11 = uService.selectM11();
		int m12 = uService.selectM12();
		
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("m4",m4);
		mv.addObject("m5",m5);
		mv.addObject("m6",m6);
		mv.addObject("m7",m7);
		mv.addObject("m8",m8);
		mv.addObject("m9",m9);
		mv.addObject("m10",m10);
		mv.addObject("m11",m11);
		mv.addObject("m12",m12);
		ArrayList<Magazine2> mList = new ArrayList<Magazine2>(); 
		ArrayList<Magazine2> mmList = new ArrayList<Magazine2>(); 
		mList = uService.selectmList();
		mmList.add(mList.get(0));
		mmList.add(mList.get(1));
		mmList.add(mList.get(2));
		
		
		
		mv.addObject("mList", mmList);
		mv.setViewName("Main-Magazine");
		return mv;
	}

	@RequestMapping("mDetail.mn")
	public ModelAndView magazineDetail(ModelAndView mv, int m_NO) {
		Magazine2 m = uService.selectMagazine(m_NO);
		int mno = m.getM_Brand_NO();
		ArrayList<Product> pList = uService.selectpList(mno);
		System.out.println(pList);
		
		int m1 = uService.selectM1();
		int m2 = uService.selectM2();
		int m3 = uService.selectM3();
		int m4 = uService.selectM4();
		int m5 = uService.selectM5();
		int m6 = uService.selectM6();
		int m7 = uService.selectM7();
		int m8 = uService.selectM8();
		int m9 = uService.selectM9();
		int m10 = uService.selectM10();
		int m11 = uService.selectM11();
		int m12 = uService.selectM12();
		
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("m4",m4);
		mv.addObject("m5",m5);
		mv.addObject("m6",m6);
		mv.addObject("m7",m7);
		mv.addObject("m8",m8);
		mv.addObject("m9",m9);
		mv.addObject("m10",m10);
		mv.addObject("m11",m11);
		mv.addObject("m12",m12);
//		m.setM_Comment(m.getM_Comment().replace("\r\n","<br>"));

		mv.addObject("m", m).setViewName("Main-Magazine-Detail");
		mv.addObject("pList",pList);
		return mv;
	}

	
	@RequestMapping("magazineMonthView1.mn")
	public ModelAndView magazineMonthView1(ModelAndView mv) {
		ArrayList<Magazine2> mList = uService.selectm1List();
		int m1 = uService.selectM1();
		int m2 = uService.selectM2();
		int m3 = uService.selectM3();
		int m4 = uService.selectM4();
		int m5 = uService.selectM5();
		int m6 = uService.selectM6();
		int m7 = uService.selectM7();
		int m8 = uService.selectM8();
		int m9 = uService.selectM9();
		int m10 = uService.selectM10();
		int m11 = uService.selectM11();
		int m12 = uService.selectM12();
		
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("m4",m4);
		mv.addObject("m5",m5);
		mv.addObject("m6",m6);
		mv.addObject("m7",m7);
		mv.addObject("m8",m8);
		mv.addObject("m9",m9);
		mv.addObject("m10",m10);
		mv.addObject("m11",m11);
		mv.addObject("m12",m12);
		mv.addObject("mList",mList).setViewName("Main-Magazine");
	
		return mv;
	}
	
	@RequestMapping("magazineMonthView2.mn")
	public ModelAndView magazineMonthView2(ModelAndView mv) {
		ArrayList<Magazine2> mList = uService.selectm2List();
		int m1 = uService.selectM1();
		int m2 = uService.selectM2();
		int m3 = uService.selectM3();
		int m4 = uService.selectM4();
		int m5 = uService.selectM5();
		int m6 = uService.selectM6();
		int m7 = uService.selectM7();
		int m8 = uService.selectM8();
		int m9 = uService.selectM9();
		int m10 = uService.selectM10();
		int m11 = uService.selectM11();
		int m12 = uService.selectM12();
		
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("m4",m4);
		mv.addObject("m5",m5);
		mv.addObject("m6",m6);
		mv.addObject("m7",m7);
		mv.addObject("m8",m8);
		mv.addObject("m9",m9);
		mv.addObject("m10",m10);
		mv.addObject("m11",m11);
		mv.addObject("m12",m12);
		mv.addObject("mList",mList).setViewName("Main-Magazine");
	
		return mv;
	}
	
	@RequestMapping("magazineMonthView3.mn")
	public ModelAndView magazineMonthView3(ModelAndView mv) {
		ArrayList<Magazine2> mList = uService.selectm3List();
		int m1 = uService.selectM1();
		int m2 = uService.selectM2();
		int m3 = uService.selectM3();
		int m4 = uService.selectM4();
		int m5 = uService.selectM5();
		int m6 = uService.selectM6();
		int m7 = uService.selectM7();
		int m8 = uService.selectM8();
		int m9 = uService.selectM9();
		int m10 = uService.selectM10();
		int m11 = uService.selectM11();
		int m12 = uService.selectM12();
		
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("m4",m4);
		mv.addObject("m5",m5);
		mv.addObject("m6",m6);
		mv.addObject("m7",m7);
		mv.addObject("m8",m8);
		mv.addObject("m9",m9);
		mv.addObject("m10",m10);
		mv.addObject("m11",m11);
		mv.addObject("m12",m12);
		mv.addObject("mList",mList).setViewName("Main-Magazine");
	
		return mv;
	}
	
	@RequestMapping("magazineMonthView4.mn")
	public ModelAndView magazineMonthView4(ModelAndView mv) {
		ArrayList<Magazine2> mList = uService.selectm4List();
		int m1 = uService.selectM1();
		int m2 = uService.selectM2();
		int m3 = uService.selectM3();
		int m4 = uService.selectM4();
		int m5 = uService.selectM5();
		int m6 = uService.selectM6();
		int m7 = uService.selectM7();
		int m8 = uService.selectM8();
		int m9 = uService.selectM9();
		int m10 = uService.selectM10();
		int m11 = uService.selectM11();
		int m12 = uService.selectM12();
		
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("m4",m4);
		mv.addObject("m5",m5);
		mv.addObject("m6",m6);
		mv.addObject("m7",m7);
		mv.addObject("m8",m8);
		mv.addObject("m9",m9);
		mv.addObject("m10",m10);
		mv.addObject("m11",m11);
		mv.addObject("m12",m12);
		mv.addObject("mList",mList).setViewName("Main-Magazine");
	
		return mv;
	}
	
	@RequestMapping("magazineMonthView5.mn")
	public ModelAndView magazineMonthView5(ModelAndView mv) {
		ArrayList<Magazine2> mList = uService.selectm5List();
		int m1 = uService.selectM1();
		int m2 = uService.selectM2();
		int m3 = uService.selectM3();
		int m4 = uService.selectM4();
		int m5 = uService.selectM5();
		int m6 = uService.selectM6();
		int m7 = uService.selectM7();
		int m8 = uService.selectM8();
		int m9 = uService.selectM9();
		int m10 = uService.selectM10();
		int m11 = uService.selectM11();
		int m12 = uService.selectM12();
		
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("m4",m4);
		mv.addObject("m5",m5);
		mv.addObject("m6",m6);
		mv.addObject("m7",m7);
		mv.addObject("m8",m8);
		mv.addObject("m9",m9);
		mv.addObject("m10",m10);
		mv.addObject("m11",m11);
		mv.addObject("m12",m12);
		mv.addObject("mList",mList).setViewName("Main-Magazine");
	
		return mv;
	}
	
	@RequestMapping("magazineMonthView6.mn")
	public ModelAndView magazineMonthView6(ModelAndView mv) {
		ArrayList<Magazine2> mList = uService.selectm6List();
		int m1 = uService.selectM1();
		int m2 = uService.selectM2();
		int m3 = uService.selectM3();
		int m4 = uService.selectM4();
		int m5 = uService.selectM5();
		int m6 = uService.selectM6();
		int m7 = uService.selectM7();
		int m8 = uService.selectM8();
		int m9 = uService.selectM9();
		int m10 = uService.selectM10();
		int m11 = uService.selectM11();
		int m12 = uService.selectM12();
		
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("m4",m4);
		mv.addObject("m5",m5);
		mv.addObject("m6",m6);
		mv.addObject("m7",m7);
		mv.addObject("m8",m8);
		mv.addObject("m9",m9);
		mv.addObject("m10",m10);
		mv.addObject("m11",m11);
		mv.addObject("m12",m12);
		mv.addObject("mList",mList).setViewName("Main-Magazine");
	
		return mv;
	}
	
	@RequestMapping("magazineMonthView7.mn")
	public ModelAndView magazineMonthView7(ModelAndView mv) {
		ArrayList<Magazine2> mList = uService.selectm7List();
		int m1 = uService.selectM1();
		int m2 = uService.selectM2();
		int m3 = uService.selectM3();
		int m4 = uService.selectM4();
		int m5 = uService.selectM5();
		int m6 = uService.selectM6();
		int m7 = uService.selectM7();
		int m8 = uService.selectM8();
		int m9 = uService.selectM9();
		int m10 = uService.selectM10();
		int m11 = uService.selectM11();
		int m12 = uService.selectM12();
		
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("m4",m4);
		mv.addObject("m5",m5);
		mv.addObject("m6",m6);
		mv.addObject("m7",m7);
		mv.addObject("m8",m8);
		mv.addObject("m9",m9);
		mv.addObject("m10",m10);
		mv.addObject("m11",m11);
		mv.addObject("m12",m12);
		mv.addObject("mList",mList).setViewName("Main-Magazine");
	
		return mv;
	}
	
	@RequestMapping("magazineMonthView8.mn")
	public ModelAndView magazineMonthView8(ModelAndView mv) {
		ArrayList<Magazine2> mList = uService.selectm8List();
		int m1 = uService.selectM1();
		int m2 = uService.selectM2();
		int m3 = uService.selectM3();
		int m4 = uService.selectM4();
		int m5 = uService.selectM5();
		int m6 = uService.selectM6();
		int m7 = uService.selectM7();
		int m8 = uService.selectM8();
		int m9 = uService.selectM9();
		int m10 = uService.selectM10();
		int m11 = uService.selectM11();
		int m12 = uService.selectM12();
		
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("m4",m4);
		mv.addObject("m5",m5);
		mv.addObject("m6",m6);
		mv.addObject("m7",m7);
		mv.addObject("m8",m8);
		mv.addObject("m9",m9);
		mv.addObject("m10",m10);
		mv.addObject("m11",m11);
		mv.addObject("m12",m12);
		mv.addObject("mList",mList).setViewName("Main-Magazine");
	
		return mv;
	}
	
	@RequestMapping("magazineMonthView9.mn")
	public ModelAndView magazineMonthView9(ModelAndView mv) {
		ArrayList<Magazine2> mList = uService.selectm9List();
		int m1 = uService.selectM1();
		int m2 = uService.selectM2();
		int m3 = uService.selectM3();
		int m4 = uService.selectM4();
		int m5 = uService.selectM5();
		int m6 = uService.selectM6();
		int m7 = uService.selectM7();
		int m8 = uService.selectM8();
		int m9 = uService.selectM9();
		int m10 = uService.selectM10();
		int m11 = uService.selectM11();
		int m12 = uService.selectM12();
		
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("m4",m4);
		mv.addObject("m5",m5);
		mv.addObject("m6",m6);
		mv.addObject("m7",m7);
		mv.addObject("m8",m8);
		mv.addObject("m9",m9);
		mv.addObject("m10",m10);
		mv.addObject("m11",m11);
		mv.addObject("m12",m12);
		mv.addObject("mList",mList).setViewName("Main-Magazine");
	
		return mv;
	}
	
	@RequestMapping("magazineMonthView10.mn")
	public ModelAndView magazineMonthView10(ModelAndView mv) {
		ArrayList<Magazine2> mList = uService.selectm10List();
		int m1 = uService.selectM1();
		int m2 = uService.selectM2();
		int m3 = uService.selectM3();
		int m4 = uService.selectM4();
		int m5 = uService.selectM5();
		int m6 = uService.selectM6();
		int m7 = uService.selectM7();
		int m8 = uService.selectM8();
		int m9 = uService.selectM9();
		int m10 = uService.selectM10();
		int m11 = uService.selectM11();
		int m12 = uService.selectM12();
		
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("m4",m4);
		mv.addObject("m5",m5);
		mv.addObject("m6",m6);
		mv.addObject("m7",m7);
		mv.addObject("m8",m8);
		mv.addObject("m9",m9);
		mv.addObject("m10",m10);
		mv.addObject("m11",m11);
		mv.addObject("m12",m12);
		mv.addObject("mList",mList).setViewName("Main-Magazine");
	
		return mv;
	}
	
	@RequestMapping("magazineMonthView11.mn")
	public ModelAndView magazineMonthView11(ModelAndView mv) {
		ArrayList<Magazine2> mList = uService.selectm11List();
		int m1 = uService.selectM1();
		int m2 = uService.selectM2();
		int m3 = uService.selectM3();
		int m4 = uService.selectM4();
		int m5 = uService.selectM5();
		int m6 = uService.selectM6();
		int m7 = uService.selectM7();
		int m8 = uService.selectM8();
		int m9 = uService.selectM9();
		int m10 = uService.selectM10();
		int m11 = uService.selectM11();
		int m12 = uService.selectM12();
		
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("m4",m4);
		mv.addObject("m5",m5);
		mv.addObject("m6",m6);
		mv.addObject("m7",m7);
		mv.addObject("m8",m8);
		mv.addObject("m9",m9);
		mv.addObject("m10",m10);
		mv.addObject("m11",m11);
		mv.addObject("m12",m12);
		mv.addObject("mList",mList).setViewName("Main-Magazine");
	
		return mv;
	}
	
	@RequestMapping("magazineMonthView12.mn")
	public ModelAndView magazineMonthView12(ModelAndView mv) {
		ArrayList<Magazine2> mList = uService.selectm12List();
		int m1 = uService.selectM1();
		int m2 = uService.selectM2();
		int m3 = uService.selectM3();
		int m4 = uService.selectM4();
		int m5 = uService.selectM5();
		int m6 = uService.selectM6();
		int m7 = uService.selectM7();
		int m8 = uService.selectM8();
		int m9 = uService.selectM9();
		int m10 = uService.selectM10();
		int m11 = uService.selectM11();
		int m12 = uService.selectM12();
		
		
		mv.addObject("m1",m1);
		mv.addObject("m2",m2);
		mv.addObject("m3",m3);
		mv.addObject("m4",m4);
		mv.addObject("m5",m5);
		mv.addObject("m6",m6);
		mv.addObject("m7",m7);
		mv.addObject("m8",m8);
		mv.addObject("m9",m9);
		mv.addObject("m10",m10);
		mv.addObject("m11",m11);
		mv.addObject("m12",m12);
		mv.addObject("mList",mList).setViewName("Main-Magazine");
	
		return mv;
	}
	
	/**
	 * 검색결과창으로 이동
	 * @return
	 */
	@RequestMapping("searchPage.mn")
	public ModelAndView SearchPage(ModelAndView mv,@RequestParam(value="keyword",required = false,defaultValue = "0") String keyword) {
		
		ArrayList<Brand> bList = uService.searchBrand(keyword);
		ArrayList<Product> pList = uService.searchProduct(keyword);
		int plus = pList.size() +  bList.size();
		mv.addObject("bList",bList)
		.addObject("pList",pList)
		.addObject("plus",plus);
		mv.setViewName("Main-Search");
		return mv; 
	}
	
	@RequestMapping("searchPage2.mn")
	public ModelAndView SearchPage2(ModelAndView mv,String keyword, String keyword2) {
		ArrayList<Brand> bList = uService.searchBrand2(keyword, keyword2);
		ArrayList<Product> pList = uService.searchProduct2(keyword, keyword2);
		
		System.out.println("@@"+ bList);
		System.out.println("##" + pList);
		int plus = pList.size() +  bList.size();
		mv.addObject("bList",bList)
		.addObject("pList",pList)
		.addObject("plus",plus);
		mv.setViewName("Main-Search");
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="recently.do",produces="text/plain;charset=UTF-8")
	public String recentCheck(HttpSession session,HttpServletResponse response) {
		Member m = (Member)session.getAttribute("loginUser");
		int mno = m.getmNO(); 
		ArrayList<trackOrders> order = uService.recentCheck(mno);
		/*
		 * String[] str = order.get(0).getOr_Address().split(","); if(str[0] !=null &&
		 * str[1] !=null && str[2] !=null) { model.addAttribute("post",str[0]);
		 * model.addAttribute("add1",str[1]); model.addAttribute("add2",str[2]); }
		 * if(str[2] == null) { model.addAttribute("post",str[0]);
		 * model.addAttribute("add1",str[1]); } if(str[1] == null && str[2] == null) {
		 * model.addAttribute("post",str[0]); }
		 */
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		return gson.toJson(order);
	
	}
	
	/**
	 * 배송지 선택창 물품삭제
	 * @param ct_NO
	 * @param ct_Mno
	 * @return
	 */
	@RequestMapping("oDelete.mn")
	public String cartDelete(@RequestParam(value="ct_NO") int ct_NO, int ct_Mno) {
		
		int result = uService.deleteOrder(ct_NO);
		if(result > 0) {
			return "redirect:mTrackListView.mn?ct_Mno="+ct_Mno;
		}else {
			return"common/errorPage";
		}
	}
	
	
	
	  @ResponseBody
	  @RequestMapping("payScreen")
	  public String payScreen(@RequestParam("mno") int mno,@RequestParam("total") int total, Orders order) { 
		System.out.println("mno::"+ mno);
		  System.out.println("total:::" + total);
		 System.out.println("order::" + order);
		 String total1 = Integer.toString(total) ;
		 System.out.println("total1::" + total1);
		 order.setOr_Price(total1);
		 order.setOr_Mno(mno);
		  int result = uService.updatePay(mno,total,order);
	  System.out.println("@@"+ result);
	  
	  if(result > 0) {
	  return "ok";
	  }else {
		  return "fail";
	  }
	  }
	 
	 
}