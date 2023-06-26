package com.myweb.www.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myweb.www.domain.UserVO;
import com.myweb.www.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/member/*")
public class UserController {
	
	@Inject
	private UserService usv;
	
	@GetMapping("/signup")
	public String index() {
		log.info("index 접근완료");
		return "/user/signup";
	}
	
	@PostMapping("/signup")
	public String signupPost(Model m, UserVO uvo) {
		log.info("화원접근 완료");
		log.info(uvo.toString());
		int isOk = usv.signUp(uvo);
		if(isOk > 0) {
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
	
	@PostMapping("login")
	public String loginPost(Model m, UserVO uvo, HttpServletRequest req) {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		UserVO isUser = usv.isUser(id, pw);
		
		if(isUser != null) {
			HttpSession ses = req.getSession();
			ses.setAttribute("ses", isUser);
			m.addAttribute("user", isUser);
		} else {
			m.addAttribute("msg_login", 0);
		}
		return "home";
	}
	
	@GetMapping("/logout")
	public String logout(Model m, HttpServletRequest req) {
		req.getSession().removeAttribute("ses");
		req.getSession().invalidate();
		m.addAttribute("msg_logout", 1);
		return "home";
	}
}
