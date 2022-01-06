package com.project.todaygym.service;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdMainDao;
import com.project.todaygym.dto.SpotOverviewDto;

import lombok.extern.java.Log;

@Service
public class AdMainService {
	
	@Autowired
	private AdMainDao adMainDao;
	
	private List<SpotOverviewDto> spotOverviewList;
	
	
	public ModelAndView getOverview(ModelAndView mv) {
		//회원 전체 수
		int cnt = adMainDao.totalCnt();
		mv.addObject("cnt", cnt);
		
		//회원권 전체 수
		int totalTicket = adMainDao.totalTicket();
		mv.addObject("totalTicket", totalTicket);
		
		//지점 전체 수
		int totalSpot = adMainDao.totalSpot();
		mv.addObject("totalSpot", totalSpot);
		
		//지점 오버뷰 목록
		spotOverviewList = new ArrayList<SpotOverviewDto>();
		spotOverviewList = adMainDao.spotOverviewSelect();
		
		for(SpotOverviewDto sod : spotOverviewList) {
			String allPath = sod.getSimg_sys();
			
			String resourcePath = allPath.substring(allPath.lastIndexOf("webapp")+7);
			
			sod.setSimg_sys(resourcePath);
		}
		
		System.out.println("SpotOverviewList : " + spotOverviewList);
		mv.addObject("spotOverviewList", spotOverviewList);
		
		//리뷰 전체 수
		int totalReview = adMainDao.totalReview();
		mv.addObject("totalReview", totalReview);
		
		return mv;
	}
}
