package com.project.todaygym.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dao.ProductDao;
import com.project.todaygym.dao.TicketDao;
import com.project.todaygym.dto.CartDto;
import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.dto.MyCartDto;
import com.project.todaygym.dto.TicketDto;

@Service
public class OrderService {
	
	@Autowired
	private ProductDao pDao;
	
	@Autowired
	private TicketDao tDao;
	
	@Autowired
	private HttpSession session;
	
	private ModelAndView mv;
	
	//________________________________________ 결제
	
	//__________ 결제 페이지
	public ModelAndView getMyOrder(String m_id) {
		
		// 변수 선언 및 초기화
		mv = new ModelAndView();
		
		// Database 연동 구역
		List<MyCartDto> myOrder = pDao.getMyCart(m_id);
		MemberDto myInfo = (MemberDto)session.getAttribute("mb");
		
		// JSP 페이지 데이터 전송
		mv.addObject("myOrder", myOrder);
		mv.addObject("myInfo", myInfo);	
		mv.setViewName("order/orderHome");
		
		return mv;
	} // getMyOrder end

	//__________ 결제실행
	public String payProc(String m_id, RedirectAttributes rttr) {
		
		// 변수 선언 및 초기화
		String view = null;
		String alert = null;
		
		// Database 연동 구역
		// JSP 페이지 데이터 전송
		try {
			int totalCartCnt = pDao.getTotalCartCnt(m_id);
			
			for(int i = 0; i < totalCartCnt; i++) {

				int getCcode = pDao.getCartCode(m_id);
				CartDto getCartInfo = pDao.getCartList(getCcode);
				TicketDto tDto = new TicketDto();
				
				tDto.setM_id(getCartInfo.getM_id());
				tDto.setP_code(getCartInfo.getP_code());
				tDto.setO_code(getCartInfo.getOp_code());
				
				tDao.issueClass(tDto);
				pDao.deleteCart(getCcode);
				
			} // for end
			view = "redirect:order/orderComplete";
			alert = "결제완료! 회원권을 발급했습니다. 감사합니다.!";
		} catch (Exception e) {
			// e.printStackTrace();
			view = "redirect:order/orderHome";
			alert = "결제에 실패했습니다. 관리자에게 문의하세요.";
		}
		
		rttr.addFlashAttribute("alert", alert);
		
		return view;
	} // payProc end
	
} // class end
