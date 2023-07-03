package com.myweb.www.repository;

import com.myweb.www.domain.CustomerVO;

public interface CustomerDAO {

	CustomerVO getUser(String cid, String cpw);

	int join(CustomerVO uvo);

	int modify(CustomerVO cvo);

	int delete(CustomerVO cvo);

	CustomerVO getAdmin(String cid, String cpw);

}
