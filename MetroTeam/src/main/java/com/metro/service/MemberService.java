package com.metro.service;

import com.metro.domain.MemberVO;

public interface MemberService {
	/*
	 * 회원정보관리 용 서비스 인터페이스
	 */
	
	public MemberVO midCheck(MemberVO vo);
	
	public MemberVO login(MemberVO vo);
}
