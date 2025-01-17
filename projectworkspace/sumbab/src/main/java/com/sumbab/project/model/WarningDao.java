package com.sumbab.project.model;

import java.util.List;

public interface WarningDao {

	//? κ³? ?΄?­
	public List<WarningVo> allReport();
	
	//? κ³? ??Έλ³΄κΈ°
	public WarningVo reportDetail(int warningNum);
	
	//classify λ³?κ²?
	public void changeClassify(ChangeClassifyDto classifyDto);
	
	//? κ³? ?­? 
	public void delete(int warningNum);
	
	//? κ³? ? ?
	public void insert(WarningDto warningDto);
	
	//? μ§? κ³μ  κ°?? Έ?€κΈ?
	public List<MemberClassifyVo> selectMember();
	
	//? μ§? ?΄? 
	public void updateMemberClassify(String id);
	
}
