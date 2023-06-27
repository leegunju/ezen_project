package com.myweb.www.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.myweb.www.domain.BoardDTO;
import com.myweb.www.domain.BoardVO;
import com.myweb.www.domain.FileVO;
import com.myweb.www.domain.PagingVO;
import com.myweb.www.domain.UserVO;
import com.myweb.www.repository.BoardDAO;
import com.myweb.www.repository.FileDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	public BoardDAO bdao;

	@Inject
	private FileDAO fdao;
	
	@Override
	public int register(BoardVO bvo) {
		log.info("board register in");
		return bdao.insert(bvo);
	}

	@Override
	public List<BoardVO> getList(PagingVO pvo) {
		log.info("board getlist in");
		return bdao.getList(pvo);
	}

	@Override
	public BoardVO getDetail(int bno) {
		log.info("board getDetail in");
		return bdao.getDetail(bno);
	}

	@Override
	public int modify(BoardVO bvo) {
		log.info("board modify in");
		return bdao.modify(bvo);
	}

	@Override
	public int delete(int bno) {
		log.info("board modify in");
		return bdao.delete(bno);
	}

	@Override
	public int count(int bno) {
		log.info("board count in");
		return bdao.count(bno);
	}

	@Override
	public int getTotalCount(PagingVO pvo) {
		log.info("board getTotalCount in");
		return bdao.getTotalCount(pvo);
	}

	@Override
	public int register(BoardDTO bdto) {
		log.info("bvo+fList register in");
		int isOk = bdao.insert(bdto.getBvo());
		if(bdto.getFlist() == null) {
			isOk*=1;
		} else {
			if(isOk > 0 && bdto.getFlist().size()>0) {
				int bno = bdao.selectBno(); 
				for(FileVO fvo : bdto.getFlist()) {
					fvo.setBno(bno);
					log.info(">>> insert File > " + fvo.toString());
					isOk *= fdao.insertFile(fvo);
				}
			}
		}
		return isOk;
	}

	@Override
	public BoardDTO getDetailFile(int bno) {
		log.info("detail file in");
		BoardDTO bdto = new BoardDTO();
		bdto.setBvo(bdao.getDetail(bno));
		bdto.setFlist(fdao.getFileList(bno));
		return bdto;
	}

	@Override
	public int removeFile(String uuid) {
		log.info("remove file in");
		return fdao.deleteFile(uuid);
	}

	@Override
	public int modifyFile(BoardDTO bdto, UserVO user) {
		log.info("board modifyFile in");
	      BoardVO tmpBoard = bdao.getDetail(bdto.getBvo().getBno()); //해당 글의 게시글 호출
	      if(user ==null || !user.getId().equals(tmpBoard.getWriter())){
	         return 0;
	      }
	      int isOk = bdao.updateBoard(bdto.getBvo());
	      if(bdto.getFlist() == null) {
	         isOk *= 1;
	      }else {
	         if(isOk > 0 && bdto.getFlist().size()>0) {
	            int bno = bdto.getBvo().getBno();
	            for(FileVO fvo : bdto.getFlist()) {
					fvo.setBno(bno);
					log.info(">>> insert File > " + fvo.toString());
					isOk *= fdao.insertFile(fvo);
				}           
	         }
	      }
	      return 0;
	}

}
