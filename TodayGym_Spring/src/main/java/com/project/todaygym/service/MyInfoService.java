package com.project.todaygym.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

@Service
public class MyInfoService {
	
	/*
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private TicketDao tDao;
	*/
	
	@Autowired
	private HttpSession session;
	
	private ModelAndView mv;
	
	//__________ 회원정보 메인 페이지
	public ModelAndView getMyInfo() {
		
		mv = new ModelAndView();
		
		String id = (String)session.getAttribute("id");
		
		/*
		MemberDto myInfo = mDao.myInfoSelect(id);
		List<TicketDto> myClassList = tDao.myClassSelect(id);
		
		mv.addObject("myInfo", myInfo);
		mv.addObject("myClassList", myClassList);
		*/
		
		mv.setViewName("member/memberInfo");
		
		return mv;
	} // getMyInfo end

	//__________ 회원정보 수정 페이지
	public ModelAndView getMyInfoUpdate() {
		
		mv = new ModelAndView();
		
		String id = (String)session.getAttribute("id");
		
		/*
		MemberDto myInfo = mDao.myInfoSelect(id);
		
		mv.addObject("myInfo", myInfo);		
		*/
		
		mv.setViewName("member/memberUpdate");
		
		return mv;
	} // getMyInfoUpdate end
	
	//__________ 회원정보 수정 싫행
	@Transactional
	public String myInfoUpdate() {
		
		String view = null;
		String alert = null;
		String id = (String)session.getAttribute("id");
		String name = (String)session.getAttribute("name");
		String birth = (String)session.getAttribute("birth");
		String joindate = (String)session.getAttribute("joindate");
		String point = (String)session.getAttribute("point");
		
		/*
		
		myUpdate.setM_id(id);
		myUpdate.setM_name(name);
		myUpdate.setM_birth(birth);
		myUpdate.setM_joindate(joindate);
		myUpdate.setM_point(point);
		
		try {
			mDao.myInfoUpdate(myUpdate);
			
			view = "member/memberInfo";
			alert = "회원정보 수정 성공";
			
		} catch (Exception e) {
			view = "member/memberUpdate";
			alert = "회원정보 수정 실패";
		}
		
		rttr.addFlashAttribute("alert", alert);
		
		*/
		
		return view;
	} // myInfoUpdate end
	
	//__________ 수강내역 페이지
	public ModelAndView getMyClass() {
		
		mv = new ModelAndView();
		
		String id = (String)session.getAttribute("id");
		
		/*
		List<TicketDto> myClassList = tDao.myClassSelect(id);
		
		mv.addObject("myClassList", myClassList);
		*/
		
		mv.setViewName("member/memberClass");
		
		return mv;
	} // getMyClass end
	
} // class end
