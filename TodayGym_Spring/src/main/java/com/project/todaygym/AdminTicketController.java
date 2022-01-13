package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.service.AdTicketListService;

@Controller
public class AdminTicketController {

	private static final Logger logger = 
			LoggerFactory.getLogger(AdminTicketController.class);

	private ModelAndView mv;
	
	@Autowired
	private AdTicketListService adTServ;

	//회원권 관리 이동 및 리스트 출력
	@GetMapping("adTicketMove.ad")
	public ModelAndView adTicketList() {
		logger.info("adTicketList()");

		mv = adTServ.getAdTicketList();

		return mv;
	}
}
