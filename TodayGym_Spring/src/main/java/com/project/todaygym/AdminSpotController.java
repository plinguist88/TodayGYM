package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dto.SpotFormDto;
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

	//지점 관리로 이동
	@GetMapping("adSpotMove.ad")
	public ModelAndView adSpotMove() {
		Logger.info("adSpotMove()");

		mv = new ModelAndView();
		
		mv = adSpotListService.getAdSpotList();

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
	
	@PostMapping("adspotRegAction.ad")
	public ModelAndView adspotRegAction(SpotFormDto spotFormDto) {
		Logger.info("adspotRegAction()");
		
		System.out.println(spotFormDto);
		
		mv = new ModelAndView();
		
		mv = adSpotRegService.getAdSpotRegService(spotFormDto);

		return mv;
	}
}
