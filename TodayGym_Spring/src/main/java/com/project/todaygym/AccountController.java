package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AccountController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	//__________ 마이 페이지
	@GetMapping("memberAccount")
	public String mAccountMove() {
		logger.info("mAccountMove()");

		return "member/memberAccount";
	} // cOrderMove end
	
	//__________ 회원정보 페이지
	@GetMapping("memberUpdate")
	public String memberUpdate() {
		logger.info("memberUpdate");
		
		return "member/memberUpdate";
	} // memberUpdate end

} // class end
