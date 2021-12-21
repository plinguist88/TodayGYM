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
	
	//________________________________________ 회원정보

	//__________ 회원정보 페이지
	public ModelAndView getMyInfo() {
		
		// 변수 선언 및 초기화
		mv = new ModelAndView();
		
		MemberDto getMember = (MemberDto)session.getAttribute("mb");
		String getLoginId = (String)session.getAttribute(getMember.getM_id());
		session.setAttribute("id", getLoginId);
		
		// Database 연동 구역
		String getId = (String)session.getAttribute("id");
		
		MemberDto myInfo = mDao.memberSelect(getId);
		
		// Servlet 저장 구역
		mv.addObject("myInfo", myInfo);
		mv.setViewName("myinfo/myInfo");

		return mv;
	} // getMyInfo end

	//__________ 회원정보 수정 싫행
	@Transactional
	public String myInfoUpdate(MemberDto myInfo, RedirectAttributes rttr) {
		
		// 변수 선언 및 초기화
		String view = null;
		String alert = null;
		
		// Database 연동 구역
		String getId = (String)session.getAttribute("id");
		
		MemberDto getMyInfo = mDao.memberSelect(getId);
		
		session.setAttribute("join", getMyInfo.getM_joindate());
		session.setAttribute("point", getMyInfo.getM_point());
		
		String join = (String)session.getAttribute("join");
		String point = (String)session.getAttribute("point");
		
		myInfo.setM_id(getId);
		myInfo.setM_joindate(join);
		myInfo.setM_point(point);
		
		// Servlet 저장 구역
		try {
			//mDao.myInfoUpdate(myInfo);

			view = "redirect:myInfo";
			alert = "회원정보 수정 성공!";

		} catch (Exception e) {
			//e.printStackTrace();
			view = "redirect:myInfo";
			alert = "회원정보 수정 실패!";
		}

		rttr.addFlashAttribute("alert", alert);

		return view;
	} // myInfoUpdate end

	//________________________________________ 비밀번호 변경
	
	//__________ 현재 비밀번호 확인
	public String prePwdCheck(String prePwd) {
		
		// 변수 선언 및 초기화
		String result = null;
		String getId = (String)session.getAttribute("id");
		BCryptPasswordEncoder pwdEnc = new BCryptPasswordEncoder();
		
		// Database 연동 구역
		String getPrePwd = mDao.pwdSelect(getId);
		
		// Servlet 저장 구역
		if(pwdEnc.matches(prePwd, getPrePwd)) {
			result = "true";
		} // if end
		
		else {
			result = "false";
		} // else end
		
		return result;
	} // prePwdCheck end
	
	//__________ 비밀번호 변경 실행
	@Transactional
	public String myPwdUpdate(MemberDto myPwd, RedirectAttributes rttr) {
		
		// 변수 선언 및 초기화
		String view = null;
		String alert = null;
		BCryptPasswordEncoder pwdUpdateEnc = new BCryptPasswordEncoder();
		
		// Database 연동 구역
		String getId = (String)session.getAttribute("id");
		String getPwdEnc = pwdUpdateEnc.encode(myPwd.getM_pw());
		
		myPwd.setM_pw(getPwdEnc);
		
		// Servlet 저장 구역
		try {
			
			//mDao.myPwdUpdate(getId);
			view = "redirect:myPassword";
			alert = "비밀번호 변경 성공!";
			
		} catch (Exception e) {
			//e.printStackTrace();
			view = "redirect:myPassword";
			alert = "비밀번호 변경 실패!";
			
		}
		
		return view;
	} // myPwdUpdate end
} // class end
