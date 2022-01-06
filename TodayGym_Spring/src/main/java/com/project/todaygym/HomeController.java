package com.project.todaygym;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.service.AdCheckIdService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private ModelAndView mv;
	
	@Autowired
	private AdCheckIdService adCheckIdService;
	
	// 시작페이지로 이동
	@GetMapping("/")
	public String welcome() {
		logger.info("welcome()");
		
		return "welcome";
	}
	
	// home으로 이동
	@GetMapping("home")
	public String home() {
		logger.info("home()");
		
		return "home";
	}
	
	// 관리자 메인으로 이동
	@GetMapping("adMainMove.ad")
	public ModelAndView adMainMove(HttpServletRequest req) {
		logger.info("adMainMove()");
		
		mv = new ModelAndView();
		
		mv = adCheckIdService.getAdCheckId(req);
		
		
		return mv;
	}
} // class end
