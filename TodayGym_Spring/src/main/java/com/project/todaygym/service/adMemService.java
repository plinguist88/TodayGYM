package com.project.todaygym.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dao.AdminMemDao;
import com.project.todaygym.dto.MemberDto;

@Service
public class adMemService {
	
	@Autowired
	private AdminMemDao adMDao;
	
	private HttpSession session;
	
	private ModelAndView mv;
	
	//회원관리 이동 및 회원 리스트 출력
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

	//회원 상세정보 이동 및 출력
	public ModelAndView getAdMemDetail(String m_id) {
		mv = new ModelAndView();
		
		MemberDto memdto = adMDao.getMDetail(m_id);
		
		mv.addObject("memdto", memdto);
		
		mv.setViewName("admin/adMemDetail");
		
		return mv;		
	}
	
	//회원정보 수정 이동 및 출력
	public ModelAndView adMemUpdate(String m_id,
			RedirectAttributes rda) {
		mv = new ModelAndView();
		
		MemberDto memdto = adMDao.getMDetail(m_id);
		
		mv.addObject("memdto", memdto);
		
		mv.setViewName("admin/adMemUpdate");
		
		return mv;
	}
	
}
