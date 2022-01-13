package com.project.todaygym;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.service.AdMemService;

@Controller
public class AdminMemberController { //관리자 컨트롤러
	
	private static final Logger logger = 
			LoggerFactory.getLogger(AdminMemberController.class);
	
	private ModelAndView mv;
	
	@Autowired
	private AdMemService adMServ;
	
	//회원관리 페이지 이동
	@GetMapping("/adMemMove")
	public ModelAndView adMemList(String m_id) {
		logger.info("adMemList()");
		
		mv = adMServ.getAdmemList(m_id);
		
		return mv;
	}
	
	//회원 검색
	@GetMapping(value = "/getSearchList", produces = "application/json; charset=utf-8")
	@ResponseBody
	private List<MemberDto> getSearchList(String searchType, String keyword) {
		logger.info("getSearchList() - t:" + searchType + ", k:" + keyword);
		
		List<MemberDto> mList = adMServ.getSearchList(searchType, keyword);
		
		return mList;
	}
	
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
	
	//회원정보 수정 완료
	@PostMapping("/adMemUpdateAct")
	public String adMemUpdateAct(MultipartHttpServletRequest multi,
			RedirectAttributes rda) {
		
		logger.info("adMemUpdateAct()");
		String act = adMServ.adMemUpdateAct(multi, rda);
		
		return act;
	}
	
	//회원 삭제
	@GetMapping("/adMemDelAct")
	public String adMemDelAct(String m_id,
			RedirectAttributes rda) {
		logger.info("adMemDelAct()");
		
		String act = adMServ.adMemDelAct(m_id, rda);
		
		return act;
	}
	
	//회원 검색
	
}//AdminController end













