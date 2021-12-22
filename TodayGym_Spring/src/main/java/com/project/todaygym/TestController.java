package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {

	private final Logger Logger = LoggerFactory.getLogger(TestController.class);
	
	//지점 관리로 이동
	@GetMapping("test01")
	public String test01() {
		Logger.info("test01()");
		
		return "test01_home";
	}
	
	@GetMapping("test02")
	public String test02() {
		Logger.info("test02()");
		
		return "layout/test02_header";
	}
	
	@GetMapping("test03")
	public String test03() {
		Logger.info("test03()");
		
		return "layout/test03_footer";
	}
}
