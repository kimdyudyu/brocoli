package com.kh.brocoli.board.model.service;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.board.model.dao.QnADao;
import com.kh.brocoli.board.model.vo.Notice;
import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.QnA;
import com.kh.brocoli.board.model.vo.QnA_Reply;
import com.kh.brocoli.board.model.vo.SearchCondition;


@Service("qService")
public class QnAServiceImpl implements QnAService{
	
	@Autowired
	private QnADao qDao;

	@Override
	public int getListCount() {	
		return qDao.getListCount();
	}

	@Override
	public ArrayList<QnA> selectList(PageInfo pi) {
		return qDao.selectList(pi);
	}

	@Override
	public int insertQnA(QnA q) {
		return qDao.insertQnA(q);
	}

	@Override
	public QnA selectQnA(int q_No) {
		
		int result = qDao.updateCount(q_No);
		if(result > 0) {
			return qDao.selectQnA(q_No);
		}else {
			return null;
		}
	}
	
	@Override
	public int insertReply(QnA_Reply qr) {
		int result = qDao.insertReply(qr);
		if(result > 0) {
			System.out.println("서비스 리절트 : " + result);
			return qDao.updateReply(qr.getQr_Qno());
		}else {
			return 0;
		}
	}

	@Override
	public ArrayList<QnA_Reply> selectReplyList(int bId) {
		return qDao.selectReplyList(bId);
	}

	@Override
	public QnA selectUpdateQnA(int q_No) {
		return qDao.selectQnA(q_No);
	}

	@Override
	public int deleteQnA(int q_No) {
		return qDao.deleteQnA(q_No);
	}

	@Override
	public int updateQnA(QnA q) {
		return qDao.updateQnA(q);
	}

	@Override
	public int getSearchResultListCount(SearchCondition sc) {
		return qDao.getSearchResultListCount(sc);
	}

	@Override
	public ArrayList<QnA> selectSearchResultList(SearchCondition sc, PageInfo pi) {
		return qDao.selectSearchResultList(sc,pi);
	}
}
