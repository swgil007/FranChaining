package com.franchaining.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.franchaining.dao.BranchDAO;
import com.franchaining.vo.BranchVO;
import com.franchaining.vo.BranchlistVO;
import com.franchaining.vo.RegVO;

@Service
public class BranchServiceImpl implements BranchService {
	
	@Inject
	private BranchDAO dao;
	
	@Override
	public RegVO b_no_check(RegVO regVO) throws Exception {
		return dao.b_no_check(regVO);
	}

	@Override
	public int BranchCount() throws Exception {
		return dao.BranchCount();
	}

	@Override
	public BranchVO branchinfo(int b_no) throws Exception {
		return dao.branchinfo(b_no);
	}

	@Override
	public List<BranchlistVO> branchlist() throws Exception {
		return dao.branchlist();
	}
	
}
