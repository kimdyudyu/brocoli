package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.kh.brocoli.product.model.vo.QNAProduct;
import com.kh.brocoli.product.model.vo.QNAProduct_Reply;
import com.kh.brocoli.product.model.vo.Review_Reply;

public interface ownerQnAService {

	ArrayList<QNAProduct> noReadQnASelect(int bNO);

	ArrayList<QNAProduct_Reply> noReadQnAReplySelect(int bNO);

	int QnACheckUpdate(String rNo);

	int QReplyCheckUpdate(int rNO);

	int replyInsert(QNAProduct_Reply rr);

	int replyDelete(int rrNO);

	ArrayList<QNAProduct> readQnASelect(int bNO);

	ArrayList<QNAProduct_Reply> readQnAReplySelect(int bNO);

	
}
