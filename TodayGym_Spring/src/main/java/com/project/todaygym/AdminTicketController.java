package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.service.AdTicketListService;

@Controller
public class AdminTicketController {

	private final Logger logger = LoggerFactory.getLogger(AdminTicketController.class);
	
	@PostMapping("/adTicketMove.ad")
	public String adTicketMove() {
		logger.info("adTicketMove()");

		return "admin/adTicketList";
	}
	
	public ModelAndView adTicketList() {
		
		AdTicketListService adTicketListService = new AdTicketListService();
		return null;

	}
}
