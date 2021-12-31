package com.project.todaygym.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dao.MemberDao;
import com.project.todaygym.dao.ProductDao;
import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.dto.MyCartDto;

@Service
public class OrderService {
	
	@Autowired
	private ProductDao pDao;
	
	@Autowired
	private HttpSession session;
	
	private ModelAndView mv;
	
	//________________________________________ 결제
	
	//__________ 결제 페이지
	public ModelAndView getMyCartAndInfo(String m_id) {
		
		mv = new ModelAndView();
		
		List<MyCartDto> myCart= pDao.getMyCart(m_id);
		
		MemberDto myInfo = (MemberDto)session.getAttribute("mb");
		
		mv.addObject("myOrder", myCart);
		mv.addObject("myInfo", myInfo);	
		
		mv.setViewName("order/orderHome");
		
		return mv;
	} // getOrderAndInfo end

	//__________ 결제실행
	public String paymentProcess(String m_id, RedirectAttributes rttr) {
		String view = null;
		String alert = null;
		
		try {
			pDao.deleteMyCart(m_id);
			view = "redirect:order/orderComplete";
			alert = "결제완료! 회원권을 발급했습니다. 감사합니다.!";
		} catch (Exception e) {
			// e.printStackTrace();
			view = "redirect:order/orderHome";
			alert = "결제에 실패했습니다. 관리자에게 문의하세요.";
		}
		
		rttr.addFlashAttribute("alert", alert);
		
		return view;
	} // paymentProcess end
	
} // class end
