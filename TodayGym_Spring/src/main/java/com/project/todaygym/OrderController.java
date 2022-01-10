package com.project.todaygym;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	//__________ 장바구니 결제 페이지
	@GetMapping("cartOrder")
	public ModelAndView cartOrderMove(@RequestParam List<Integer> chk) {
		logger.info("cartOrderMove()");
		
		mv = orderServ.cartOrder(chk);

		return mv;
	} // cartOrderMove end
	
	//__________ 장바구니 결제 실행
	@GetMapping("cartPay")
	public String cartPayProc(String m_id, RedirectAttributes rttr) {
		logger.info("cartPayProc()");
		
		String view = orderServ.cartPayProc(m_id, rttr);

		return view;
	} // cartPayProc end
	
	//__________ 구매하기 결제 페이지
	@GetMapping("directOrder")
	public ModelAndView directOrderMove(String product, String option) {
		logger.info("directOrderMove()");
		
		mv = orderServ.directOrder(product, option);
		
		return mv;
	} // directOrderMove end
	
	//__________ 구매하기 결제 실행
	@GetMapping("directPay")
	public String directPayProc(RedirectAttributes rttr) {
		logger.info("directPayProc()");
		
		String view = orderServ.directPayProc(rttr);
		
		return view;
	} // directPayProc end
	
	//__________ 결제성공
	@GetMapping("orderComplete")
	public String orderCompleteMove() {
		logger.info("orderCompleteMove()");
		
		return "order/orderComplete";
	} // orderCompleteMove end
	
} // class end
