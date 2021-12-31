package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.service.OrderService;

@Controller
public class OrderController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private OrderService orderServ;

	private ModelAndView mv;
	
	//________________________________________ 결제하기
	
	//__________ 결제 페이지
	@GetMapping("myOrder")
	public ModelAndView myOrderMove(String m_id) {
		logger.info("myOrderMove()");
		
		mv = orderServ.getMyOrder(m_id);
		
		return mv;
	} // getMyOrder end
	
	//__________ 결제실행
	@GetMapping("payProc")
	public String payProc(String m_id, RedirectAttributes rttr) {
		logger.info("payProc");
		
		String view = orderServ.payProc(m_id, rttr);

		return view;
	} // payProc end
	
} // class end
