package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;




@Controller
public class ReviewsController {	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@GetMapping("reviewsWrite")
	public String reviewsWrite() {
		logger.info("reviewsWrite()");
		return "reviews/reviewsWrite";
	}
}