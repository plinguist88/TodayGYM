package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dto.SpotFormDto;
import com.project.todaygym.service.AdSpotImageService;
import com.project.todaygym.service.AdSpotListService;
import com.project.todaygym.service.AdSpotRegService;

@Controller
public class AdminSpotController {

	private final Logger Logger = LoggerFactory.getLogger(AdminSpotController.class);

	private ModelAndView mv;

	@Autowired
	private AdSpotListService adSpotListService;
	
	@Autowired
	private AdSpotRegService adSpotRegService;
	
	@Autowired
	private AdSpotImageService adSpotImageService;

	//지점 관리로 이동
	@GetMapping("adSpotMove.ad")
	public ModelAndView adSpotMove(String side) {
		Logger.info("adSpotMove()");

		mv = new ModelAndView();
		
		mv = adSpotListService.getAdSpotList(side);

		return mv;
	}

	//지점 등록으로 이동
	@GetMapping("adSpotRegFormMove.ad")
	public ModelAndView adSpotRegFormMove() {
		Logger.info("adSpotRegFormMove()");

		mv = new ModelAndView();

		mv.setViewName("admin/adSpotRegForm");

		return mv;
	}
	
	//지점 및 이미지 등록
	@PostMapping("adSpotRegAction.ad")
	@ResponseBody
	public ModelAndView adSpotRegAction(SpotFormDto spotFormDto, MultipartHttpServletRequest mhr) {
		Logger.info("adSpotRegAction()");
		
		mv = new ModelAndView();
		
		mv = adSpotRegService.getAdSpotReg(spotFormDto, mhr);

		return mv;
	}
	
	//지점 이미지로 이동
	@GetMapping("adSpotImageMove.ad")
	public ModelAndView adSpotImageMove(String s_code) {
		Logger.info("adSpotImageMove()");
		
		mv = new ModelAndView();
		
		mv = adSpotImageService.getSpotImage(s_code);
		
		return mv;
	}
}
