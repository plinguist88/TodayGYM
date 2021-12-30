package com.project.todaygym.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdSpotDao;
import com.project.todaygym.dto.SpotImageDto;

@Service
public class AdSpotImageService {

	private ModelAndView mv;
	private List<SpotImageDto> spotImageDto;
	private List<String> pathList;

	@Autowired
	private AdSpotDao adSpotDao;

	public ModelAndView getSpotImage(String s_code) {
		
		spotImageDto = new ArrayList<SpotImageDto>();
		pathList = new ArrayList<String>();
		
		spotImageDto = adSpotDao.spotImageSelect(s_code);
		
		for(SpotImageDto sid : spotImageDto) {
			String allPath = sid.getSimg_sys();
			
			String resourcePath = allPath.substring(allPath.lastIndexOf("webapp")+7);
			
			System.out.println(resourcePath);
			
			pathList.add(resourcePath);
		}

		System.out.println(pathList);
		
		mv = new ModelAndView();
		
		mv.addObject("pathList", pathList);
		mv.setViewName("admin/adSpotImage");
		
		return mv;
	}
}
