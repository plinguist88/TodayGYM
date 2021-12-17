package com.project.todaygym;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.todaygym.dto.AdTicketDTO;
import com.project.todaygym.service.AdTicketListService;

@Controller
public class AdminTicketController {
	/*
	@Autowired
	private List<AdTicketDTO> adTicketDTO;
	*/
	private final Logger logger = LoggerFactory.getLogger(AdminTicketController.class);
	
	@GetMapping("/adTicketMove.ad")
	public String adTicketMove(Model model) {
		logger.info("adTicketMove()");
		
		String path = adTicketList();
		
		return path;
	}
	
	public String adTicketList() {
		
		//adTicketDTO = AdTicketListService.getAdTicketList();
		
		return "admin/adTicketList";
	}
}
