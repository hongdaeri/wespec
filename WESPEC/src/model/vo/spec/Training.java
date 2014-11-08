package model.vo.spec;

import java.util.Date;


public class Training  {
	
	//member 변수	
	private String trainingName;				// 교육/연수 내용
	private String trainingPeriod;				// 교육/연수 기간
	private String trainingOrg;					// 교육/연수 기관
	private int regNo;							// 등록번호
	private String publicScope;					// 공개범위
	private Date regDate;						// 등록일
	private String memberId;					// 사용자 ID
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getTrainingName() {
		return trainingName;
	}
	public String getTrainingPeriod() {
		return trainingPeriod;
	}
	public String getTrainingOrg() {
		return trainingOrg;
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
	public void setTrainingName(String trainingName) {
		this.trainingName = trainingName;
	}
	public void setTrainingPeriod(String trainingPeriod) {
		this.trainingPeriod = trainingPeriod;
	}
	public void setTrainingOrg(String trainingOrg) {
		this.trainingOrg = trainingOrg;
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