package com.project.todaygym;

import java.security.Provider.Service;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.service.adMemService;

@Controller
public class AdminController { //관리자 컨트롤러
	
	private static final Logger logger = 
			LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private adMemService adMServ;
	
	private ModelAndView mv;
	
	//회원관리 페이지 이동
	@GetMapping("/adMemMove")
	public ModelAndView adMemList(String m_id) {
		logger.info("adMemList()");
		
		mv = adMServ.getAdmemList(m_id);
		
		return mv;
	}
	
	/*@GetMapping("/adMemMove")
	public String adMemMove() {
		logger.info("adMemMove()");
		
		return "admin/adMem";
	}*/
	
	//회원 상세 페이지 이동
	@GetMapping("/adMemDetailMove")
	public ModelAndView adMemDetail(String m_id) {
		logger.info("adMemDetail()");
	
		mv = adMServ.getAdMemDetail(m_id);
		
		return mv;
	}
	
	//회원정보 수정 페이지 이동
	@GetMapping("/adMemUpdateMove")
	public ModelAndView adMemUpdate(String m_id,
			RedirectAttributes rda) {
		logger.info("adMemUpdate()");
		
		mv = adMServ.adMemUpdate(m_id, rda);
		
		return mv;
	}
}//AdminController end













