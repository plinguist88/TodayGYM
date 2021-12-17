package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.service.AccountService;

@Controller
public class AccountController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private AccountService aServ;

	private ModelAndView mv;

	//__________ 회원정보 메인 페이지
	@GetMapping("myInfo")
	public ModelAndView myInfoMove() {
		logger.info("myInfoMove()");

		mv = aServ.getMyInfo();

		return mv;
	} // myInfoMove end

	//__________ 회원정보 상세 페이지
	@GetMapping("myAccount")
	public ModelAndView myAccountMove() {
		logger.info("myAccountMove()");

		mv = aServ.getMyAccount();

		return mv;
	} // myAccountMove end

	//__________ 수강내역 페이지
	@GetMapping("myClass")
	public ModelAndView myClassMove() {
		logger.info("myClassMove()");

		mv = aServ.getMyClass();

		return mv;
	} // myClassMove end


} // class end
