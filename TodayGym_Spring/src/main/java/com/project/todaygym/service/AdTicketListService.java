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
import com.project.todaygym.dto.AdTicketDto;
import com.project.todaygym.util.adPagingUtil;

@Service
public class AdTicketListService {
	
	@Autowired
	private AdTicketDao adTDao;
	
	@Autowired
	private HttpSession session;
	
	private ModelAndView mv;
	
	private int lCnt = 10;
	
	//임시
	public Model getTicketList(Model model) {
		
		return model;
	}
	
	//회원권 관리 및 리스트 출력
/*	public ModelAndView getAdTicketList(Integer pageNo) {
		mv = new ModelAndView();
		
		int num = (pageNo == null)? 1 : pageNo;
		
		//리스트 가져오기
		Map<String, Integer> tmap =
				new HashMap<String, Integer>();
		tmap.put("num", num);
		tmap.put("lCnt", lCnt);
		
		List<AdTicketDto> tList = adTDao.getAdTList(tmap);
		
		mv.addObject("tList", tList);
		
		String pageHtml = getPaging(num);
		mv.addObject("paging", pageHtml);
		
		session.setAttribute("pageNo", num);
		
		mv.setViewName("admin/adTicketList");
		
		return mv;
	}
	
	//페이징 처리
	private String getPaging(int num) {
		String pageHtml = null;
		
		//전체 글 개수 구하기(DAO)
		int maxNum = adTDao.getTicketLCnt();
		//한 페이지에 보여질 페이지 번호 개수
		int pageCnt = 2;
		String listName = "list";
		
		adPagingUtil paging = new adPagingUtil(maxNum, num, lCnt, 
				pageCnt, listName);
		
		pageHtml = paging.makePaging();
		
		return pageHtml;
	}*/
	
	public ModelAndView getTicketDetail(int t_no) {
		mv = new ModelAndView();
		
		AdTicketDto ticket = adTDao.getTDetail(t_no);
		
		mv.addObject("ticket", ticket);
		mv.setViewName("admin/adTicketDetail");
		
		return mv;
	}
}
