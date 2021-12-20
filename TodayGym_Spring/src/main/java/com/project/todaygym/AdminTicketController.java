package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.todaygym.service.AdTicketListService;

@Controller
public class AdminTicketController {

	private final Logger logger = LoggerFactory.getLogger(AdminTicketController.class);
	
	Model model;
	
	@GetMapping("/adTicketMove.ad")
	public void adTicketMove() {
		logger.info("adTicketMove()");
		
		adTicketList(model);
	}
	
	public String adTicketList(Model model) {
		
		AdTicketListService adTicketListService = new AdTicketListService();
		
		adTicketListService.getTicketList(model);
		
		return "admin/adTicketList";
	}
}
