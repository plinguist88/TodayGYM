package com.project.todaygym.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.OrderDao;
import com.project.todaygym.dto.OrderDto;

@Service
public class OrderService {
	
	@Autowired
	private OrderDao oDao;
	
	private ModelAndView mv;
	
	//__________ 결제하기 실행
	public ModelAndView bankCheck(OrderDto account) {
		
		mv = new ModelAndView();
		
		String result = null;
		
		int BankDB = oDao.accountSelect("");
		
		if(BankDB == 1) {
			
			result = "true";
			
		} // if end
		
		else {
			
			result = "false";
			
		} // else end
		
		return mv;
		
	} // bankCheck end
	
} // class end
