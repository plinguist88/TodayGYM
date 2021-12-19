package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
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
} // class end
