package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminTicketController {

	private final Logger logger = LoggerFactory.getLogger(AdminTicketController.class);
	
	//회원권 관리로 이동
	@GetMapping("adTicketMove.ad")
	public String adTicketMove() {
		logger.info("adTicketMove()");
		
		return "admin/adTicketList";
	}
	
	@GetMapping("adTicketDetailMove.ad")
	public String adTicketDetailMove() {
		logger.info("adTicketDetailMove()");
		
		return "admin/adTicketDetail";
	}
}
