package com.sumbab.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sumbab.member.domain.MemberVO;
import com.sumbab.member.service.MemberService;

@Controller
public class MemberController {
	private MemberService memberService;
	
	public void setBoardService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping(value="/memberjoinpro.do",method=RequestMethod.POST)
	public ModelAndView memberJoinPro(MemberVO memberVO) {
		ModelAndView mav = new ModelAndView();
		memberService.memberJoinProcess(memberVO);
		mav.setViewName("memberloginform");
		return mav;
	}
	
	
	
}
