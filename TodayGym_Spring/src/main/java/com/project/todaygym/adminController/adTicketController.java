package com.project.todaygym.adminController;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

public class adTicketController {
	@Controller
	public class HomeController {
		
		private final Logger logger = LoggerFactory.getLogger(HomeController.class);
		
		@GetMapping("/adTicketMove")
		public String adTicketMove() {
			logger.info("adTicketMove()");
			
			return "adTicketMove";
		}
		
	} // class end
}
