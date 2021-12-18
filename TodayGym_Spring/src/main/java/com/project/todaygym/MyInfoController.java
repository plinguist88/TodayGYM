package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.service.MyInfoService;

@Controller
public class MyInfoController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private MyInfoService myServ;

	private ModelAndView mv;

	//__________ 회원정보 메인 페이지
	@GetMapping("myInfo")
	public ModelAndView myInfoMove() {
		logger.info("myInfoMove()");

		mv = myServ.getMyInfo();

		return mv;
	} // myInfoMove end

	//__________ 회원정보 수정 페이지
	@GetMapping("myInfoUpdate")
	public ModelAndView myInfoUpdateMove() {
		logger.info("myInfoUpdateMove()");

		mv = myServ.getMyInfoUpdate();

		return mv;
	} // myAccountMove end
	
	//__________ 회원정보 수정 실행
	@PostMapping("myInfoUpdatePorc")
	public String myInfoUpdateProc() {
		logger.info("myInfoUpdateProc");
		
		String view = myServ.myInfoUpdate();
		
		return view;
	} // myInfoUpdateProc end
	
	//__________ 수강내역 페이지
	@GetMapping("myClass")
	public ModelAndView myClassMove() {
		logger.info("myClassMove()");

		mv = myServ.getMyClass();

		return mv;
	} // myClassMove end

} // class end
