package com.project.todaygym.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dao.OrderDao;
import com.project.todaygym.dao.ProductDao;
import com.project.todaygym.dto.CartDto;
import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.dto.MyCartDto;
import com.project.todaygym.dto.OptionDto;
import com.project.todaygym.dto.ProductDto;

@Service
public class ProductService {
	
	private ModelAndView mv;
	
	@Autowired
	private ProductDao pDao;
	@Autowired
	private OrderDao oDao;
	@Autowired
	private HttpSession session;
	
	//1. 구매메인페이지
	public ModelAndView getProductList(String p_cate) {
		mv = new ModelAndView();
		List<ProductDto> pList;
		if(p_cate == null) {
			pList = pDao.getProductList();
		}else {
			pList = pDao.getCate(p_cate);
		}
		mv.addObject("pList", pList);
		mv.setViewName("buy/buyHome");
		return mv;
	}
	//2. 구매상세 페이지 넘기기
	public ModelAndView getProductDetail(String p_code) {
		mv = new ModelAndView();
		
		ProductDto detailInfo = pDao.getProductSelect(p_code);

		session.setAttribute("pCode", p_code);
		
		List<OptionDto> oList = pDao.getOptionSelect(p_code);
		mv.addObject("dInfo", detailInfo);
		mv.addObject("oList", oList);
		mv.setViewName("buy/bHealthDetail");
		
		return mv;
	}
	//3. 장바구니 페이지
	public ModelAndView getMyCart() {
		mv = new ModelAndView();
		
		MemberDto member = (MemberDto) session.getAttribute("mb");
		String getId = member.getM_id();
		
		List<MyCartDto> myCart = pDao.getMyCart(getId);
		List<String> cartPrice = new ArrayList<String>();
		for(int i = 0; i < myCart.size(); i++) {
			cartPrice.add(myCart.get(i).getO_price());
		}
		mv.addObject("mycart", myCart);
		mv.addObject("pList", cartPrice);
		
		mv.setViewName("cart/cartHome");
		return mv;
	}
	
	//4. 장바구니 저장하기
	public String saveMyCart(CartDto myCart, RedirectAttributes rttr) {
		String view = null;
		String alert = null;
		
		MemberDto member = (MemberDto) session.getAttribute("mb");
		String getCode = (String) session.getAttribute("pCode");
		String getId = member.getM_id();
		
		myCart.setM_id(getId);
		myCart.setP_code(getCode);
		
		try {
			pDao.myCartInsert(myCart);
			view = "redirect:myCart";
			rttr.addFlashAttribute("msg", "회원권을 장바구니에 담았습니다");
		}catch (Exception e) {
			e.printStackTrace();
			view = "redirect:detail";
			rttr.addFlashAttribute("msg", "장바구니 담기 실패. 관리자에게 문의하세요");
		}
		rttr.addFlashAttribute("alert", alert);
		
		return view;
	}
	
	//5. 장바구니 개별삭제하기
	@Transactional
	public String cartDelete(int cCode, RedirectAttributes rttr) {
		String view = null;
		
		try {
			oDao.orderDelete(cCode);
			pDao.cartDelete(cCode);
			view = "redirect:myCart";
			rttr.addFlashAttribute("msg", "회원권 삭제 성공");
		}catch (Exception e) {
			e.printStackTrace();
			view = "redirect:myCart";
			rttr.addFlashAttribute("msg", "회원권 삭제 실패. 관리자에게 문의하세요");
		}
		return view;
	}
	//6. 장바구니 전체삭제하기
	@Transactional
	public String cartTDel(RedirectAttributes rttr) {
		String view = null;
		
		MemberDto myInfo = (MemberDto)session.getAttribute("mb");
		String getMid = myInfo.getM_id();
		
		try {
			oDao.orderListDelete(getMid);
			pDao.cartTDel();
			view = "redirect:myCart";
			rttr.addFlashAttribute("msg", "장바구니 전체 삭제 성공.");
		}catch (Exception e) {
			e.printStackTrace();
			view = "redirect:myCart";
			rttr.addFlashAttribute("msg", "장바구니 전체 삭제 실패. 관리자에게 문의바랍니다.");
		}
		return view;
	}
}























