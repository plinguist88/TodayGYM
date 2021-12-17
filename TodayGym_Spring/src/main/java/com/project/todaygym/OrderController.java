package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.service.OrderService;

@Controller
public class OrderController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private OrderService oServ;

	private ModelAndView mv;

	//__________ 결제 페이지
	@GetMapping("myOrder")
	public ModelAndView myOrderMove() {
		logger.info("myOrderMove()");
		
		mv = oServ.getOrderAndInfo();
		
		return mv;
	} // myOrderMove end

} // class end
