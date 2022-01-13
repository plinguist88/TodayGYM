package com.project.todaygym.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdTicketDao;
import com.project.todaygym.dto.MyClassDto;

@Service
public class AdTicketListService {

	private ModelAndView mv;
	
	@Autowired
	private AdTicketDao adTDao;

	//회원권 관리 및 리스트 출력
	public ModelAndView getAdTicketList() {
		mv = new ModelAndView();

		List<MyClassDto> tDto = adTDao.getTicketList();

		mv.addObject("tDto", tDto);

		mv.setViewName("admin/adTicketList");

		return mv;
	}
}
