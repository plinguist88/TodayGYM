package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class WelcomeController {
	
	private static final Logger Logger = LoggerFactory.getLogger(WelcomeController.class);	
	@GetMapping("home")
	public String home() {
		Logger.info("home()");
		
		return "home";
	}
	
}