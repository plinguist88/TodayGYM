package com.project.todaygym.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dao.ReviewDao;
import com.project.todaygym.dto.MemberDto;
import com.project.todaygym.dto.ReviewDto;
import com.project.todaygym.dto.ReviewImageDto;
import com.project.todaygym.util.rvPagingUtill;

import lombok.extern.java.Log;

@Service
@Log
public class ReviewService {

	private ReviewImageDto reviewImageDto;

	@Autowired
	private ReviewDao rdao;

	@Autowired
	private HttpSession session;

	private ModelAndView mv;

	private int listCnt = 10;  //페이지당 게시글 개수

	public String WriteAct(ReviewDto rdto , RedirectAttributes rttr, MultipartHttpServletRequest mhr) {


		String view = null;
		String msg = null;

		MemberDto getMember = (MemberDto)session.getAttribute("mb");			
		String getLoginId = getMember.getM_id();

		rdto.setM_id(getLoginId);

		MultipartFile file = mhr.getFile("r_image");

		String savePath = "C:\\Users\\alstj\\git\\TodayGym\\TodayGym_Spring\\src\\main\\webapp\\resources\\img\\reviews\\";

		String simg_ori = file.getOriginalFilename();
		String simg_sys = savePath + System.currentTimeMillis() + simg_ori;

		try {
			rdao.WriteInsert(rdto);

			int r_no =  rdao.nextNum();

			try {
				file.transferTo(new File(simg_sys));

				reviewImageDto = new ReviewImageDto();

				reviewImageDto.setR_no(r_no);
				reviewImageDto.setRimg_ori(simg_ori);
				reviewImageDto.setRimg_sys(simg_sys);

				System.out.println("reviewImageDto : " + reviewImageDto);

				rdao.reviewImageInsert(reviewImageDto);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

			msg = "글 작성 성공";
			view = "redirect:review";

		}catch(Exception e) {
			e.printStackTrace();
			msg = "글 작성 실패";
			view = "redirect:reviewsWrite";

		}
		rttr.addFlashAttribute("msg",msg);

		System.out.println(msg);
		return view;
	}

	public ModelAndView getReviewList(Integer pageNum, String r_cate) {	
		mv = new ModelAndView();

		//null 또는 페이지 번호가 pageNum 으로 넘어옴.
		int num = (pageNum == null)? 1 : pageNum;
		//로그인 후에는 null 이 넘어옴

		//게시글 목록 가져오기
		Map<String, String> pmap=
				new HashMap<String, String>();

		List<ReviewDto> rList = new ArrayList<ReviewDto>();

		if(r_cate == null || r_cate.equals("all")) {
			pmap.put("num", String.valueOf(num));
			pmap.put("lcnt",String.valueOf(listCnt));	

			rList = rdao.getList(pmap);
		} else {
			pmap.put("num", String.valueOf(num));
			pmap.put("lcnt",String.valueOf(listCnt));
			pmap.put("r_cate", r_cate);

			rList = rdao.getCateList(pmap);
		}
		//차후 view(jsp)에서 페이지 당 글 개수를 입력받아서
		//설정하는 부분을 처리하여 10 대신 사용

		//화면에 전송.
		mv.addObject("rList", rList);
		System.out.println("rList : " + rList);
		//페이징처리
		String pageHtml = rvgetPaging(num,r_cate);
		mv.addObject("paging",pageHtml);


		mv.setViewName("reviews/reviewsHome");

		return mv;

	}
	private String rvgetPaging(int num, String r_cate) {
		String pageHtml = null;

		//전체 글 개수 구하기(DAO)
		int maxNum = rdao.reviewsCnt();
		//한 페이지에 보여질 페이지 번호 개수
		int pageCnt = 5;
		String listName = "review?r_cate=";
		if(r_cate == null)
			r_cate = "all";

		if(!r_cate.equals("all"))
			maxNum = rdao.rvCateCnt(r_cate);

		listName += r_cate;

		rvPagingUtill paging = new rvPagingUtill(maxNum, num, listCnt, pageCnt, listName);

		pageHtml = paging.makePaging();

		return pageHtml;
	}

	public ModelAndView getReviewDetail(int r_no) {
		mv = new ModelAndView();

		ReviewDto rDto = new ReviewDto();
		rDto = rdao.getDetail(r_no);

		ReviewImageDto riDto = new ReviewImageDto();
		riDto = rdao.getImage(r_no);

		if(riDto != null) {
			String allPath = riDto.getRimg_sys();
			String resourcePath = allPath.substring(allPath.lastIndexOf("webapp")+7);
			mv.addObject("resourcePath", resourcePath);
		}

		mv.addObject("rDto", rDto);
		mv.setViewName("reviews/reviewsDetail");

		return mv;
	}
	public String reviewsDelete(Integer r_no) {

		int result = rdao.reviewsDelete(r_no);

		System.out.println(result);

		String msg;

		if(result < 0) {
			msg = "삭제 성공!!";
		} else {
			msg = "삭제 실패!!";
		}

		return msg;
	}


	public ModelAndView reviewsUpdate(int r_no, RedirectAttributes rttr) {
		mv = new ModelAndView();
		ReviewDto rdto = rdao.getDetail(r_no);
		mv.addObject("rdto", rdto);
		mv.setViewName("reviews/reviewsUpdate");
		return mv;
	}


	public String reviewsUpdateAct(ReviewDto rdto) {
		mv = new ModelAndView();
		int result = rdao.reviewsUpdateAct(rdto);
		String msg;
		if (result > 0) {
			msg = "수정 성공";
		}else {
			msg = "수정 실패";
			mv.setViewName("reviews/reviewsUpdate");

		}
		System.out.println("msg : " + msg);
		return msg;


	}


}