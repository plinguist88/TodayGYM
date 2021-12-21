package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import oracle.jdbc.proxy.annotation.GetProxy;

@Controller
public class buyController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// 헬스구매상세페이지 이동
	@GetMapping("bHealthDetail")
	public String bHealthDetail() {
		logger.info("bHealthDetail()");
		return "buy/bHealthDetail";
	}
	// 헬스구매상세페이지2 이동
	@GetMapping("bHealthDetail2")
	public String bHealthDetail2() {
		logger.info("bHealthDetail2()");
		return "buy/bHealthDetail2";
	}
	// 헬스구매상세페이지3 이동
	@GetMapping("bHealthDetail3")
	public String bHealthDetail3() {
		logger.info("bHealthDetail3()");
		return "buy/bHealthDetail3";
	}
	// 헬스구매상세페이지4 이동
	@GetMapping("bHealthDetail4")
	public String bHealthDetail4() {
		logger.info("bHealthDetail4()");
		return "buy/bHealthDetail4";
	}
	// 수영구매상세페이지 이동
	@GetMapping("bSwimDetail")
	public String bSwimDetail() {
		logger.info("bSwimDetail()");
		return "buy/bSwimDetail";
	}
	// 수영구매상세페이지2 이동
	@GetMapping("bSwimDetail2")
	public String bSwimDetail2() {
		logger.info("bSwimDetail2()");
		return "buy/bSwimDetail2";
	}
	// 수영구매상세페이지3 이동
	@GetMapping("bSwimDetail3")
	public String bSwimDetail3() {
		logger.info("bSwimDetail3()");
		return "buy/bSwimDetail3";
	}
	// 수영구매상세페이지4 이동
	@GetMapping("bSwimDetail4")
	public String bSwimDetail4() {
		logger.info("bSwimDetail4()");
		return "buy/bSwimDetail4";
	}
	// 클라이밍구매상세페이지 이동
	@GetMapping("bClimbDetail")
	public String bClimbDetail() {
		logger.info("bClimbDetail()");
		return "buy/bClimbDetail";
	}
	// 클라이밍구매상세페이지2 이동
	@GetMapping("bClimbDetail2")
	public String bClimbDetail2() {
		logger.info("bClimbDetail2()");
		return "buy/bClimbDetail2";
	}
	// 클라이밍구매상세페이지3 이동
	@GetMapping("bClimbDetail3")
	public String bClimbDetail3() {
		logger.info("bClimbDetail3()");
		return "buy/bClimbDetail3";
	}
	// 클라이밍구매상세페이지4 이동
	@GetMapping("bClimbDetail4")
	public String bClimbDetail4() {
		logger.info("bClimbDetail4()");
		return "buy/bClimbDetail4";
	}
	// 크로스핏구매상세페이지 이동
	@GetMapping("bCrossDetail")
	public String bCrossDetail() {
		logger.info("bCrossDetail()");
		return "buy/bCrossDetail";
	}
	// 크로스핏구매상세페이지2 이동
	@GetMapping("bCrossDetail2")
	public String bCrossDetail2() {
		logger.info("bCrossDetail2()");
		return "buy/bCrossDetail2";
	}
	// 크로스핏구매상세페이지3 이동
	@GetMapping("bCrossDetail3")
	public String bCrossDetail3() {
		logger.info("bCrossDetail3()");
		return "buy/bCrossDetail3";
	}
	// 크로스핏구매상세페이지4 이동
	@GetMapping("bCrossDetail4")
	public String bCrossDetail4() {
		logger.info("bCrossDetail4()");
		return "buy/bCrossDetail4";
	}
	//장바구니페이지 이동
	@GetMapping("cartHome")
		public String cartHome() {
			logger.info("cartHome()");
			return "cart/cartHome";
	}
	
	
	
	
	
	
	
	
}
