package com.sumbab.member.service;

import com.sumbab.member.dao.MemberDao;
import com.sumbab.member.domain.MemberVO;

public class MemberServiceImpl implements MemberService {

	private MemberDao memberDao;
	public void setDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	@Override
	public void memberJoinProcess(MemberVO memberVO) {
		memberDao.memberJoinMethod(memberVO);
	}
	
	
	
}
