package com.project.todaygym.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.todaygym.dao.AdMainDao;

import lombok.extern.java.Log;

@Service
public class AdMainService {
	
	@Autowired
	private AdMainDao adMainDao;
	
	//총원 구하기
	public String adMemCnt(int num) {
		int tCnt = adMainDao.totalCnt();
		
		return null;
	}
}
