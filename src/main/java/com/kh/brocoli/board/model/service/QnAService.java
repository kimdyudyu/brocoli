package com.kh.brocoli.board.model.service;

import java.util.ArrayList;

import com.kh.brocoli.board.model.vo.Notice;
import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.QnA;
import com.kh.brocoli.board.model.vo.QnA_Reply;
import com.kh.brocoli.board.model.vo.SearchCondition;

public interface QnAService {

	/**
	 * qna 게시판 카운트
	 * @return
	 */
	int getListCount();

	/**
	 * qna 게시판 리스트 조회
	 * @param pi
	 * @return
	 */
	ArrayList<QnA> selectList(PageInfo pi);

	/**
	 * 질문 작성
	 * @param q
	 * @return
	 */
	int insertQnA(QnA q);

	/**
	 * 질문 상세조회
	 * @param q_No
	 * @return
	 */
	QnA selectQnA(int q_No);

	/**
	 * 댓글 등록
	 * ㅅㅈㄷ
	 * @param qr
	 * @return
	 */
	int insertReply(QnA_Reply qr);

	ArrayList<QnA_Reply> selectReplyList(int bId);

	/**
	 * 게시판 수정
	 * @param q_No
	 * @return
	 */
	QnA selectUpdateQnA(int q_No);
	int updateQnA(QnA q);

	/**
	 * 게시판 삭제
	 * @param q_No
	 * @return
	 */
	int deleteQnA(int q_No);

	int getSearchResultListCount(SearchCondition sc);

	ArrayList<QnA> selectSearchResultList(SearchCondition sc, PageInfo pi);

	



	


}
