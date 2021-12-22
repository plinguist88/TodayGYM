package com.project.todaygym.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdminMemDao;
import com.project.todaygym.dto.MemberDto;

@Service
public class adMemService {
	
	@Autowired
	private AdminMemDao adMDao;
	
	private HttpSession session;
	
	private ModelAndView mv;
	
	public ModelAndView getAdmemList(String m_id) {
		mv = new ModelAndView();
		
		String mid = (m_id == null)? null : m_id;
		
		Map<String, String> mmap = new HashMap<String, String>();
		mmap.put("str", mid);
		
		List<MemberDto> mList = adMDao.getMList(mmap);
		
		mv.addObject("mList", mList);
		
		mv.setViewName("admin/adMem");
		
		return mv;
	}

	public ModelAndView getAdMemDetail(String m_id) {
		mv = new ModelAndView();
		
		MemberDto md = adMDao.getMDetail(m_id);
		
		mv.addObject("md", md);
		
		mv.setViewName("admin/adMemDetail");
		
		return mv;
	}
	
}
