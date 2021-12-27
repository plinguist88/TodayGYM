package com.project.todaygym.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdSpotDao;
import com.project.todaygym.dto.SpotDto;

@Service
public class AdSpotListService {
	
	private ModelAndView mv;
	private List<SpotDto> sList;
	
	@Autowired
	private AdSpotDao adSpotDao;
	
	public ModelAndView getAdSpotList(String side) {
		
		sList = new ArrayList<SpotDto>();
		
		sList = adSpotDao.spotAllSelect();
		
		mv = new ModelAndView();
		
		mv.addObject("side", side);
		mv.addObject("sList", sList);
		mv.setViewName("admin/adSpotList");

		System.out.println("AdSpotListService Result : " + sList);
		
		return mv;
	}
}
