package com.project.todaygym.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdMainDao;
import com.project.todaygym.dto.AgeGroupDto;

import lombok.extern.java.Log;

@Service
public class AdMainService {
	
	@Autowired
	private AdMainDao adMainDao;
	
	private ModelAndView mv;
	
	//Overview 처리
	public ModelAndView getOverview(ModelAndView mv) {
		
		//총원 구하기
		int cnt = adMainDao.totalCnt();
		
		mv.addObject("cnt", cnt);
		
		//연령대 구하기
		List<AgeGroupDto> agDto = adMainDao.ageGroup();
		
		mv.addObject("agDto", agDto);
		
		return mv;
	}
}
