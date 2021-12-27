package com.project.todaygym.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdSpotDao;
import com.project.todaygym.dto.SpotDto;

@Service
public class AdSpotDetailService {

	private ModelAndView mv;
	private SpotDto spotDto;

	@Autowired
	private AdSpotDao adSpotDao;

	public ModelAndView getAdSpotDetail(String s_code) {
		
		spotDto = new SpotDto();
		
		spotDto = adSpotDao.spotOneSelect(s_code);

		mv = new ModelAndView();
		
		mv.addObject("spotDto", spotDto);
		mv.setViewName("admin/adSpotDetail");
		
		System.out.println("AdSpotDetailService Result : " + spotDto);
		
		return mv;
	}
}
