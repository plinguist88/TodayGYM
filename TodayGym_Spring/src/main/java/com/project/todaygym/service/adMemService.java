package com.project.todaygym.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dao.AdminMemDao;
import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.util.adPagingUtil;

import lombok.extern.java.Log;

@Service
@Log
public class adMemService {

	@Autowired
	private AdminMemDao adMDao;

	private HttpSession session;

	private ModelAndView mv;

	private int listCnt = 10;

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
	
	//회원 검색
	public List<MemberDto> getSearchList(String type, String keyword) {
		List<MemberDto> mList = null;
		
		if(type.equals("m_name")) {
			mList = adMDao.getNameSearch(keyword);
		}
		else if(type.equals("m_id")) {
			mList = adMDao.getIdSearch(keyword);
		}
		return mList;
	}
	/*public ModelAndView getAdmemList(Integer pageNum) {
		mv = new ModelAndView();

		int num = (pageNum == null)? 1 : pageNum;

		Map<String, Integer> mmap = 
				new HashMap<String, Integer>();
		mmap.put("num", num);
		mmap.put("lcnt", listCnt);

		List<MemberDto> mList = adMDao.getMList(mmap);

		mv.addObject("mList", mList);

		String pageHtml	= getPaging(num);
		mv.addObject("pagin", pageHtml);

		session.setAttribute("pageNum", num);

		mv.setViewName("admin/adMem");

		return mv;
	}


	private String getPaging(int num) {
		String pageHtml = null;

		//전체 글 개수 구하기(DAO)
		int maxNum = adMDao.getMemberCnt();
		//한 페이지에 보여질 페이지 번호 개수
		int pageCnt = 2;
		String listName = "list";

		adPagingUtil paging = new adPagingUtil(maxNum, num, listCnt, 
				pageCnt, listName);

		pageHtml = paging.makePaging();

		return pageHtml;
	}*/

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

	//회원정보 수정 완료
	@Transactional
	public String adMemUpdateAct(MultipartHttpServletRequest multi,
			RedirectAttributes rda) {
		String act = null;

		String m_id = multi.getParameter("m_id");
		String m_name = multi.getParameter("m_name");
		String m_birth = multi.getParameter("m_birth");
		String m_phone = multi.getParameter("m_phone");
		String m_email = multi.getParameter("m_email");

		log.info("adMemUpdateAct() name: " + m_name + ", birth: "
				+ m_birth + ", phone: " + m_phone + ", email: " + m_email);

		MemberDto memdto = new MemberDto();
		memdto.setM_id(m_id);
		memdto.setM_name(m_name);
		memdto.setM_birth(m_birth);
		memdto.setM_phone(m_phone);
		memdto.setM_email(m_email);

		try {
			adMDao.adMemUpdateAct(memdto);

			rda.addFlashAttribute("msg", "수정 성공");
		} catch (Exception e) {
			// TODO: handle exception
			rda.addFlashAttribute("msg", "수정 실패");
		}

		act = "redirect:adMemDetailMove?m_id=" + m_id;

		return act;
	}

	@Transactional
	public String adMemDelAct(String m_id,
			RedirectAttributes rda) {
		log.info("adMemDelAct()");

		String act = null;

		try {
			adMDao.adMemDelAct(m_id);

			act = "redirect:adMemMove";
			rda.addFlashAttribute("msg", "삭제 성공");

		} catch (Exception e) {
			// TODO: handle exception
			act = "redirect:adMemDetailMove?m_id" + m_id;
			rda.addFlashAttribute("msg", "삭제 실패");
		}

		return act;
	}

}









