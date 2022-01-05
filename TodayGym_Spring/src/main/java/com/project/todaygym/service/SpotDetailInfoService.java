package com.project.todaygym.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdSpotDao;
import com.project.todaygym.dto.SpotDto;



//Annotation 어노 테이션 
//항상 어노테이션 써주기. 
//Annotation은 자바 소스 코드에 추가하여 
//사용할 수 있는 메타데이터의 일종입니다.
@Service 
//서비스 객체
public class SpotDetailInfoService {
	
	private ModelAndView mv;
	private List<SpotDto> sList; 
	//class에 미리 선언 
	
@Autowired
//해당 인스턴스 변수에 스프링으로부터 
//자동으로 Bean을 주입, new 연사자와 같음

	private AdSpotDao adSpotDao;
	
	public ModelAndView getSpotDetailInfo(String s_code) {
	
		sList = new ArrayList<SpotDto>();
		// sList 라는 깡통, SpotDto를 ArraryList로 사용하겠다 초기화
		sList = adSpotDao.spotDetailInfo(s_code);
		//sList라는 깡통에 adSpotDao클래스에 있는 spotDetailInfo라는 인터페이스 사용
		
		mv = new ModelAndView();
		//mv라는 깡통 ModelAndView로 형태로 초기화 	
		mv.addObject("sList", sList);
		//mv에 있는 addObject라는 객체안에 sList라는 데이터를 넣는당.
		//addObject("변수명", 파라미터)
		mv.setViewName("spot/spotDetail");
		//﻿setViewName을 통해 spot폴더에 있는 spotDetail.jsp에 저장
		
		return mv; 
		//위에 mv에 담았던 모든 값을 출력 
		
	}//class안 getSpotDetailInfo(String s_code)메서드 정의 
	

}//SpotDetailInfoService class end 