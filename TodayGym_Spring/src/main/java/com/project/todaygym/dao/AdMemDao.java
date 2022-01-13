package com.project.todaygym.dao;

import java.util.List;
import java.util.Map;

import com.project.todaygym.dto.MemberDto;

public interface AdMemDao {

	//전체 회원 정보 가져오기
	public List<MemberDto> getMList(Map<String, String> mmap);
	//회원 상세정보 가져오기
	public MemberDto getMDetail(String m_id);
	//회원정보 수정
	public boolean adMemUpdateAct(MemberDto memdto);
	//회원 삭제
	public boolean adMemDelAct(String m_id);
	//이름 검색
	public List<MemberDto> getNameSearch(String m_name);
	//아이디 검색
	public List<MemberDto> getIdSearch(String m_id);
}