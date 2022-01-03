package com.project.todaygym.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.MemberDao;

@Service
public class SearchPwService {
	
	private ModelAndView mv;
	
	@Autowired
	private MemberDao mDao;
	
	public ModelAndView getSearchPw(String m_name, String m_email) {
		
		String searchPw = new String();
		
		searchPw = mDao.nameSearchSelect(m_name);
		searchPw = mDao.emailSearchSelect(m_email);
		
		mv = new ModelAndView();
		
		mv.addObject("searchPw", searchPw);
		mv.setViewName("member/memberSearchPw");
		
		return mv;
	}
}
