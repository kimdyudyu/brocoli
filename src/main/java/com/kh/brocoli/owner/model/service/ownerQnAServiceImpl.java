package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.owner.model.dao.ownerQnADao;
import com.kh.brocoli.product.model.vo.QNAProduct;
import com.kh.brocoli.product.model.vo.QNAProduct_Reply;
import com.kh.brocoli.product.model.vo.Review_Reply;

@Service("ownerQnAService")
public class ownerQnAServiceImpl implements ownerQnAService {
	
	@Autowired ownerQnADao oDao;

	@Override
	public ArrayList<QNAProduct> noReadQnASelect(int bNO) {
		return oDao.noReadQnASelect(bNO);
	}

	@Override
	public ArrayList<QNAProduct_Reply> noReadQnAReplySelect(int bNO) {
		return oDao.noReadQnAReplySelect(bNO);
	}

	@Override
	public int QnACheckUpdate(String rNo) {
		return oDao.QnACheckUpdate(rNo);
	}

	@Override
	public int QReplyCheckUpdate(int rNO) {
		return oDao.QReplyCheckUpdate(rNO);
	}

	@Override
	public int replyInsert(QNAProduct_Reply rr) {
		return oDao.replyInsert(rr);
	}
	
	@Override
	public int replyDelete(int rrNO) {
		return oDao.replyDelete(rrNO);
	}

	@Override
	public ArrayList<QNAProduct> readQnASelect(int bNO) {
		return oDao.readQnASelect(bNO);
	}

	@Override
	public ArrayList<QNAProduct_Reply> readQnAReplySelect(int bNO) {
		return oDao.readQnAReplySelect(bNO);
	}

}
