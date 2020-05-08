package com.kh.brocoli.owner.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.product.model.vo.QNAProduct;
import com.kh.brocoli.product.model.vo.QNAProduct_Reply;
import com.kh.brocoli.product.model.vo.Review_Reply;

@Repository("ownerQnADao")
public class ownerQnADao {
	
	@Autowired SqlSessionTemplate sqlSession;

	public ArrayList<QNAProduct> noReadQnASelect(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerQnA-mapper.selectNoReadQnAList",bNO);
	}

	public ArrayList<QNAProduct_Reply> noReadQnAReplySelect(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerQnA-mapper.selectNoReadQnAReplyList",bNO);
	}

	public int QnACheckUpdate(String rNo) {
		return sqlSession.update("ownerQnA-mapper.updateQnACheck",rNo);
	}

	public int QReplyCheckUpdate(int rNO) {
		return sqlSession.update("ownerQnA-mapper.updateReplyCheck",rNO);
	}

	public int replyInsert(QNAProduct_Reply rr) {
		return sqlSession.insert("ownerQnA-mapper.insertReply",rr);
	}

	public int replyDelete(int rrNO) {
		return sqlSession.update("ownerQnA-mapper.deleteReply",rrNO);
	}

	public ArrayList<QNAProduct> readQnASelect(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerQnA-mapper.selectReadQnAList",bNO);
	}

	public ArrayList<QNAProduct_Reply> readQnAReplySelect(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerQnA-mapper.selectReadQnAReplyList",bNO);
	}
	
	
}
