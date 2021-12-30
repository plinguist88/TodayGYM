package com.project.todaygym.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdTicketDao;
import com.project.todaygym.dto.AdTicketDto;

@Service
public class AdTicketListService {
	
	@Autowired
	private AdTicketDao adTDao;
	
	private ModelAndView mv;
	
	public Model getTicketList(Model model) {
		
		return model;
	}
	
	public ModelAndView getTicketDetail(int t_no) {
		mv = new ModelAndView();
		
		AdTicketDto ticket = adTDao.getTDetail(t_no);
		
		mv.addObject("ticket", ticket);
		mv.setViewName("admin/adTicketDetail");
		
		return mv;
	}
}
