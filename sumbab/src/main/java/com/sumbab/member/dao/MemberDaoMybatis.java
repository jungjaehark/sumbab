package com.sumbab.member.dao;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.sumbab.member.domain.MemberVO;

@Repository
public class MemberDaoMybatis implements MemberDao {

	@Inject
	private SqlSessionTemplate sqlSessionTemplate;
		
	@Override
	public void memberJoinMethod(MemberVO memberVO) {
		sqlSessionTemplate.insert("member.join",memberVO);
	}
	
	@Override
	public MemberVO idCheck(String id) {
		
	MemberVO memberVO = sqlSessionTemplate.selectOne("member.idCheck",id);
	System.out.println("id체크실행2");
	return memberVO;
	}
	

	
	
}
