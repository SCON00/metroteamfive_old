package com.metro.controller;
//
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.metro.domain.CsVO;
import com.metro.service.CsService;

@Controller	// 고객관리 서비스 컨트롤러
@RequestMapping("cs/")
public class CsController {		
	
	@Autowired
	private CsService csService;
	
	@RequestMapping(value="{url}.do")	// 단순 경로 테스트용
	public String common(@PathVariable String url) {
		return "cs/" + url;
	}
	
	
	// ##### notice_start #####
	// 글 목록 검색
	@RequestMapping("noticeList.do")
	public void noticeList(CsVO vo, Model model) {
		model.addAttribute("noticeList", csService.noticeList(vo));
	}
	
	// 글 상세 보기 + 조회수 증가
	@RequestMapping("noticeView.do")
	public void noticeView(CsVO vo, Model model) {
		csService.noticeCnt(vo);
		model.addAttribute("notice", csService.noticeView(vo));
	}
	// ##### notice_end #####
	
	
	// ##### QA_start #####
	// 글 등록
	@RequestMapping("saveQA.do")
	public String sendQA(CsVO vo) throws IOException{
		csService.sendQA(vo);
		return "redirect:/cs/qAList.do";
	}
	
	// 글 목록 검색
	@RequestMapping("qAList.do")
	public void qAList(CsVO vo, Model model) {
		model.addAttribute("qAList", csService.qAList(vo));
	}
	
	// 글 상세 조회
	@RequestMapping("qAView.do")
	public void qAView(CsVO vo, Model model) {
		model.addAttribute("qA", csService.qAView(vo));
	}
	
	// 글 수정
	@RequestMapping("updateQA.do")
	public String updateQA(@ModelAttribute("qA") CsVO vo) {
		csService.updateQA(vo);
		return "redirect:/cs/qAList.do";
	}
	
	// 글 삭제
	@RequestMapping("deleteQA.do")
	public String deleteQA(CsVO vo) {
		csService.deleteQA(vo);
		return "redirect:/cs/qAList.do";
	}
	// ##### QA_end #####
}
