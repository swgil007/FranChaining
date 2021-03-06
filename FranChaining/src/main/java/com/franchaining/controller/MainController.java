package com.franchaining.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = "/franchaining", method = RequestMethod.GET)
	public String franchainingget(){
		logger.info("franchainingget");
		return "franchain";
	}
	
	
	
	@RequestMapping(value = "/franchaining", method = RequestMethod.POST)
	public String franchainingpost(){
		logger.info("franchaining");

		return "franchain";
	}
	
	@RequestMapping(value = "/franchaining/main", method = RequestMethod.GET)
	public String main(){
		logger.info("main");

		return "main";
	}
	@RequestMapping(value = "/master_main", method = RequestMethod.GET)
	public String master(){
		logger.info("/master_main");

		return "/branch/master/master_main";
	}
	
	@RequestMapping(value = "/manager_main", method = RequestMethod.GET)
	public String manager(){
		logger.info("/manager_main");

		return "/branch/manager/manager_main";
	}
	
	@RequestMapping(value = "/hr_main", method = RequestMethod.GET)
	public String hr(){
		logger.info("/hr_main");

		return "/center/hr/hr_main";
	}
	
	@RequestMapping(value = "/stock_main", method = RequestMethod.GET)
	public String stock(){
		logger.info("/stock_main");

		return "/center/stock/stock_main";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String ttt(){
		logger.info("franchaining");

		return "user/login";
	}
	
	@RequestMapping(value = "/module", method = RequestMethod.GET)
	public String moudle(){
		logger.info("module");

		return "center/hr/module";
	}
}
