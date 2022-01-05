package com.project.todaygym.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdSpotDao;
import com.project.todaygym.dto.SpotDto;

@Service
public class AdSearchSpotListService {
	private ModelAndView mv;
	private List<SpotDto> sList;
	
	@Autowired
	private AdSpotDao adSpotDao;
	
	public ModelAndView getAdSearchSpotList(String side, String adSearchSelect, String keyword) {
		
		sList = new ArrayList<SpotDto>();
		
		if(adSearchSelect.equals("s_code")) {
			sList = adSpotDao.spotCodeSearchSelect(keyword);
		} else if(adSearchSelect.equals("s_name")) {
			sList = adSpotDao.spotNameSearchSelect(keyword);
		} else {
			sList = null;
		}
		
		mv = new ModelAndView();
		
		mv.addObject("side", side);
		mv.addObject("sList", sList);
		mv.setViewName("admin/adSpotList");
		
		System.out.println("Side Number : " + side);
		System.out.println("AdSearchSpotListService Result : " + sList);
		
		return mv;
	}
}
