package com.project.todaygym.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dto.MemberDto;

@Service
public class AdCheckIdService {
	private ModelAndView mv;
	private MemberDto mDto;

	public ModelAndView getAdCheckId(HttpServletRequest req) {

		HttpSession session = req.getSession();
		System.out.println("session : " + session);
		
		mDto = (MemberDto) session.getAttribute("mb");
		System.out.println("mDto : " + mDto);
	
		mv = new ModelAndView();
		
		if(mDto != null) {
			int m_level = mDto.getM_level();
			
			if(m_level == 1) {
				mv.addObject("m_level", m_level);
				mv.setViewName("admin/adMain");
			} else {
				mv.setViewName("home");
			}
		} else {
			mv.setViewName("home");
		}
		return mv;
	}
}
