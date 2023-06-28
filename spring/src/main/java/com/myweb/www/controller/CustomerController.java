package com.myweb.www.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	@GetMapping("/signup")
	public String joinGet(Model m) {
		log.info("회원가입 페이지 진입");
		return "/user/signup";
	}
	
	@PostMapping("/signup")
	public String joinPost(Model m, CustomerVO cvo) {
		log.info("회원가입 시작");
		log.info("나옴?"+cvo.getCadd());
	        int isOk = csv.join(cvo);
	        if (isOk > 0) {
	            m.addAttribute("msg_signup", 1);
	        } else {
	            m.addAttribute("msg_signup", 0);
	        }
	        return "home";
	    }

	@GetMapping("/login")
	public String loginGet() {
		return "/user/login";
	}
	
	@PostMapping("/login")
	public String loginPost(Model m, String cid, String cpw, HttpServletRequest request) {
		log.info(">>>id : "+cid+", "+"pw : "+cpw);
		CustomerVO isUser = csv.login(cid, cpw); 
		log.info(">>>isUser "+isUser.toString());

		if(isUser != null) {
			HttpSession ses = request.getSession();
			ses.setAttribute("ses", isUser);
			m.addAttribute("user", isUser);
		}
		if(cid.equals("admin")) {
			return "/user/admin";
		}else {			
			return "home";
		}
	}


		
	
}