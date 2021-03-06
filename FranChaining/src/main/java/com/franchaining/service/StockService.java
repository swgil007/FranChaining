package com.franchaining.service;

import java.util.List;

import com.franchaining.vo.ManagerVO;
import com.franchaining.vo.RegVO;
import com.franchaining.vo.StockVO;
import com.franchaining.vo.StocklistVO;

public interface StockService {

	public List<StockVO> stockList() throws Exception;
	
	public int listCount() throws Exception;
	
	public void stockAdd(StockVO stockVO) throws Exception;

	public void stockModul(StockVO stockVO) throws Exception;

	public void stockDelete(StockVO stockVO) throws Exception;

	public List<StockVO> s_name_info() throws Exception;
	
	public StockVO stockinfo(StockVO stockVO) throws Exception;
	
	public List<StocklistVO> stockcenterlist() throws Exception;
}
