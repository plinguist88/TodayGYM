package com.project.todaygym.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dao.OrderDao;
import com.project.todaygym.dao.TicketDao;
import com.project.todaygym.dto.CartDto;
import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.dto.MyCartDto;
import com.project.todaygym.dto.OrderDto;
import com.project.todaygym.dto.TicketDto;

@Service
public class OrderService {

	@Autowired
	private OrderDao oDao;

	@Autowired
	private TicketDao tDao;

	@Autowired
	private HttpSession session;

	private ModelAndView mv;

	//________________________________________ 결제하기

	//__________ 장바구니 결제 페이지
	public ModelAndView cartOrder(List<Integer> c_code) {
		
		// 변수 선언 및 초기화
		mv = new ModelAndView();
		MemberDto myInfo = (MemberDto)session.getAttribute("mb");
		String getMid = myInfo.getM_id();
		
		int i = 0;
		int getListSize = c_code.size();
		int getCcode = 0;
		
		OrderDto order = new OrderDto();
		
		// Database 연동 구역
		oDao.orderListDelete(getMid);
		
		for(i = 0; i < getListSize; i++) {
			
			getCcode = c_code.get(i);
			order.setM_id(getMid);
			order.setC_code(getCcode);
			
			oDao.orderListInsert(order);
		}
		
		List<MyCartDto> myOrder = oDao.orderListSelect(getMid);
		
		// JSP 페이지 데이터 전송
		mv.addObject("myOrder", myOrder);
		mv.addObject("myInfo", myInfo);
		mv.setViewName("order/orderCart");
		
		return mv;
	} // cartOrder end
	
	//__________ 장바구니 결제 실행
	public String cartPayProc(String m_id, RedirectAttributes rttr) {
		
		// 변수 선언 및 초기화
		String view = null;
		String alert = null;
		
		int i = 0;
		int getTotalOrder = oDao.totalOrderSelect(m_id);
		int getCcode = 0;
		
		CartDto cart = new CartDto();
		TicketDto ticket = new TicketDto();
		
		// Database 연동 구역
		// JSP 페이지 데이터 전송
		try {
			
			for(i = 0; i < getTotalOrder; i++) {
				getCcode = oDao.cartCodeSelect(m_id);
				
				cart = oDao.cartListSelect(getCcode);
				
				ticket.setM_id(m_id);
				ticket.setP_code(cart.getP_code());
				ticket.setO_code(cart.getOp_code());
				
				tDao.ticketInsert(ticket);
				oDao.orderDelete(getCcode);
				oDao.cartListDelete(getCcode);
			}
			
			view = "redirect:orderComplete";
			alert = "결제완료! 회원권을 발급했습니다. 감사합니다.!";
		} catch (Exception e) {
			// e.printStackTrace();
			view = "redirect:directOrder";
			alert = "결제에 실패했습니다. 관리자에게 문의하세요.";
		}

		rttr.addFlashAttribute("alert", alert);

		return view;
		
	} // cartPayProc end
	
	//__________ 구매하기 결제 페이지
	public ModelAndView directOrder(String p_code, String o_code) {

		// 변수 선언 및 초기화
		mv = new ModelAndView();

		MemberDto myInfo = (MemberDto)session.getAttribute("mb");			
		String getMid = myInfo.getM_id();
		session.setAttribute("id", getMid);
		session.setAttribute("p_code", p_code);
		session.setAttribute("o_code", o_code);

		Map<String, String> dMap = new HashMap<String, String>();
		dMap.put("p_code", p_code);
		dMap.put("o_code", o_code);

		// Database 연동 구역
		MyCartDto myOrder = oDao.directOrderSelect(dMap);

		// JSP 페이지 데이터 전송
		mv.addObject("myOrder", myOrder);
		mv.addObject("myInfo", myInfo);
		mv.setViewName("order/orderDirect");

		return mv;
	} // directOrder end

	//__________ 구매히기 결제 실행
	public String directPayProc(RedirectAttributes rttr) {

		// 변수 선언 및 초기화
		String view = null;
		String alert = null;
		String getId = (String)session.getAttribute("id");
		String getPcode = (String)session.getAttribute("p_code");
		String getOcode = (String)session.getAttribute("o_code");

		TicketDto ticket = new TicketDto();

		ticket.setM_id(getId);
		ticket.setP_code(getPcode);
		ticket.setO_code(getOcode);

		// Database 연동 구역
		// JSP 페이지 데이터 전송
		try {

			tDao.ticketInsert(ticket);

			view = "redirect:orderComplete";
			alert = "결제완료! 회원권을 발급했습니다. 감사합니다.!";
		} catch (Exception e) {
			// e.printStackTrace();
			view = "redirect:directOrder";
			alert = "결제에 실패했습니다. 관리자에게 문의하세요.";
		}

		rttr.addFlashAttribute("alert", alert);

		return view;
	} // directPayProc end

} // class end
