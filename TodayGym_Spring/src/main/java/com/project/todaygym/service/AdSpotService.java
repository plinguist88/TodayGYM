package com.project.todaygym.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dao.AdSpotDao;
import com.project.todaygym.dto.SpotDto;
import com.project.todaygym.dto.SpotFormDto;
import com.project.todaygym.dto.SpotImageDto;

@Service
public class AdSpotService {
	
	private String s_code, s_name, s_phone1, s_phone2, s_phone3, s_addr1, s_addr2, s_content;

	private SpotDto sDto;
	private SpotImageDto spotImageDto;
	private List<String> pathList;
	private List<SpotDto> sList;
	private List<SpotImageDto> spotImageList;
	private ModelAndView mv;

	@Autowired
	private AdSpotDao adSpotDao;
	
	//지점 전체 목록
	public ModelAndView getAdSpotList(String side) {
		
		sList = new ArrayList<SpotDto>();
		
		sList = adSpotDao.spotAllSelect();

		mv = new ModelAndView();
		
		mv.addObject("side", side);
		mv.addObject("sList", sList);
		mv.setViewName("admin/adSpotList");

		System.out.println("AdSpotListService Result : " + sList);

		return mv;
	}

	//지점 검색 목록
	public ModelAndView getAdSearchSpotList(String side, String adSearchSelect, String keyword) {

		sList = new ArrayList<SpotDto>();

		if(adSearchSelect.equals("s_code")) {
			sList = adSpotDao.spotCodeSearchSelect(keyword);
		} else if(adSearchSelect.equals("s_name")) {
			sList = adSpotDao.spotNameSearchSelect(keyword);
		} else {
			sList = null;
		}

		mv = new ModelAndView();
		
		mv.addObject("side", side);
		mv.addObject("sList", sList);
		mv.setViewName("admin/adSpotList");

		System.out.println("Side Number : " + side);
		System.out.println("AdSearchSpotListService Result : " + sList);

		return mv;
	}

	//지점 및 이미지 등록
	public ModelAndView setAdSpotReg(SpotFormDto spotFormDto, MultipartHttpServletRequest mhr) {

		s_code = spotFormDto.getS_code();
		s_name = spotFormDto.getS_name();
		s_phone1 = spotFormDto.getS_phone1();
		s_phone2 = spotFormDto.getS_phone2();
		s_phone3 = spotFormDto.getS_phone3();
		s_addr1 = spotFormDto.getS_addr1();
		s_addr2 = spotFormDto.getS_addr2();
		s_content = spotFormDto.getS_content();

		s_code = adSpotDao.spotNextNumber();

		//3개로 나누어 받은 연락처를 1개의 변수로 변환
		if(s_code == null) {
			s_code = "S01";
		} else {
			String[] s_codeArray = s_code.split("");
			String str1 = s_codeArray[0];
			String str2 = s_codeArray[1];
			String str3 = s_codeArray[2];

			if(str3.equals("9")) {
				int i = Integer.parseInt(str2) + 1;
				str3 = "0";
				s_code = str1 + i + str3;
			} else {
				int j = Integer.parseInt(str3) + 1;
				s_code = str1 + str2 + j;
			}
		}

		sDto = new SpotDto();

		sDto.setS_code(s_code);
		sDto.setS_name(s_name);
		sDto.setS_phone(s_phone1 + s_phone2 + s_phone3);
		sDto.setS_addr(s_addr1 + ", " + s_addr2);
		sDto.setS_content(s_content);

		int result = adSpotDao.spotInsert(sDto);

		List<MultipartFile> fileList = mhr.getFiles("s_images");

		//이미지 파일 처리 서비스
		//저장 경로
		String savePath = "C:\\Users\\alstj\\git\\TodayGym\\TodayGym_Spring\\src\\main\\webapp\\resources\\img\\admin\\";

		for(MultipartFile mf : fileList) {
			String simg_ori = mf.getOriginalFilename();
			String simg_sys = savePath + System.currentTimeMillis() + simg_ori;

			try {
				mf.transferTo(new File(simg_sys));

				spotImageDto = new SpotImageDto();

				spotImageDto.setS_code(s_code);
				spotImageDto.setSimg_ori(simg_ori);
				spotImageDto.setSimg_sys(simg_sys);

				adSpotDao.spotImageInsert(spotImageDto);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		mv = new ModelAndView();

		if(result > 0) {
			System.out.println("지점 등록 성공");
			mv.setViewName("redirect:/adSpotMove.ad");
		} else {
			System.out.println("지점 등록 실패");
			mv.setViewName("admin/adSpotRegForm");
		}
		return mv;
	}

	//지점 이미지 목록
	public ModelAndView getSpotImage(String s_code) {

		spotImageList = new ArrayList<SpotImageDto>();
		pathList = new ArrayList<String>();

		spotImageList = adSpotDao.spotImageSelect(s_code);

		for(SpotImageDto sid : spotImageList) {
			String allPath = sid.getSimg_sys();

			String resourcePath = allPath.substring(allPath.lastIndexOf("webapp")+7);

			System.out.println(resourcePath);

			pathList.add(resourcePath);
		}

		System.out.println(pathList);

		mv = new ModelAndView();

		mv.addObject("pathList", pathList);
		mv.setViewName("admin/adSpotImage");

		return mv;
	}

	//지점 하나 정보
	public ModelAndView getAdSpotOne(String s_code) {
		
		sDto = new SpotDto();
		
		sDto = adSpotDao.spotOneSelect(s_code);

		mv = new ModelAndView();
		
		mv.addObject("sDto", sDto);
		mv.setViewName("admin/adSpotUpdateForm");

		System.out.println("AdSpotOneService Result : " + sDto);

		return mv;
	}
	
	//지점 수정
	public ModelAndView setAdSpotUpdate(SpotFormDto spotFormDto) {
		
		s_code = spotFormDto.getS_code();
		s_name = spotFormDto.getS_name();
		s_phone1 = spotFormDto.getS_phone1();
		s_phone2 = spotFormDto.getS_phone2();
		s_phone3 = spotFormDto.getS_phone3();
		s_addr1 = spotFormDto.getS_addr1();
		s_addr2 = spotFormDto.getS_addr2();
		s_content = spotFormDto.getS_content();
		
		sDto = new SpotDto();

		sDto.setS_code(s_code);
		sDto.setS_name(s_name);
		sDto.setS_phone(s_phone1 + s_phone2 + s_phone3);
		sDto.setS_addr(s_addr1 + ", " + s_addr2);
		sDto.setS_content(s_content);
		
		int result = adSpotDao.spotUpdate(sDto);
		
		mv = new ModelAndView();
		
		if(result > 0) {
			System.out.println("지점 수정 성공");
			mv.setViewName("redirect:/adSpotMove.ad");
		} else {
			System.out.println("지점 수정 실패");
			mv.setViewName("admin/adSpotUpdateForm");
		}
		return mv;
	}
	
	//지점 삭제
	public ModelAndView getAdSpotDelete(String s_code) {

		int result = adSpotDao.spotDelete(s_code);

		String msg = null;

		if(result < 0) {
			msg = "삭제 성공!!";
		} else {
			msg = "삭제 실패!!";
		}

		mv = new ModelAndView();
		
		mv.addObject("msg", msg);
		mv.setViewName("admin/adSpotDelete");

		System.out.println("Spot Delete : " + result + ", " + msg);

		return mv;
	}
	
}
