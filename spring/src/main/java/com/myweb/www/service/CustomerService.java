package com.myweb.www.service;

import com.myweb.www.domain.CustomerVO;

public interface CustomerService {

	int join(CustomerVO cvo);

	CustomerVO login(String cid, String cpw);

}
