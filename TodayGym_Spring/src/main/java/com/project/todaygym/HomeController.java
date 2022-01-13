package com.project.todaygym;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.service.AdCheckIdService;
import com.project.todaygym.service.AdMainService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private ModelAndView mv;
	
	@Autowired
	private AdCheckIdService adCheckIdService;
	
	@Autowired
	private AdMainService adMainServ;
	
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
		
		//아이디 관리자 권한 확인
		mv = adCheckIdService.getAdCheckId(req);
		
		//관리자 확인 후 관리자 오버뷰 이동
		if(mv.getViewName().equals("admin/adMain")) {
			mv = adMainServ.getOverview(mv);
		}
		
		return mv;
	}
	// about 페이지로 이동
	@GetMapping("about")
	public String about() {
		logger.info("about()");
		return "about";
	}
} // class end
