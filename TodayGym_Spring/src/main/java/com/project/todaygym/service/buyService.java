package com.project.todaygym.service;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.buyDao;
import com.project.todaygym.dto.buyDto;

@Service
public class buyService {
	@Autowired
	private buyDao bDao;
	@Autowired
	private HttpSession session;
	private ModelAndView mv;
	
	//1. 회원권 정보 가져오기
	public ModelAndView buyInfo(String view) {
		String b_code = (String) session.getAttribute("b_code");
		buyDto bInfo = bDao.buySelect(b_code);
		String off_price = "" + (bInfo.getB_price() - bInfo.getB_price()*0.1);
		mv = new ModelAndView();
		mv.addObject("bInfo", bInfo);
		mv.addObject("oprice", off_price);
		mv.setViewName("bHealthDetail");
		
		return mv;
	}
}
