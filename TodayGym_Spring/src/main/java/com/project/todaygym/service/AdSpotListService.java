package com.project.todaygym.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdSpotDao;
import com.project.todaygym.dto.SpotDto;

@Service
public class AdSpotListService {
	
	private ModelAndView mv;
	
	@Autowired
	private AdSpotDao adSpotDao;
	
	public ModelAndView getAdSpotList() {
		
		System.out.println("AdSpotListService Start");
		
		mv = new ModelAndView();
		
		List<SpotDto> sList = adSpotDao.spotAllSelect();
		
		mv.addObject("sList", sList);
		mv.setViewName("admin/adSpotList");
		
		System.out.println(sList);
		System.out.println("AdSpotListService End");
		
		return mv;
	}
}
