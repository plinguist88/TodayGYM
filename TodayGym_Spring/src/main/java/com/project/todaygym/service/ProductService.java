package com.project.todaygym.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dao.MemberDao;
import com.project.todaygym.dao.ProductDao;
import com.project.todaygym.dto.CartDto;
import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.dto.MyCartDto;
import com.project.todaygym.dto.OptionDto;
import com.project.todaygym.dto.ProductDto;

@Service
public class ProductService {

	@Autowired
	private ProductDao proDao;
	
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private HttpSession session;

	private ModelAndView mv;

	//________________________________________ 상품

	//__________ 상품 페이지
	public ModelAndView getProductList() {

		// 변수 선언 및 초기화
		mv = new ModelAndView();

		// Database 연동 구역
		List<ProductDto> proList = proDao.getProductList();

		// JSP 페이지 데이터 전송
		mv.addObject("proList", proList);
		mv.setViewName("product/productMain");

		return mv;
	} // getProductList end

	//__________ 상품 상세 페이지
	public ModelAndView getProductDetail(String p_code) {

		// 변수 선언 및 초기화
		mv = new ModelAndView();
		String getCode = null;

		// Database 연동 구역
		ProductDto detailInfo = proDao.getProductSelect(p_code);
		
		//
		getCode = (String)detailInfo.getP_code();
		session.setAttribute("pcode", getCode);
		List<OptionDto> optionList = proDao.getOptionSelect(getCode);
		
		// JSP 페이지 데이터 전송
		mv.addObject("info", detailInfo);
		mv.addObject("option", optionList);
		mv.setViewName("product/productDetail");

		return mv;
	} // getProductList end
	
	//__________ 장바구니 저장하기
	public String saveMyCart(CartDto myCart, RedirectAttributes rttr) {

		String view = null;
		String alert = null;
		
		MemberDto member = (MemberDto)session.getAttribute("mb");
		String getCode = (String)session.getAttribute("pcode");
		String getId = member.getM_id();

		myCart.setM_id(getId);
		myCart.setP_code(getCode);
		
		System.out.println(myCart);
		
		try {
			proDao.myCartInsert(myCart);
			view = "redirect:myCart";
			alert = "장바구니에 담았습니다.";
		} catch (Exception e) {
			//e.printStackTrace();
			view = "redirect:detail";
			alert = "장바구니에 넣을 수 없습니다. 관리자에게 문의하세요.";
		}
		
		rttr.addFlashAttribute("alert", alert);
		
		return view;
	} // saveMyCart end
	
	//__________ 장바구니 페이지
	public ModelAndView getMyCart() {
		
		mv = new ModelAndView();
		
		MemberDto member = (MemberDto)session.getAttribute("mb");
		String getId = member.getM_id();
		
		List<MyCartDto> myCart = proDao.getMyCart(getId);
		
		mv.addObject("myCart", myCart);
		mv.setViewName("cart/myCart");
		
		return mv;
	}

} // class end
