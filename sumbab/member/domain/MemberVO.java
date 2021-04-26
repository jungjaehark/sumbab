package com.sumbab.member.domain;

import java.sql.Timestamp;

public class MemberVO {

	private String id;
	private String pwd;
	private String email;
	private int classify;
	private Timestamp regDate;
	
	public MemberVO() {}
	public MemberVO(String id,String pwd,String email,
			int classify) {
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.classify = classify;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}	
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getClassify() {
		return classify;
	}
	public void setClassify(int classify) {
		this.classify = classify;
	}
	
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	
	
}