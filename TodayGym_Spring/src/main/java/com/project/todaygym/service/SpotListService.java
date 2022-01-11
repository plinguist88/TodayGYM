package com.project.todaygym.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdSpotDao;
import com.project.todaygym.dto.SpotDto;
import com.project.todaygym.dto.SpotImageDto;

@Service
public class SpotListService {
	
	private ModelAndView mv;
	private List<SpotDto> sList;
	//private SpotImageDto sid; 
	
	
@Autowired
	private AdSpotDao adSpotDao;

	public ModelAndView getSpotList() {
		
		sList = new ArrayList<SpotDto>();
		//빈 깡통이라 생각하자 , 초기화 
		
		sList = adSpotDao.spotAllSelect();
		// 안에 내용물이라 생각하자 
		
		List<SpotImageDto> imgList = new ArrayList<SpotImageDto>();
		for(SpotDto s : sList) {
			SpotImageDto si = adSpotDao.spotHomeImg(s.getS_code());
			String allPath = si.getSimg_sys();
			
			String resourcePath = allPath.substring(allPath.lastIndexOf("webapp")+7);
			
			si.setSimg_sys(resourcePath);
			imgList.add(si);
		}
		mv = new ModelAndView();
		//빈 깡통이라 생각하자, 초기화 
		
		mv.addObject("sList", sList);
		//view에 전달할 값을 설정
		mv.addObject("imgList", imgList);
		
		//mv.addObject("sid", sid);
		mv.setViewName("spot/spotHome");
		//응답할 view이름 설정
		
		return mv; 
		}// getSpotList 메소드 end

	
	
}//SpotListService end 
