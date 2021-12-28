package com.project.todaygym.service;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.buyDao;
import com.project.todaygym.dao.priceDao;
import com.project.todaygym.dto.buyDto;
import com.project.todaygym.dto.priceDto;

@Service
public class buyService {
	@Autowired
	private buyDao bDao;
	@Autowired
	private priceDao pDao;
	@Autowired
	private HttpSession session;
	private ModelAndView mv;
	
	//1. 구매메인페이지 회원권 정보 가져오기
	public ModelAndView getBuyList() {
		mv = new ModelAndView();
		List<buyDto> bList = bDao.getBuyList();
		mv.addObject("bList", bList);
		mv.setViewName("buy/buyHome");
		System.out.println(bList + "내용");
		return mv;
	}
	//2. 구매상세목록가져오기
	public ModelAndView getDetail(String b_code) {
		mv = new ModelAndView();
		buyDto bDto = bDao.getDetail(b_code);
		mv.addObject("bDto", bDto);
		
		List<priceDto> pList = pDao.getContents(b_code);
		mv.addObject("pList", pList);		
		mv.setViewName("buy/bHealthDetail");
		return mv;
	}
	
	
	
}



















