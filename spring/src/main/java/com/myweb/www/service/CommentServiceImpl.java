package com.myweb.www.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.myweb.www.domain.CommentVO;
import com.myweb.www.repository.CommentDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CommentServiceImpl implements CommentService {
	
	@Inject
	private CommentDAO cdao;

	@Override
	public int post(CommentVO cvo) {
		log.info(">>> comment post service in > ");
		return cdao.insert(cvo);
	}

	@Override
	public List<CommentVO> getList(int bno) {
		log.info(">>> comment get list service in > ");
		return cdao.getList(bno);
	}

	@Override
	public int edit(CommentVO cvo) {
		log.info(">>> comment edit service in > ");
		return cdao.editComment(cvo);
	}

	@Override
	public int remove(int cno) {
		log.info(">>> comment delete service in > ");
		return cdao.deleteComment(cno);
	}
}
