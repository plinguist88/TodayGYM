package com.project.todaygym.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdSpotDao;
import com.project.todaygym.dto.SpotDto;
import com.project.todaygym.dto.SpotFormDto;

@Service
public class AdSpotRegService {

	private ModelAndView mv;
	private SpotDto spotDto;
	
	@Autowired
	private AdSpotDao adSpotDao;
	
	public ModelAndView getAdSpotRegService(SpotFormDto spotFormDto) {
		
		mv = new ModelAndView();
		
		String s_code = spotFormDto.getS_code();
		String s_name = spotFormDto.getS_name();
		String s_phone = spotFormDto.getS_phone();
		String s_addr1 = spotFormDto.getS_addr1();
		String s_addr2 = spotFormDto.getS_addr2();
		String s_content = spotFormDto.getS_content();
		
		spotDto = new SpotDto();
		
		spotDto.setS_code(s_code);
		spotDto.setS_name(s_name);
		spotDto.setS_phone(s_phone);
		spotDto.setS_addr(s_addr1 + ", " + s_addr2);
		spotDto.setS_content(s_content);
		
		int result = adSpotDao.spotInsert(spotDto);
		
		if(result > 0) {
			System.out.println("지점 등록 성공");
			mv.setViewName("redirect:/adSpotMove.ad");
		} else {
			System.out.println("지점 등록 실패");
			mv.setViewName("admin/adSpotRegForm");
		}
		return mv;
	}
}
