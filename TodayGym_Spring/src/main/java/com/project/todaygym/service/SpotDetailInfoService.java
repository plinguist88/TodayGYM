package com.project.todaygym.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdSpotDao;
import com.project.todaygym.dto.SpotDto;
import com.project.todaygym.dto.SpotImageDto;

//Annotation 어노테이션 
//항상 어노테이션 써주기. 
//Annotation은 자바 소스 코드에 추가하여 사용할 수 있는 메타데이터의 일종입니다.

//서비스 객체
@Service
public class SpotDetailInfoService {
	//class에 미리 선언 
	private ModelAndView mv;
	private List<SpotImageDto> simList;
	
	//해당 인스턴스 변수에 스프링으로부터 자동으로 Bean을 주입, new 연사자와 같음
	@Autowired
	private AdSpotDao adSpotDao;
	
	public ModelAndView getSpotDetailInfo(String s_code) {
		
		//new ArrayList<SpotDto>();
		//sList 라는 깡통, SpotDto를 ArraryList로 사용하겠다 초기화
		//sList = adSpotDao.spotDetailInfo(s_code);
		//sList라는 깡통에 adSpotDao클래스에 있는 spotDetailInfo라는 인터페이스 사용
		SpotDto spot = adSpotDao.spotDetailInfo(s_code);
		
		simList = adSpotDao.spotDetailImg(s_code);
		
		for(SpotImageDto sid : simList) {
			String allPath = sid.getSimg_sys();
			
			String resourcePath = allPath.substring(allPath.lastIndexOf("webapp")+7);
			
			sid.setSimg_sys(resourcePath);
		}
		
		System.out.println(simList);
		
		
		mv = new ModelAndView();
		//mv라는 깡통 ModelAndView로 형태로 초기화 	
		mv.addObject("spot", spot);
		//mv에 있는 addObject라는 객체안에 simList라는 데이터를 넣는당.
		//addObject("변수명", 파라미터)
		mv.addObject("simList", simList);
		mv.setViewName("spot/spotDetail");
		//﻿setViewName을 통해 spot폴더에 있는 spotDetail.jsp에 저장
		
		return mv; 
		//위에 mv에 담았던 모든 값을 출력 
		
	}//class안 getSpotDetailInfo(String s_code)메서드 정의 
	

}//SpotDetailInfoService class end 
