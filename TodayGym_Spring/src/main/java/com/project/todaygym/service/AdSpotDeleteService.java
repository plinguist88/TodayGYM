package com.project.todaygym.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdSpotDao;

@Service
public class AdSpotDeleteService {

	private ModelAndView mv;

	@Autowired
	private AdSpotDao adSpotDao;

	public ModelAndView getAdSpotDelete(String s_code) {
		
		int result = adSpotDao.spotDelete(s_code);
		System.out.println(result);
		
		String msg = null;

		if(result < 0) {
			msg = "삭제 성공!!";
		} else {
			msg = "삭제 실패!!";
		}
		
		mv = new ModelAndView();
		
		System.out.println("Spot Delete : " + msg);
		
		mv.addObject("msg", msg);
		mv.setViewName("admin/adSpotDelete");
		return mv;
	}
}
