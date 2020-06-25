package com.franchaining.service;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.franchaining.dao.EmpDAO;
import com.franchaining.vo.EmpVO;
import com.franchaining.vo.ManagerVO;
import com.franchaining.vo.RegVO;

@Service
public class EmpServiceImpl implements EmpService{

	@Inject
	private EmpDAO dao;

	@Override
	public void register(RegVO regVO) throws Exception {

		dao.register(regVO);
	}

	@Override
	public EmpVO userinfo(int e_no) throws Exception {
		return dao.userinfo(e_no);
	}

}
