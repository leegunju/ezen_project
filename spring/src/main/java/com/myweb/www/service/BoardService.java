package com.myweb.www.service;

import java.util.List;

import com.myweb.www.domain.BoardDTO;
import com.myweb.www.domain.BoardVO;
import com.myweb.www.domain.PagingVO;
import com.myweb.www.domain.UserVO;

public interface BoardService {

	int register(BoardVO bvo);

	List<BoardVO> getList(PagingVO pvo);

	BoardVO getDetail(int bno);

	int modify(BoardVO bvo);

	int delete(int bno);

	int count(int bno);

	int getTotalCount(PagingVO pvo);

	int register(BoardDTO bdto);

	BoardDTO getDetailFile(int bno);

	int removeFile(String uuid);

	int modifyFile(BoardDTO bdto, UserVO user);

}
