package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.service.MemberService;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService mServ;
	
	
	//로그인 페이지로 이동
	@GetMapping("/memberLogin")
	public String memberLogin() {
		logger.info("memberLogin()");
		return "member/memberLogin";
	}
	
	//회원가입 페이지로 이동
	@GetMapping("/memberJoin")
	public String memberJoin() {
		logger.info("memberJoin()");
		return "member/memberJoin";
	}
	
	@GetMapping(value = "idCheck",
			produces = "application/text; charset=utf-8")
	@ResponseBody
	public String idCheck(String mid) {
		logger.info("idCheck() - mid : " + mid);
		
		//이후 해당 아이디로 DB를 검색하는 서비스와 Dao를 활용.
		String res = mServ.idCheck(mid);
		
		return res;
	}
	
	@PostMapping("memInsert")
	public String memberInsert(MemberDto member,
			RedirectAttributes rttr) {
		logger.info("memberInsert()");
		
		String view = mServ.memberInsert(member, rttr);
		
		return view;
	}
	
	@PostMapping("loginProc")
	public String loginProc(MemberDto member, 
			RedirectAttributes rttr) {
		logger.info("loginProc()");
		
		String view = mServ.loginProc(member, rttr);
		
		return view;
	}
	
	@GetMapping("logout")
	public String logout() {
		logger.info("logout()");
		
		String view = mServ.logout();
		
		return view;
	}
} // class end
