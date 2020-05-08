package com.kh.brocoli.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.board.model.vo.Notice;
import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.SearchCondition;

@Repository("bnDao")
public class BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("boardNotice-mapper.getListCount");

	}
	
	public ArrayList<Notice> selectList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return (ArrayList)sqlSession.selectList("boardNotice-mapper.selectList",null, rowBounds);
		
	}

	public int insertBoardNotice(Notice n) {
		return sqlSession.insert("boardNotice-mapper.insertBoardNotice", n);
	}

	public Notice selectBoardNotice(int n_No) {
		return sqlSession.selectOne("boardNotice-mapper.selectBoardNotice", n_No);
	}

	public int updateCount(int n_No) {
		return sqlSession.update("boardNotice-mapper.updateCount", n_No);
	}

	public int updateBoardNotice(Notice n) {
		return sqlSession.update("boardNotice-mapper.updateBoardNotice", n);
	}

	public int deleteBoardNotice(int n_No) {
		return sqlSession.update("boardNotice-mapper.deleteBoardNotice", n_No);
	}

	public int getSearchResultListCount(SearchCondition sc) {
		return sqlSession.selectOne("boardNotice-mapper.getSearchResultListCount", sc);
	}

	public ArrayList<Notice> selectSearchResultList(SearchCondition sc, PageInfo pi) {
		ArrayList<Notice> list = null;
		
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		list = (ArrayList)sqlSession.selectList("boardNotice-mapper.selectSearchResultList",sc,rowBounds);
		
		return list;
	}
}
