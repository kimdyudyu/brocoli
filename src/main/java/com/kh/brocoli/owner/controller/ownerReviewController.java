package com.kh.brocoli.owner.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.firewall.FirewalledRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.brocoli.owner.model.service.ownerReviewService;
import com.kh.brocoli.product.model.vo.Review;
import com.kh.brocoli.product.model.vo.Review_Reply;

@Controller
@SessionAttributes("loginUser")
public class ownerReviewController {
	
	@Autowired ownerReviewService oService;
	
	@RequestMapping("noReadReview.ow")
	public ModelAndView noReadReview(ModelAndView mv,int bNO) {
		
		ArrayList<Review> list = oService.noReadReviewSelect(bNO);
		ArrayList<Review_Reply> rlist = oService.noReadReviewReplySelect(bNO);
		for (Review_Reply review_Reply : rlist) {
			String rNo = review_Reply.getVr_Parentno();
			int rNO = review_Reply.getVr_NO();
			int result = oService.ReviewCheckUpdate(rNo);
			int result2 = oService.ReplyCheckUpdate(rNO);
			if(result == 0) {
				System.out.println("리뷰 답글작성 여부 변경 실패");
			}
			if(result2 == 0) {
				System.out.println("대댓글 읽음여부 변경 실패");
			}			
		}
		
		if(list != null) {
			mv.addObject("list",list);
			mv.addObject("rlist",rlist);
			mv.setViewName("review-management");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	@RequestMapping("Reply-Insert.ow")
	public String replyInsert(Review_Reply rr, int bNO, RedirectAttributes redirect) {
		int result = oService.replyInsert(rr);
		if(result == 0) {
			System.out.println("리뷰 답글 등록 실패");
		}
		redirect.addAttribute("bNO", bNO);
		return "redirect:noReadReview.ow";
	}

	@RequestMapping("ReplyDelete.ow")
	public String replyDelete(int rrNO, int bNO, RedirectAttributes redirect) {
		int result = oService.replyDelete(rrNO);
		if(result == 0) {
			System.out.println("리뷰 답글 삭제 실패");
		}
		redirect.addAttribute("bNO", bNO);
		return "redirect:noReadReview.ow";
	}
	
	@RequestMapping("readReview.ow")
	public ModelAndView readReview(ModelAndView mv,int bNO) {
		
		ArrayList<Review> list = oService.readReviewSelect(bNO);
		ArrayList<Review_Reply> rlist = oService.readReviewReplySelect(bNO);
		for (Review_Reply review_Reply : rlist) {
			String rNo = review_Reply.getVr_Parentno();
			int rNO = review_Reply.getVr_NO();
			int result = oService.ReviewCheckUpdate(rNo);
			int result2 = oService.ReplyCheckUpdate(rNO);
			if(result == 0) {
				System.out.println("리뷰 답글작성 여부 변경 실패");
			}
			if(result2 == 0) {
				System.out.println("대댓글 읽음여부 변경 실패");
			}			
		}
		
		if(list != null) {
			mv.addObject("list",list);
			mv.addObject("rlist",rlist);
			mv.setViewName("review-complete");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	@RequestMapping("comReply-Insert.ow")
	public String comreplyInsert(Review_Reply rr, int bNO, RedirectAttributes redirect) {
		int result = oService.replyInsert(rr);
		if(result == 0) {
			System.out.println("리뷰 답글 등록 실패");
		}
		redirect.addAttribute("bNO", bNO);
		return "redirect:readReview.ow";
	}

	@RequestMapping("comReplyDelete.ow")
	public String comreplyDelete(int rrNO, int bNO, RedirectAttributes redirect) {
		int result = oService.replyDelete(rrNO);
		if(result == 0) {
			System.out.println("리뷰 답글 삭제 실패");
		}
		redirect.addAttribute("bNO", bNO);
		return "redirect:readReview.ow";
	}
	
}
