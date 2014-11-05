package model.vo.spec;

import java.util.Date;

import model.vo.Spec;

public class Military  {
	//militray 변수
	
	private int militaryDone;				// 필&미필
	private String militaryReason;				// 미필사유
	private String militaryGroup;				// 군별
	private String militaryRank;				// 계급
	private String militaryWork;				// 병과
	private String militaryPeriod;				// 복무기간	
	private int regNo;							// 등록번호
	private int publicScope;					// 공개범위
	private Date regDate;						// 등록일
	
	public int isMilitaryDone() {
		return militaryDone;
	}
	public void setMilitaryDone(int militaryDone) {
		this.militaryDone = militaryDone;
	}
	public String getMilitaryReason() {
		return militaryReason;
	}
	public void setMilitaryReason(String militaryReason) {
		this.militaryReason = militaryReason;
	}
	public String getMilitaryGroup() {
		return militaryGroup;
	}
	public void setMilitaryGroup(String militaryGroup) {
		this.militaryGroup = militaryGroup;
	}
	public String getMilitaryRank() {
		return militaryRank;
	}
	public void setMilitaryRank(String militaryRank) {
		this.militaryRank = militaryRank;
	}
	public String getMilitaryWork() {
		return militaryWork;
	}
	public void setMilitaryWork(String militaryWork) {
		this.militaryWork = militaryWork;
	}
	public String getMilitaryPeriod() {
		return militaryPeriod;
	}
	public void setMilitaryPeriod(String militaryPeriod) {
		this.militaryPeriod = militaryPeriod;
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
