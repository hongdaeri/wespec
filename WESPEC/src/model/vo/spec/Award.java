package model.vo.spec;

import java.util.Date;

public class Award  {
	
	//award 변수
	private String awardDate;				// 수상일
	private String awardSubject;			// 수상내용
	private String awardOrg;				// 수상기관
	private int regNo;						// 등록번호
	private String publicScope;				// 공개범위
	private Date regDate;					// 등록일
	
	public String getAwardDate() {
		return awardDate;
	}
	public String getAwardSubject() {
		return awardSubject;
	}
	public String getAwardOrg() {
		return awardOrg;
	}
	public int getRegNo() {
		return regNo;
	}
	public String getPublicScope() {
		return publicScope;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setAwardDate(String awardDate) {
		this.awardDate = awardDate;
	}
	public void setAwardSubject(String awardSubject) {
		this.awardSubject = awardSubject;
	}
	public void setAwardOrg(String awardOrg) {
		this.awardOrg = awardOrg;
	}
	public void setRegNo(int regNo) {
		this.regNo = regNo;
	}
	public void setPublicScope(String publicScope) {
		this.publicScope = publicScope;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}                    
	
}
