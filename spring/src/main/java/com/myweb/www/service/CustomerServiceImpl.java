package com.myweb.www.service;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.myweb.www.domain.CustomerVO;
import com.myweb.www.repository.CustomerDAO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class CustomerServiceImpl implements CustomerService{
	
	@Inject
	private CustomerDAO cdao;
	
	@Inject
	BCryptPasswordEncoder passwordencoder;
	
	@Override
	public int join(CustomerVO cvo) {
		log.info("회원가입 서비스 진입");
		int isOk = cdao.join(cvo);
		log.info("isOk : "+isOk);
		return isOk;
	}


	@Override
	public CustomerVO login(String cid, String cpw) {
		log.info(">> 로그인 서비스 진입");
		CustomerVO user = cdao.getUser(cid);
		if(user == null) { return null; }

			return user;

	}
	
	
}
