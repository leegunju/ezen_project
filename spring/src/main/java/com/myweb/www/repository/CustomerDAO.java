package com.myweb.www.repository;

import com.myweb.www.domain.CustomerVO;

public interface CustomerDAO {

	CustomerVO getUser(String cid);

	int join(CustomerVO uvo);

}