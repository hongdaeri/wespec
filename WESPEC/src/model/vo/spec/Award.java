package model.vo.spec;

import java.util.Date;

import model.vo.Spec;

public class Award  {
	
	//award 변수
	private String awardDate;				// 수상일
	private String awardSubject;			// 수상내용
	private String awardOrg;				// 수상기관
	private int regNo;						// 등록번호
	private int publicScope;				// 공개범위
	private Date regDate;					// 등록일
	
	public String getAwardDate() {
		return awardDate;
	}
	public void setAwardDate(String awardDate) {
		this.awardDate = awardDate;
	}
	public String getAwardSubject() {
		return awardSubject;
	}
	public void setAwardSubject(String awardSubject) {
		this.awardSubject = awardSubject;
	}
	public String getAwardOrg() {
		return awardOrg;
	}
	public void setAwardOrg(String awardOrg) {
		this.awardOrg = awardOrg;
	}
	public int getRegNo() {
		return regNo;
	}
	public void setRegNo(int regNo) {
		this.regNo = regNo;
	}
	public int getPublicScope() {
		return publicScope;
	}
	public void setPublicScope(int publicScope) {
		this.publicScope = publicScope;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	
	
	
}
