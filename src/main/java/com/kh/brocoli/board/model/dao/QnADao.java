package com.kh.brocoli.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.board.model.vo.Notice;
import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.QnA;
import com.kh.brocoli.board.model.vo.QnA_Reply;
import com.kh.brocoli.board.model.vo.SearchCondition;
import com.kh.brocoli.member.model.vo.Member;

@Repository("qDao")
public class QnADao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int getListCount() {
		return sqlSession.selectOne("QnA-mapper.getListCount");
	}

	public ArrayList<QnA> selectList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return (ArrayList)sqlSession.selectList("QnA-mapper.selectList",null, rowBounds);
	}

	public int insertQnA(QnA q) {
		return sqlSession.insert("QnA-mapper.insertQnA", q);
	}

	public int updateCount(int q_No) {
		return sqlSession.update("QnA-mapper.updateCount", q_No);
	}

	public QnA selectQnA(int q_No) {
		return sqlSession.selectOne("QnA-mapper.selectQnA", q_No);
	}

	public int insertReply(QnA_Reply qr) {
		System.out.println(qr);
		return sqlSession.insert("QnA-mapper.insertReply", qr);
	}

	public ArrayList<QnA_Reply> selectReplyList(int bId) {
		
		return (ArrayList)sqlSession.selectList("QnA-mapper.selectReplyList", bId);
	}

	public int deleteQnA(int q_No) {
		return sqlSession.update("QnA-mapper.deleteQnA", q_No);
	}

	public int updateQnA(QnA q) {
		return sqlSession.update("QnA-mapper.updateQnA", q);
	}

	public int getSearchResultListCount(SearchCondition sc) {
		return sqlSession.selectOne("QnA-mapper.getSearchResultListCount", sc);
	}

    public ArrayList<QnA> selectSearchResultList(SearchCondition sc, PageInfo pi) {
		
		ArrayList<QnA> list = null;
		
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		list = (ArrayList)sqlSession.selectList("QnA-mapper.selectSearchResultList",sc,rowBounds);
		
		return list;
	}

	
//************************************************내가쓴글보기******************************************//	
	
	public int getmyListCount() {
		return sqlSession.selectOne("QnA-mapper.getmyListCount");
	}

	public ArrayList<QnA> myselectList(PageInfo pi,Member m) {
				
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getLimit());
				
		return (ArrayList)sqlSession.selectList("QnA-mapper.myselectList",m,rowBounds);
	}		

	public int updateReply(String qr_No) {
		System.out.println("dao에서 qrno : " + qr_No);
		return sqlSession.update("QnA-mapper.updateReply",qr_No);
		
	}

}
