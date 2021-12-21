package com.project.todaygym.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dao.MemberDao;
import com.project.todaygym.dto.MemberDto;

@Service
public class MyInfoService {


	@Autowired
	private MemberDao mDao;

	@Autowired
	private HttpSession session;

	private ModelAndView mv;

	//__________ 회원정보 페이지
	public ModelAndView getMyInfo() {

		mv = new ModelAndView();
		/*
		String id = (String)session.getAttribute("id");

		MemberDto myInfo = mDao.memberSelect(id);

		mv.addObject("myInfo", myInfo);
		*/
		mv.setViewName("myinfo/myInfoUpdate");

		return mv;
	} // getMyInfo end

	//__________ 회원정보 수정 싫행
	@Transactional
	public String myInfoUpdate(MemberDto myInfo, RedirectAttributes rttr) {

		String view = null;
		String alert = null;

		String id = (String)session.getAttribute("id");
		
		MemberDto getMyInfo = mDao.memberSelect(id);
		
		session.setAttribute("join", getMyInfo.getM_joindate());
		session.setAttribute("point", getMyInfo.getM_point());
		
		String join = (String)session.getAttribute("join");
		String point = (String)session.getAttribute("point");
		
		/*

		myInfo.setM_id(id);
		myInfo.setM_joindate(join);
		myInfo.setM_point(point);

		try {
			mDao.myInfoUpdate(myInfo);

			view = "redirect:myInfoUpdate"
			alert = "회원정보 수정 성공";

		} catch (Exception e) {
			//e.printStackTrace();
			view = "redirect:myInfoUpdate"
			alert = "회원정보 수정 실패";
		}

		 */

		rttr.addFlashAttribute("alert", alert);

		return view;
	} // myInfoUpdate end

	//__________ 현재 비밀번호 확인
	public String prePwdCheck(String prePwd) {
		
		String result = "true";
		
		/*
		String id = (String)session.getAttribute("id");
		
		String getPrePwd = mDao.pwdSelect(id);
		
		BCryptPasswordEncoder pwdEnc = new BCryptPasswordEncoder();
		
		if(pwdEnc.matches(prePwd, getPrePwd)) {
			result = "true";
		} // if end
		
		else {
			result = "false";
		} // else end
		*/
		
		return result;
	} // prePwdCheck end

} // class end
