package com.sumbab.member.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.sumbab.member.domain.MemberVO;

public class MemberDaoMybatis implements MemberDao {

	private SqlSessionTemplate sqlSession;
	
	public MemberDaoMybatis() {}
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void memberJoinMethod(MemberVO memberVO) {
		sqlSession.insert("member.join",memberVO);
	}
	
	

	
	
}
