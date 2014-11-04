package model.vo.spec;

import java.util.Date;

import model.vo.Spec;

public class Trainning extends Spec {
	
	//member 변수	
	private String trainingName;				// 교육/연수 내용
	private String trainingPeriod;				// 교육/연수 기간
	private String trainingOrganization;		// 교육/연수 기관
	private int regNo;							// 등록번호
	private int publicScope;					// 공개범위
	private Date regDate;						// 등록일
	public String getTrainingName() {
		return trainingName;
	}
	public void setTrainingName(String trainingName) {
		this.trainingName = trainingName;
	}
	public String getTrainingPeriod() {
		return trainingPeriod;
	}
	public void setTrainingPeriod(String trainingPeriod) {
		this.trainingPeriod = trainingPeriod;
	}
	public String getTrainingOrganization() {
		return trainingOrganization;
	}
	public void setTrainingOrganization(String trainingOrganization) {
		this.trainingOrganization = trainingOrganization;
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