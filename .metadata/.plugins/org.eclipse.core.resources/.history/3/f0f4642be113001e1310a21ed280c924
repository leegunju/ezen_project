package com.myweb.www.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myweb.www.domain.BoardDTO;
import com.myweb.www.domain.BoardVO;
import com.myweb.www.domain.FileVO;
import com.myweb.www.domain.PagingVO;
import com.myweb.www.domain.UserVO;
import com.myweb.www.handler.FileHandler;
import com.myweb.www.handler.PagingHandler;
import com.myweb.www.repository.UserDAO;
import com.myweb.www.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Inject
	private BoardService bsv;
	
	@Inject
	private UserDAO udao;
	
	@Inject
	private FileHandler fhd;
	
	@GetMapping("/register")
	public String registerGet() {
		return "/board/register";
	}
	
	@PostMapping("/register")
	public String registerPost(BoardVO bvo, RedirectAttributes ra, 
			@RequestParam(name="files", required=false)MultipartFile[] files) {
		log.info(">>> bvo > " + bvo.toString());
		List<FileVO> fList = null;
		if(files[0].getSize()>0) { 	
			fList = fhd.uploadFiles(files);
		} else {
			log.info("file null");
		}
		BoardDTO bdto = new BoardDTO(bvo, fList);
		int isOk = bsv.register(bdto);
		
		//int isOk = bsv.register(bvo);
		log.info(">>> board register > " + (isOk > 0 ? "Success": "Fail"));
		ra.addFlashAttribute("isOk", isOk);
		return "redirect:/";
	}
	
	@GetMapping("/list")
	public String listGet(Model m, PagingVO pvo) {
		List<BoardVO> list = bsv.getList(pvo);
		m.addAttribute("list", list);
		int totalCount = bsv.getTotalCount(pvo);
		PagingHandler ph = new PagingHandler(pvo, totalCount);
		m.addAttribute("ph", ph);
		return "/board/list";
	}
	
	@GetMapping("/detail")
	public void detail(Model m, @RequestParam("bno")int bno) {
		log.info(">>> bno >" + bno);
		//BoardVO bvo = bsv.getDetail(bno);
		BoardDTO bdto = bsv.getDetailFile(bno);
		int isOk = bsv.count(bno);
		log.info(">>> count up > " + (isOk > 0 ? "success" : "Fail"));
		m.addAttribute("boardDTO", bdto);
	}
	
	@GetMapping("/modify")
	public void modify(Model m, @RequestParam("bno")int bno) {
		log.info(">>> bno > " + bno);
		BoardDTO bdto = bsv.getDetailFile(bno);
		BoardVO bvo = bsv.getDetail(bno);
		m.addAttribute("board", bvo);
		m.addAttribute("boardDTO", bdto);
	}
	
	@PostMapping("/modify")
	public String update(RedirectAttributes rAttr, BoardVO bvo, @RequestParam(name="files", required=false)MultipartFile[] files) {
		log.info(">>> bvo >" + bvo.toString());
		UserVO user = udao.getUser(bvo.getWriter());
		log.info(">>> files > " + files.toString());
		
		List<FileVO> flist = null;
		if(files[0].getSize() > 0) {
			flist = fhd.uploadFiles(files);
		}
		BoardDTO bdto = new BoardDTO(bvo, flist);
		int isOk = bsv.modifyFile(bdto, user);
		
		log.info(">>> modify > " + (isOk > 0 ? "success" : "Fail"));
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/delete")
	public String delete(RedirectAttributes rAttr, @RequestParam("bno")int bno, HttpServletRequest request) {
		int isOk = bsv.delete(bno);
		log.info(">>> delete > " + (isOk > 0 ? "success" : "Fail"));
		
		return "redirect:/board/list";
	}
	
	@DeleteMapping(value="/file/{uuid}", produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> removeFile(@PathVariable("uuid")String uuid) {
		log.info(">>> uuid > " + uuid);
		return bsv.removeFile(uuid) > 0 ?
				new ResponseEntity<String>("1", HttpStatus.OK)
				: new ResponseEntity<String>("0", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
}
