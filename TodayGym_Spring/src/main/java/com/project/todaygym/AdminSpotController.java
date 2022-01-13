package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dto.SpotFormDto;

import com.project.todaygym.service.AdSpotService;

@Controller
public class AdminSpotController {

	private static final Logger logger = LoggerFactory.getLogger(AdminSpotController.class);

	private ModelAndView mv;
	
	//관리자 지점 서비스 클래스
	@Autowired
	private AdSpotService adSpotService;

	//지점 관리로 이동
	@GetMapping("adSpotMove.ad")
	public ModelAndView adSpotMove(String side) {
		logger.info("adSpotMove()");

		mv = new ModelAndView();
		
		mv = adSpotService.getAdSpotList(side);

		return mv;
	}
	
	//지점 검색으로 이동
	@GetMapping("adSearchSpotList.ad")
	public ModelAndView adSearchSpotList(String side, String adSearchSelect, String keyword) {
		logger.info("adSearchSpotList()");

		mv = new ModelAndView();
		
		mv = adSpotService.getAdSearchSpotList(side, adSearchSelect, keyword);

		return mv;
	}

	//지점 등록으로 이동
	@GetMapping("adSpotRegFormMove.ad")
	public ModelAndView adSpotRegFormMove() {
		logger.info("adSpotRegFormMove()");

		mv = new ModelAndView();

		mv.setViewName("admin/adSpotRegForm");

		return mv;
	}
	
	//지점 및 이미지 등록
	@PostMapping("adSpotRegAction.ad")
	public ModelAndView adSpotRegAction(SpotFormDto spotFormDto, MultipartHttpServletRequest mhr) {
		logger.info("adSpotRegAction()");
		
		mv = new ModelAndView();
		
		mv = adSpotService.setAdSpotReg(spotFormDto, mhr);

		return mv;
	}
	
	//지점 이미지로 이동
	@GetMapping("adSpotImageMove.ad")
	public ModelAndView adSpotImageMove(String s_code) {
		logger.info("adSpotImageMove()");
		
		mv = new ModelAndView();
		
		mv = adSpotService.getSpotImage(s_code);
		
		return mv;
	}
	
	//지점 수정으로 이동
	@GetMapping("adSpotUpdateFormMove.ad")
	public ModelAndView adSpotUpdateFormMove(String s_code) {
		logger.info("adSpotUpdateFormMove()");
		
		mv = new ModelAndView();
		
		mv = adSpotService.getAdSpotOne(s_code);

		mv.setViewName("admin/adSpotUpdateForm");
		
		return mv;
	}
	
	//지점 수정
	@PostMapping("adSpotUpdateAction.ad")
	public ModelAndView adSpotUpdateAction(SpotFormDto spotFormDto) {
		logger.info("adSpotUpdateAction()");
		
		mv = new ModelAndView();
		
		mv = adSpotService.setAdSpotUpdate(spotFormDto);
		
		return mv;
	}
	
	//지점 삭제로 이동
	@GetMapping("adSpotDeleteMove.ad")
	public ModelAndView adSpotDeleteMove(String s_code) {
		logger.info("adSpotDeleteMove()");
		
		mv = new ModelAndView();
		
		mv.addObject("s_code", s_code);
		mv.setViewName("admin/adSpotDelete");
		
		return mv;
	}
	
	//지점 삭제
	@GetMapping("adSpotDeleteAction.ad")
	public ModelAndView adSpotDeleteAction(String s_code) {
		logger.info("adSpotDeleteAction()");
		
		mv = new ModelAndView();
		mv = adSpotService.getAdSpotDelete(s_code);
		
		return mv;
	}
}
