package com.myweb.www.controller;


import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myweb.www.domain.CustomerVO;
import com.myweb.www.service.CustomerService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/member/*")
@Controller
public class CustomerController {
	
	@Inject
	private CustomerService csv;
	
	@GetMapping("/join")
	public String joinGet(Model m) {
		return "/user/signup";
	}
	
	@PostMapping("/join")
	public String joinPost(Model m, CustomerVO cvo) {
		log.info("회원가입 페이지 진입");
		int isOk = csv.join(cvo);
		if(isOk > 0 ) {
			m.addAttribute("msg_signup", 1);
		}else {
			m.addAttribute("msg_signup", 0);
		}
		
		return "home";
	}
		
	
}