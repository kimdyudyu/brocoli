package com.kh.brocoli.board.model.service;

import java.util.ArrayList;

import com.kh.brocoli.board.model.vo.Notice;
import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.SearchCondition;

public interface BoardService {

	/**
	 * 게시판 카운트
	 * @return
	 */
	int getListCount();

	/**
	 * 게시판 리스트 조회
	 * @param pi
	 * @return
	 */
	ArrayList<Notice> selectList(PageInfo pi);

	/**
	 * 게시판 작성
	 * @param n
	 * @return
	 */
	int insertBoardNotice(Notice n);

	/**
	 * 게시판 상세조회
	 * @param mno
	 * @return
	 */
	Notice selectBoardNotice(int n_No);

	/**
	 * 게시판 수정
	 * @param n_No
	 * @return
	 */
	Notice selectUpdateBoardNotice(int n_No);
	int updateBoardNotice(Notice n);

	/**
	 * 게시판 삭제
	 * @param n_No
	 * @return
	 */
	int deleteBoardNtice(int n_No);

	int getSearchResultListCount(SearchCondition sc);

	ArrayList<Notice> selectSearchResultList(SearchCondition sc, PageInfo pi);
}
