package com.metro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.metro.domain.MemberVO;
import com.metro.service.MemberService;

@Controller	// 회원정보 관리용 컨트롤러
@RequestMapping("member/")
public class MemberController {
	
	@Autowired 
	MemberService memberService;
	
	String regExp="^[0-9]+$";
	
	@RequestMapping(value="{url}.do")	// 단순 경로 테스트용
	public String common(@PathVariable String url) {
		return "member/" + url;
	}
	
	@RequestMapping(value="midCheck.do", produces="application/text; charset=UTF-8")
	@ResponseBody	// ***** ajax 인 경우 반드시 해야 비동기 통신 함.
	public String midCheck(MemberVO vo) {
		System.out.println("====> midCheck.do들어오오옹");
		if(vo.getMid().contains("@")) {
			vo.setEmail(vo.getMid());
		} else {
			vo.setMtel(vo.getMid()); 
		}
		String result = "사용가능합니다.";
		MemberVO resultVo = memberService.midCheck(vo);
		if(resultVo != null) result="이미 사용중입니다.";
		return result;
	}
	
	@RequestMapping(value="login.do", produces="application/text; charset=UTF-8")
	@ResponseBody
	public String login(MemberVO vo) {
		System.out.println("====> login.do들어옴");
		/*
		 * mid값 비교
		 * @ o : email
		 * 숫자만 : mtel
		 * 나머지 : username
		 */
		String mid = vo.getMid();
		if(mid.contains("@")) {
			vo.setEmail(mid);
		}else if(mid.matches(regExp)) {
			vo.setMtel(mid);
		}else {
			vo.setUsername(mid);
		}
		
		MemberVO resultVo = memberService.login(vo);
		/*
		 * dao에서 받은 resultVo 채워진 값 비교해서 로그인 결과 알려줌
		 * id x : 존재하지 않는 계정입니다.
		 * id o, 비번 x : 잘못된 비밀번호입니다. 
		 * id o, 비번 o : 로그인 성공
		 */
		String result="존재하지 않는 계정입니다. 다시 시도하세요";
		if(resultVo != null) {
			if(resultVo.getUsername() == null) {
				result="존재하지 않는 계정입니다. 다시 시도하세요";
				return result;
			}
			else if(resultVo.getPass() == null) {
				result="잘못된 비밀번호입니다. 다시 시도하세요";
				return result;
			}
			result=resultVo.getUsername()+"님";
		}
		return result;
	}
}
