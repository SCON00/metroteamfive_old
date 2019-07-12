package com.metro.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.metro.dao.MemberDAO;
import com.metro.domain.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	public MemberVO midCheck(MemberVO vo) {
		return memberDAO.midCheck(vo);
	}
	
	public MemberVO login(MemberVO vo) {
		return memberDAO.login(vo);
	}
}
 