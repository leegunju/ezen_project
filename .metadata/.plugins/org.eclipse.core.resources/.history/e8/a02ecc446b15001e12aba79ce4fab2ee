package com.myweb.www.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myweb.www.domain.ConsultVO;
import com.myweb.www.service.ConsultService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/consult/*")
public class ConsultController {
	
	@Inject
	private ConsultService csv;
		
	@GetMapping
	public String register() {
		return "/consult/register";
	}
	
	@PostMapping
	public String register(Model m, ConsultVO cvo) {
		log.info(">>> cvo > "+cvo);
		return "/home";
	}
}
