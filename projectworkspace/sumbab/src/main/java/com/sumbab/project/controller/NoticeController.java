package com.sumbab.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sumbab.project.model.NoticeService;

@Controller
public class NoticeController {

	private NoticeService noticeService;

	@Autowired
	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}

	@RequestMapping("/mypage/noticePage1")
	public String firstPage(Model model/*,@PathVariable String id*/) {
		String id="admin1";
		model.addAttribute("classify", noticeService.classify(id));
		model.addAttribute("noticeList", noticeService.bringNotice(id));
		return "mypage/noticePage1";
	}
	
	@RequestMapping("/mypage/noticeDetail/{seq}")
	public String noticeDetail(Model model, @PathVariable int seq) {
		model.addAttribute("noticeVo", noticeService.noticeDetail(seq));
		return "mypage/noticeDetail";
	}
}
