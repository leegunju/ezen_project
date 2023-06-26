package com.myweb.www.repository;

import java.util.List;

import com.myweb.www.domain.BoardVO;
import com.myweb.www.domain.PagingVO;

public interface BoardDAO {

	int insert(BoardVO bvo);

	List<BoardVO> getList(PagingVO pvo);

	BoardVO getDetail(int bno);

	int modify(BoardVO bvo);

	int delete(int bno);

	int count(int bno);

	int getTotalCount(PagingVO pvo);

	int selectBno();

	int updateBoard(BoardVO bvo);

}
