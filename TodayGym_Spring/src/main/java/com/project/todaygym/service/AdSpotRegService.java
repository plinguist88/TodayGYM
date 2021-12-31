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
public class AdSpotRegService {

	private ModelAndView mv;
	private SpotDto spotDto;
	private SpotImageDto spotImageDto;
	
	@Autowired
	private AdSpotDao adSpotDao;
	
	public ModelAndView getAdSpotReg(SpotFormDto spotFormDto, MultipartHttpServletRequest mhr) {
		
		mv = new ModelAndView();
		
		String s_code = spotFormDto.getS_code();
		String s_name = spotFormDto.getS_name();
		String s_phone1 = spotFormDto.getS_phone1();
		String s_phone2 = spotFormDto.getS_phone2();
		String s_phone3 = spotFormDto.getS_phone3();
		String s_addr1 = spotFormDto.getS_addr1();
		String s_addr2 = spotFormDto.getS_addr2();
		String s_content = spotFormDto.getS_content();
		
		s_code = adSpotDao.spotNextNumber();
		
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

		spotDto = new SpotDto();
		
		spotDto.setS_code(s_code);
		spotDto.setS_name(s_name);
		spotDto.setS_phone(s_phone1 + s_phone2 + s_phone3);
		spotDto.setS_addr(s_addr1 + ", " + s_addr2);
		spotDto.setS_content(s_content);
		
		int result = adSpotDao.spotInsert(spotDto);
		
		List<MultipartFile> fileList = mhr.getFiles("s_images");
		
		//이미지 파일 처리 서비스
		String path = "C:\\Users\\alstj\\git\\TodayGym\\TodayGym_Spring\\src\\main\\webapp\\resources\\img\\admin\\";
		String savePath = "C:\\Users\\pling\\Documents\\GitHub\\TodayGym\\TodayGym_Spring\\src\\main\\webapp\\resources\\img\\admin\\";
		
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
		
		if(result > 0) {
			System.out.println("지점 등록 성공");
			mv.setViewName("redirect:/adSpotMove.ad");
		} else {
			System.out.println("지점 등록 실패");
			mv.setViewName("admin/adSpotRegForm");
		}
		return mv;
	}
}
