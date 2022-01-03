package com.project.todaygym.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.MemberDao;

@Service
public class SearchService {
	
	private ModelAndView mv;
	
	@Autowired
	private MemberDao mDao;
	
	public ModelAndView getSearchId(String m_email) {
		
		System.out.println(m_email);
		
		String searchId = new String();
		
		System.out.println("memberDao 전" + searchId);
		
		searchId = mDao.emailSearchSelect(m_email);

		System.out.println("memberDao 후" +searchId);
	
		mv = new ModelAndView();
		
		mv.addObject("searchId", searchId);
		mv.setViewName("member/memberSearchId");
		
		return mv;
	}
}
