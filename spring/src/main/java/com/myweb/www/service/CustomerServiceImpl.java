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
		CustomerVO tempUser = cdao.getUser(cvo.getCid());
		if(tempUser != null) {
			return 0;
		}
		if(cvo.getCid() == null || cvo.getCid().length() == 0) {
			return 0;
		}
		if(cvo.getCpw() == null || cvo.getCpw().length() == 0) {
			return 0;
		}
		String cpw = cvo.getCpw();
		String encodePw = passwordencoder.encode(cpw);
		cvo.setCpw(encodePw);
		int isOk = cdao.join(cvo);
		log.info("isOk : "+isOk);
		return isOk;
	}
	
	
}