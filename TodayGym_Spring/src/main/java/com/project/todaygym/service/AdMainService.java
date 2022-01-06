package com.project.todaygym.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdMainDao;

import lombok.extern.java.Log;

@Service
public class AdMainService {
	
	@Autowired
	private AdMainDao adMainDao;
	
	private ModelAndView mv;
	
	//총원 구하기
	public ModelAndView getOverview(ModelAndView mv) {
		
		int cnt = adMainDao.totalCnt();
		
		mv.addObject("cnt", cnt);
		
		return mv;
	}
}
