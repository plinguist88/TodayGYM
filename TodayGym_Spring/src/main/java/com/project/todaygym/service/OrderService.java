package com.project.todaygym.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.MemberDao;
import com.project.todaygym.dao.ProductDao;
import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.dto.MyCartDto;

@Service
public class OrderService {
	
	@Autowired
	private ProductDao pDao;
	
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private HttpSession session;
	
	private ModelAndView mv;
	
	//__________ 결제 페이지
	public ModelAndView getMyCartAndInfo(String m_id) {
		
		mv = new ModelAndView();
		
		List<MyCartDto> myCart= pDao.getMyCart(m_id);
		
		MemberDto myInfo = (MemberDto)session.getAttribute("mb");
		
		mv.addObject("myOrder", myCart);
		mv.addObject("myInfo", myInfo);	
		
		mv.setViewName("order/orderHome");
		
		return mv;
	} // getOrderAndInfo end
	
} // class end
