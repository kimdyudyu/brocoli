package com.kh.brocoli.owner.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.brocoli.owner.model.service.ownerQnAService;
import com.kh.brocoli.product.model.vo.QNAProduct;
import com.kh.brocoli.product.model.vo.QNAProduct_Reply;
import com.kh.brocoli.product.model.vo.Review;
import com.kh.brocoli.product.model.vo.Review_Reply;

@Controller
@SessionAttributes("loginUser")
public class ownerQnAController {
	
	@Autowired ownerQnAService oService;
	
	@RequestMapping("noReadQNA.ow")
	public ModelAndView noReadQNA(ModelAndView mv, int bNO) {
		ArrayList<QNAProduct> list = oService.noReadQnASelect(bNO);
		ArrayList<QNAProduct_Reply> rlist = oService.noReadQnAReplySelect(bNO);
		for (QNAProduct_Reply QNAProduct_Reply : rlist) {
			String rNo = QNAProduct_Reply.getPqr_ParentNo();
			int rNO = QNAProduct_Reply.getPqr_Mno();
			int result = oService.QnACheckUpdate(rNo);
			int result2 = oService.QReplyCheckUpdate(rNO);
			if(result == 0) {
				System.out.println("QnA 답글작성 여부 변경 실패");
			}
			if(result2 == 0) {
				System.out.println("QnA 읽음여부 변경 실패");
			}			
		}
		
		if(list != null) {
			mv.addObject("list",list);
			mv.addObject("rlist",rlist);
			mv.setViewName("QnA-management");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	@RequestMapping("readQNA.ow")
	public ModelAndView readQNA(ModelAndView mv, int bNO) {
		ArrayList<QNAProduct> list = oService.readQnASelect(bNO);
		System.out.println("================================");
		for (QNAProduct qnaProduct : list) {
			System.out.println("컨트롤러 댓글 : " + qnaProduct);
		}
		System.out.println("================================");
		ArrayList<QNAProduct_Reply> rlist = oService.readQnAReplySelect(bNO);
		for (QNAProduct_Reply QNAProduct_Reply : rlist) {
			String rNo = QNAProduct_Reply.getPqr_ParentNo();
			int rNO = QNAProduct_Reply.getPqr_Mno();
			int result = oService.QnACheckUpdate(rNo);
			int result2 = oService.QReplyCheckUpdate(rNO);
			if(result == 0) {
				System.out.println("QnA 답글작성 여부 변경 실패");
			}
			if(result2 == 0) {
				System.out.println("QnA 읽음여부 변경 실패");
			}			
		}
		for (QNAProduct_Reply qnaProduct_Reply : rlist) {
			System.out.println("컨트롤러 대댓글 : " + qnaProduct_Reply);
		}
		
		if(list != null) {
			mv.addObject("list",list);
			mv.addObject("rlist",rlist);
			mv.setViewName("QnA-complete");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	@RequestMapping("QnAReply-Insert.ow")
	public String replyInsert(QNAProduct_Reply rr, RedirectAttributes redirect) {
		int result = oService.replyInsert(rr);
		if(result == 0) {
			System.out.println("리뷰 답글 등록 실패");
		}
		redirect.addAttribute("bNO", rr.getPqr_bNo());
		return "redirect:noReadReview.ow";
	}

	@RequestMapping("QnAReplyDelete.ow")
	public String replyDelete(int rrNO, int bNO, RedirectAttributes redirect) {
		int result = oService.replyDelete(rrNO);
		if(result == 0) {
			System.out.println("리뷰 답글 삭제 실패");
		}
		redirect.addAttribute("bNO", bNO);
		return "redirect:noReadReview.ow";
	}
	
	@RequestMapping("comQnAReply-Insert.ow")
	public String comreplyInsert(QNAProduct_Reply rr, RedirectAttributes redirect) {
		int result = oService.replyInsert(rr);
		if(result == 0) {
			System.out.println("리뷰 답글 등록 실패");
		}
		redirect.addAttribute("bNO", rr.getPqr_bNo());
		return "redirect:readReview.ow";
	}

	@RequestMapping("comQnAReplyDelete.ow")
	public String comreplyDelete(int rrNO, int bNO, RedirectAttributes redirect) {
		int result = oService.replyDelete(rrNO);
		if(result == 0) {
			System.out.println("리뷰 답글 삭제 실패");
		}
		redirect.addAttribute("bNO", bNO);
		return "redirect:readReview.ow";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
