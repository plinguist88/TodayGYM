package com.project.todaygym.service;

import javax.servlet.http.HttpSession;

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
	
	@Autowired
	private HttpSession session;
	
	private ModelAndView mv;
	
	//__________ 결제 페이지
	public ModelAndView getMyOrderAndInfo() {
		
		mv = new ModelAndView();
		
		String id = (String)session.getAttribute("id");
		
		/*
		MemberDto myInfo = mDao.myInfoSelect(id);
		List<CartDto> myOrderList = cDao.myOrderSelect(id);
		
		mv.addObject("myOrder", myOrderList);
		mv.addObject("myInfo", myInfo);		
		*/
		
		mv.setViewName("order/orderHome");
		
		return mv;
	} // getOrderAndInfo end
	
} // class end
