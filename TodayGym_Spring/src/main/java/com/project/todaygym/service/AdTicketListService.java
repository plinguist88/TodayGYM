package com.project.todaygym.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdTicketDao;
import com.project.todaygym.dao.TicketDao;
import com.project.todaygym.dto.MyClassDto;
import com.project.todaygym.dto.TicketDto;
import com.project.todaygym.util.adPagingUtil;

@Service
public class AdTicketListService {

	@Autowired
	private AdTicketDao adTDao;

	@Autowired
	private HttpSession session;

	private ModelAndView mv;

	//회원권 관리 및 리스트 출력
	public ModelAndView getAdTicketList() {
		mv = new ModelAndView();

		List<MyClassDto> tDto = adTDao.getTicketList();

		mv.addObject("tDto", tDto);

		mv.setViewName("admin/adTicketList");

		return mv;
	}
}
