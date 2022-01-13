package com.project.todaygym.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dao.MemberDao;
import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.dto.MemberFormDto;

@Service
public class MemberService {

	@Autowired
	private MemberDao mDao;
	@Autowired
	private HttpSession session;

	ModelAndView mv;

	public String idCheck(String id) {
		String res = null;

		//아이디를 검색하여 중복 아이디가 있으면 1,
		//없으면 0이 넘어옴.
		int cnt = mDao.idCheck(id);
		if(cnt == 0) {
			res = "ok";
		}
		else {
			res = "fail";
		}

		return res;
	}

	//회원 가입용 서비스 메소드(insert -> 트랜잭션 처리)
	//가입 성공시 첫페이지로 이동. 실패 시 회원가입페이지로 이동.
	//성공 시 가입성공 메시지, 실패 시 가입 실패 메시지 전달.
	@Transactional
	public String memberInsert(MemberFormDto memberForm, 
			RedirectAttributes rttr) {
		String view = null;
		String msg = null;

		String m_id = memberForm.getM_id();
		String m_pw = memberForm.getM_pw(); 
		String m_name = memberForm.getM_name();
		String m_email = memberForm.getM_email();
		String m_phone1 = memberForm.getM_phone1();
		String m_phone2 = memberForm.getM_phone2();
		String m_phone3 = memberForm.getM_phone3();
		String m_birth = memberForm.getM_birth();
		
		MemberDto member = new MemberDto();
		
		member.setM_id(m_id);
		member.setM_pw(m_pw);
		member.setM_name(m_name);
		member.setM_email(m_email);
		member.setM_phone(m_phone1 + m_phone2 + m_phone3);
		member.setM_birth(m_birth);
		
		//비밀번호 암호화 처리
		//Spring Security에서 제공하는 암호화 인코더 사용
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		//Dto에서 비밀번호를 꺼내서 인코더를 사용하여 비밀번호 암호화
		String encPwd = pwdEncoder.encode(member.getM_pw());
		//암호화된 비밀번호를 다시 Dto에 저장
		member.setM_pw(encPwd);

		try {
			mDao.memberInsert(member);			
			view = "redirect:home";
			msg = "가입 성공";
		} catch (Exception e) {
			//e.printStackTrace();
			view = "redirect:memberJoin";
			msg = "가입 실패";
		}

		rttr.addFlashAttribute("msg", msg);

		return view;
	}

	//로그인 프로세스 변수선언
	public String loginProc(MemberDto member, 
			RedirectAttributes rttr) {
		String view = null;
		String msg = null;

		//로그인 한 아이디가 회원 아이디인지와 비밀번호를 가져오는 작업
		String encPwd = mDao.pwdSelect(member.getM_id());

		if(encPwd != null) {
			//비밀번호 암호화 인코더 생성
			BCryptPasswordEncoder enc = new BCryptPasswordEncoder();
			//matches(평문, 암호문) : 같으면 true, 틀리면 false.
			if(enc.matches(member.getM_pw(), encPwd)) {
				//로그인 성공. -> 세션에 로그인 정보를 저장.
				//회원 정보 가져와서 세션에 저장. member 재활용.
				member = mDao.memberSelect(member.getM_id());

				session.setAttribute("mb", member);

				//로그인 다음 페이지로 이동 : 게시글 목록 페이지.
				//게시판 목록 화면용 url - list
				view = "redirect:home";
				msg = "환영합니다.";
			}
			else {
				//비밀번호 오류.
				view = "redirect:memberLogin";
				msg = "비밀번호 틀림";
			}
		}
		else {
			view = "redirect:memberLogin";
			msg = "아이디 없음";
		}

		rttr.addFlashAttribute("msg", msg);

		return view;
	}

	public String logout() {
		String view = "redirect:/";

		session.invalidate();//세션에 저장한 로그인 정보 삭제

		return view;
	}

}
