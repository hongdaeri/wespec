package model.vo.spec;

import java.util.Date;


public class Academic {
	
	//academic 변수	
	private String academicName;			// 학교명
	private String academicMajor;			// 전공
	private String academicPeriod;			// 재학기간
	private String academicState;			// 상태 : { 졸업, 재학, 중퇴 }
	private String academicScore;			// 성적
	private int regNo;						// 등록번호
	private String publicScope;				// 공개범위
	private Date regDate;					// 등록일
	
	public String getAcademicName() {
		return academicName;
	}
	public void setAcademicName(String academicName) {
		this.academicName = academicName;
	}
	public String getAcademicMajor() {
		return academicMajor;
	}
	public void setAcademicMajor(String academicMajor) {
		this.academicMajor = academicMajor;
	}
	public String getAcademicPeriod() {
		return academicPeriod;
	}
	public void setAcademicPeriod(String academicPeriod) {
		this.academicPeriod = academicPeriod;
	}
	public String getAcademicState() {
		return academicState;
	}
	public void setAcademicState(String academicState) {
		this.academicState = academicState;
	}
	public String getAcademicScore() {
		return academicScore;
	}
	public void setAcademicScore(String academicScore) {
		this.academicScore = academicScore;
	}
	public int getRegNo() {
		return regNo;
	}
	public void setRegNo(int regNo) {
		this.regNo = regNo;
	}

	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getPublicScope() {
		return publicScope;
	}
	public void setPublicScope(String publicScope) {
		this.publicScope = publicScope;
	}
	

	

}
