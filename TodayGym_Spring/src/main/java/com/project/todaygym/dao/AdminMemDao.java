package com.project.todaygym.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.project.todaygym.dto.MemberDto;

public interface AdminMemDao {

	//전체 회원 정보 가져오기
	public List<MemberDto> getMList(Map<String, String> mmap);
	//회원 상세정보 가져오기
	public MemberDto getMDetail(String m_id);
	
}