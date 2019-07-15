package com.metro.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.metro.domain.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis; 
	
	@Override
	public MemberVO midCheck(MemberVO vo) {
		// TODO Auto-generated method stub
		System.out.println("======> mybatis midCheck 호출ㄹㄹㄹㄹ");
		return mybatis.selectOne("member.midCheck", vo);
		
	}
	
	public MemberVO login(MemberVO vo) {
		System.out.println("======> 로그인에서 mybatis midCheck 호출ㄹㄹㄹㄹ");
		MemberVO midCheckVo =  mybatis.selectOne("member.midCheck", vo);
		if(midCheckVo != null) {
			System.out.println("====> mybatis login 호출1222");
			midCheckVo.setPass(vo.getPass());
			MemberVO loginResultVo = mybatis.selectOne("member.login", midCheckVo);
			if(loginResultVo != null) {
				return loginResultVo;
			}
			midCheckVo.setPass(null);
			return midCheckVo;
		}
		return midCheckVo;
	}
}
 