package model.vo.spec;

import java.util.Date;



public class Military  {
	//militray 변수
	
	private int militaryDone;					// 필&미필
	private String militaryReason;				// 미필사유
	private String militaryGroup;				// 군별
	private String militaryRank;				// 계급
	private String militaryWork;				// 병과
	private String militaryPeriod;				// 복무기간	
	private int regNo;							// 등록번호
	private String publicScope;					// 공개범위
	private boolean isRegister;					// 병역 등록여부
	private Date regDate;						// 등록일
	private String memberId;					// 사용자 ID
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getMilitaryDone() {
		return militaryDone;
	}
	public String getMilitaryReason() {
		return militaryReason;
	}
	public String getMilitaryGroup() {
		return militaryGroup;
	}
	public String getMilitaryRank() {
		return militaryRank;
	}
	public String getMilitaryWork() {
		return militaryWork;
	}
	public String getMilitaryPeriod() {
		return militaryPeriod;
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
	public void setMilitaryDone(int militaryDone) {
		this.militaryDone = militaryDone;
	}
	public void setMilitaryReason(String militaryReason) {
		this.militaryReason = militaryReason;
	}
	public void setMilitaryGroup(String militaryGroup) {
		this.militaryGroup = militaryGroup;
	}
	public void setMilitaryRank(String militaryRank) {
		this.militaryRank = militaryRank;
	}
	public void setMilitaryWork(String militaryWork) {
		this.militaryWork = militaryWork;
	}
	public void setMilitaryPeriod(String militaryPeriod) {
		this.militaryPeriod = militaryPeriod;
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
	public boolean isRegister() {
		return isRegister;
	}
	public void setRegister(boolean isRegister) {
		this.isRegister = isRegister;
	}
}
