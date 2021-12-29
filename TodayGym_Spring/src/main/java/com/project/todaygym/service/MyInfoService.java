package com.project.todaygym.service;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dao.MemberDao;
import com.project.todaygym.dao.MyInfoDao;
import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.dto.MyClassDto;
import com.project.todaygym.util.MyClassPagingUtil;

import lombok.extern.java.Log;

@Service
public class MyInfoService {


	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private MyInfoDao myDao;

	@Autowired
	private HttpSession session;
	
	private int listCnt = 2;

	private ModelAndView mv;
	
	//________________________________________ 회원정보

	//__________ 회원정보 페이지
	public ModelAndView getMyInfo() {
		
		// 변수 선언 및 초기화
		mv = new ModelAndView();
		
		MemberDto getMember = (MemberDto)session.getAttribute("mb");			
		String getLoginId = getMember.getM_id();
		session.setAttribute("id", getLoginId);
		
		// Database 연동 구역
		String getId = (String)session.getAttribute("id");
		MemberDto getMyInfo = mDao.memberSelect(getId);
		
		// JSP 페이지 데이터 전송
		mv.addObject("myInfo", getMyInfo);
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
		Timestamp getJoin = (Timestamp)session.getAttribute("join");
		String getPoint = (String)session.getAttribute("point");
		
		myInfo.setM_id(getId);
		myInfo.setM_joindate(getJoin);
		myInfo.setM_point(getPoint);
		
		// JSP 페이지 데이터 전송
		try {
			mDao.myInfoUpdate(myInfo);
			view = "redirect:myInfo";
			alert = "회원정보를 업데이트 했습니다!";

		} catch (Exception e) {
			//e.printStackTrace();
			view = "redirect:myInfo";
			alert = "회원정보 업데이트를 실패 했습니다.! 관리자에게 문의하세요";
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
		
		// JSP 페이지 데이터 전송
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
	public String myPwdUpdate(MemberDto myInfo, RedirectAttributes rttr) {
		
		// 변수 선언 및 초기화
		String view = null;
		String alert = null;
		BCryptPasswordEncoder pwdUpdateEnc = new BCryptPasswordEncoder();
		
		// Database 연동 구역
		String getId = (String)session.getAttribute("id");
		String getPwdEnc = pwdUpdateEnc.encode(myInfo.getM_pw());
		
		myInfo.setM_id(getId);
		myInfo.setM_pw(getPwdEnc);
		
		// JSP 페이지 데이터 전송
		try {
			
			mDao.myPwdUpdate(myInfo);
			view = "redirect:myInfo";
			alert = "비밀번호를 변경 했습니다.";
			
		} catch (Exception e) {
			e.printStackTrace();
			view = "redirect:myPassword";
			alert = "비밀번호 변경을 실패 했습니다.! 관리자에게 문의하세요";
			
		}
		
		rttr.addFlashAttribute("alert", alert);
		
		return view;
	} // myPwdUpdate end
	

	//________________________________________ 수강내역

	//__________ 수강내역 페이지
	public ModelAndView getMyClass(Integer pageNum) {
		
		// 변수 선언 및 초기화
		mv = new ModelAndView();
		
		/*
		int num = (pageNum == null) ? 1 : pageNum;
		
		// Database 연동 구역
		Map<String, Integer> myClassPageMap = new HashMap<String, Integer>();
		myClassPageMap.put("num", num);
		myClassPageMap.put("listCnt", listCnt);
		
		List<MyClassDto> myClassList = myDao.myClassListSelect(myClassPageMap);
		
		String myClassPageHtml = getMyClassPaging(num);
		
		// JSP 페이지 데이터 전송
		mv.addObject("myClass", myClassList);		
		mv.addObject("myClassPage", myClassPageHtml);
		*/
		
		mv.setViewName("myinfo/myClass");
				
		return mv;
	} // getMyClass end
	
	//__________ 수강내역 페이징 처리
	public String getMyClassPaging(int pageNum) {
		
		// 변수 선언 및 초기화
		String myClassPageHtml = null;
		int myClassMaxNum = myDao.myClassMaxSelect();
		int pageCnt = 2;
		String urlName = "myClass";
		
		// MyClassPagingUtil 연동 구역
		MyClassPagingUtil myClassPaging = new MyClassPagingUtil(myClassMaxNum, pageNum, listCnt, pageCnt, urlName);
		myClassPageHtml = myClassPaging.makeMyClassPaging();
		
		return myClassPageHtml;
	} // getMyClassPaging end
	
	//________________________________________ 회원탈퇴

	//__________ 회원탈퇴 페이지
	public ModelAndView getMyResign() {
		
		// 변수 선언 및 초기화
		mv = new ModelAndView();
		String getId = (String)session.getAttribute("id");
		
		// Database 연동 구역
		MemberDto getMyInfo = mDao.memberSelect(getId);
		
		// JSP 페이지 데이터 전송
		mv.addObject("myInfo", getMyInfo);
		mv.setViewName("myinfo/myResign");

		return mv;
	} // getMyInfo end
	
	//__________ 회원탈퇴 실행
	
	@Transactional
	public String myAccountResign(MemberDto myResign, RedirectAttributes rttr) {
		
		// 변수 선언 및 초기화
		String view = null;
		String alert = null;
		
		// Database 연동 구역
		String getId = (String)session.getAttribute("id");
		
		// JSP 페이지 데이터 전송
		try {
			mDao.myAccountDelete(getId);
			session.invalidate();
			
			view = "redirect:/";
			alert ="회원탈퇴를 했습니다. 이용해 주셔서 감사합니다.";
			
		} catch (Exception e) {
			//e.printStackTrace();
			view = "redirect:myResign";
			alert ="회원탈퇴에 실패 했습니다. 관리자에게 문의하세요.!";
			
		}

		rttr.addFlashAttribute("alert", alert);
		
		return view;
	} // myAccountResign end

} // class end
