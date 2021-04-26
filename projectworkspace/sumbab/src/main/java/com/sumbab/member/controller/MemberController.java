package com.sumbab.member.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sumbab.member.domain.MemberVO;
import com.sumbab.member.service.MemberService;

@Controller
public class MemberController {
	
	@Inject
	private MemberService memberService;
	
	public void setBoardService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping(value="/memberjoin", method=RequestMethod.GET)
	public String memberJoinPro() {
		return "memberjoinform";
	}
	
	@RequestMapping(value="/memberjoin", method=RequestMethod.POST)
	public ModelAndView memberJoinPro(MemberVO memberVO) {
		ModelAndView mav = new ModelAndView();
		memberService.memberJoinProcess(memberVO);
		mav.setViewName("memberjoinform");
		return mav;
	}
	
	
	
}
