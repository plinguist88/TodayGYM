package com.project.todaygym.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class AccountService {
	
	/*
	@Autowired
	MemberDao mDao;
	
	@Autowired
	ClassDao cDao;
	*/
	
	@Autowired
	private HttpSession session;
	
	private ModelAndView mv;
	
	//__________ 회원정보 메인 페이지
	public ModelAndView getMyInfo() {
		
		mv = new ModelAndView();
		
		String id = (String)session.getAttribute("id");
		
		//MemberDto myInfo = mDao.myInfoSelect(id);
		//List<ClassDto> myClass = cDao.myClassSelect(id);
		
		//mv.addObject("myInfo", myInfo);
		//mv.addObject("myClass", myClass);
		mv.setViewName("member/memberInfo");
		
		return mv;
	} // getAccountAndClass end

	//__________ 회원정보 상세 페이지
	public ModelAndView getMyAccount() {
		
		mv = new ModelAndView();
		
		String id = (String)session.getAttribute("id");
		
		//MemberDto myAccount = mDao.myAccountSelect(id);
		
		//mv.addObject("myAccount", myAccount);		
		mv.setViewName("member/memberAccount");
		
		return mv;
	} // getMyAccount end
	
	//__________ 수강내역 페이지
	public ModelAndView getMyClass() {
		
		mv = new ModelAndView();
		
		String id = (String)session.getAttribute("id");
		
		//List<ClassDto> myClass = cDao.myClassSelect(id);
		
		//mv.addObject("myClass", myClass);
		mv.setViewName("member/memberClass");
		
		return mv;
	} // getMyClass end
	

} // class end
