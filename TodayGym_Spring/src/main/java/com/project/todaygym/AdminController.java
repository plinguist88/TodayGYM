package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.service.adMemService;

@Controller
public class AdminController { //관리자 컨트롤러
	
	private static final Logger logger = 
			LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private adMemService adMemServ;
	
	private ModelAndView mv;
	
	//회원관리 페이지 이동
	@GetMapping("/adMemMove")
	public String adMemMove(Model model) {
		logger.info("adMemMove()");
		
		String path = adMemList();
		path = adMemtotal();
		path = adMemSearch();
		
		return path;
	}
	//회원 목록
	public String adMemList() {
		
		return "admin/adMem";
	}
	//회원 총원 수
	public String adMemtotal() {
		
		return "admin/adMem";
	}
	//회원 검색
	public String adMemSearch() {
		return "admin/adMem";
	}
}//AdminController end