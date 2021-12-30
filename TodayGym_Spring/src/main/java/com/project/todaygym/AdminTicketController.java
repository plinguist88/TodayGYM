package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.service.AdTicketListService;

@Controller
public class AdminTicketController {

	private final Logger Logger = 
			LoggerFactory.getLogger(AdminTicketController.class);
	
	@Autowired
	private AdTicketListService adTServ;
	
	private ModelAndView mv;
	
	//회원권 관리로 이동
	@GetMapping("adTicketMove.ad")
	public String adTicketMove() {
		Logger.info("adTicketMove()");
		
		return "admin/adTicketList";
	}
	//회원권 상세 페이지 이동
	@GetMapping("adTicketDetailMove.ad")
	public String adTicketDetailMove() {
		Logger.info("adTicketDetailMove()");
		
		return "admin/adTicketDetail";
	}
	//회원권 상세 페이지 이동
//	@GetMapping("adTicketDetailMove.ad")
//	public ModelAndView adTicketDetailMove2(int t_no) {
//		Logger.info("adTicketDetailMove()");
//		
//		mv = adTServ.getTicketDetail(t_no);
//		
//		return mv;
//	}
}
