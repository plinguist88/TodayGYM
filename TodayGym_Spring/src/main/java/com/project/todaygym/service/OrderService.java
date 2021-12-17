package com.project.todaygym.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.OrderDao;
import com.project.todaygym.dto.OrderDto;

@Service
public class OrderService {
	
	/*
	@Autowired
	private CartDao cDao;
	
	@Autowired
	private MemberDao mDao;
	*/
	
	private ModelAndView mv;
	
	//__________ 결제 페이지
	public ModelAndView getOrderAndInfo() {
		mv = new ModelAndView();
		
		/*
		CartDto mCart = cDao.memberSelect();
		MemberDto  mAccount = mDao.memberSelect();
		
		mv.addObject("mAccount", mAccount);
		mv.addObject("mClass", mClass);
		*/
		
		mv.setViewName("order/orderHome");
		
		return mv;
	} // getMemberAndClass end
	
} // class end
