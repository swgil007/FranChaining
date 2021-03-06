package com.franchaining.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.franchaining.dao.OrdersDAO;
import com.franchaining.vo.OrdersVO;
import com.franchaining.vo.OrderslistVO;
import com.franchaining.vo.StockVO;

@Service
public class OrdersServiceImpl implements OrdersService {

	@Inject
	private OrdersDAO dao;

	@Override
	public List<OrderslistVO> ordersList(OrdersVO ordersVO) throws Exception {
		return dao.ordersList(ordersVO);
	}

	@Override
	public int listCount(OrdersVO ordersVO) throws Exception {
		return dao.listCount(ordersVO);
	}

	@Override
	public List<OrderslistVO> showOrders(int o_no) throws Exception {
		return dao.showOrders(o_no);
	}

	@Override
	public int showlistCount(int o_no) throws Exception {
		return dao.showlistCount(o_no);
	}

	@Override
	public void ordersApply(OrdersVO ordersVO) throws Exception {
		System.out.println("service");
		dao.ordersApply(ordersVO);
	}

	@Override
	public void ordersDelete(OrdersVO ordersVO) throws Exception {
		dao.ordersDelete(ordersVO);
	}

	@Override
	public void stockGoneOrdersDelete(StockVO stockVO) throws Exception {
		dao.stockGoneOrdersDelete(stockVO);
	}
	
}
