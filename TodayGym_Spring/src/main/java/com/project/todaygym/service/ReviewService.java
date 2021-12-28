package com.project.todaygym.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dao.ReviewDao;
import com.project.todaygym.dto.ReviewDto;

@Service
public class ReviewService {

	@Autowired
	private ReviewDao rdao;
	
	public String WriteAct(ReviewDto rdto , RedirectAttributes rttr) {


		String view = null;
		String msg = null;


		try {
			rdao.WriteInsert(rdto);
			msg = "글 작성 성공";
			view = "redirect:review";

		}catch(Exception e) {
			e.printStackTrace();
			msg = "글 작성 실패";
			view = "redirect:reviewsWrite";

		}
		rttr.addFlashAttribute("msg",msg);
		return view;
	}
}
