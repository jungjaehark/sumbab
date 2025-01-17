package com.sumbab.project.model;

import java.util.List;

public interface NoticeDao {
	
	//?΄?€ ???Έμ§? ?κΈ? ??΄ ?? κ΅¬λΆ λ²νΈ κ°?? Έ?€κΈ?
	public int selectClassify(String id);
	
	//?΄?Ή?? ??΄?? κ³΅μ?κΈ? λΆλ¬?€κΈ?
	public List<Notice> selectNotice(String id);
	
	//?¬?΄?Έ ?΄???Ό κ²½μ° λͺ¨λ  κ³΅μ?κΈ? λΆλ¬?€κΈ?
	public List<Notice> allNotice();
	
	//κ³΅μ? ??Έλ³΄κΈ°
	public Notice noticeDetail(int noticeNum);
	
	//κ³΅μ? ?¬λ¦¬κΈ°
	public void insert(Notice notice);
	
	//? κ³? ?΄?­?? λ¦¬λ·° λ²νΈ λ°μ? κ³΅μ? ?¬λ¦¬κΈ°
	public void fromWarning(Notice notice);
	
	//κ³΅μ? ?? 
	public void update(Notice notice);
	
	//κ³΅μ? ?­? 
	public void delete(int noticeNum);
	
	//?΄?Ή λ¦¬λ·° κ°?? Έ?€κΈ?
	public ReviewVo selectReview(int reviewNum);

}
