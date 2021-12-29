package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dto.CartDto;
import com.project.todaygym.service.ProductService;

@Controller
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private ProductService proServ;

	private ModelAndView mv;
	
	//________________________________________ 상품
	
	//__________ 상품 페이지
	@GetMapping("product")
	public ModelAndView productMove() {
		logger.info("productMove()");
	
		mv = proServ.getProductList();
	
		return mv;
	} // myInfoMove end
	
	//__________ 상품 상세 페이지
	@GetMapping("detail")
	public ModelAndView getProductDetail(String p_code) {
		logger.info("getProductDetail");
		
		mv = proServ.getProductDetail(p_code);
		
		return mv;
	} // getProductDetail end
	
	//__________ 장바구니 저장하기
	@GetMapping("saveCart")
	public String saveMyCart(CartDto myCart, RedirectAttributes rttr) {
		logger.info("saveMyCart");
		
		String view = proServ.saveMyCart(myCart, rttr);
		
		return view;
	} // saveMyCart end
	
	//__________ 장바구니 페이지
	@GetMapping("myCart")
	public ModelAndView getMycart() {
		logger.info("myCart");
		
		mv = proServ.getMyCart();
		
		return mv;
	} // getMycart end
	
} // class end
