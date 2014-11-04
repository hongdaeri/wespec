package model.vo.spec;

import java.util.Date;

import model.vo.Spec;


public class Certificate extends Spec{
	
	// certificate 변수	
	private String certificateName;				// 자격증 명
	private String certificateDate;				// 자격증 취득일
	private String certificateGrade;			// 자격증 등급
	private String certificateOrganization;		// 기관
	private int regNo;							// 등록번호
	private int publicScope;					// 공개범위
	private Date regDate;						// 등록일
	
	public String getCertificateName() {
		return certificateName;
	}
	public void setCertificateName(String certificateName) {
		this.certificateName = certificateName;
	}
	public String getCertificateDate() {
		return certificateDate;
	}
	public void setCertificateDate(String certificateDate) {
		this.certificateDate = certificateDate;
	}
	public String getCertificateGrade() {
		return certificateGrade;
	}
	public void setCertificateGrade(String certificateGrade) {
		this.certificateGrade = certificateGrade;
	}
	public String getCertificateOrganization() {
		return certificateOrganization;
	}
	public void setCertificateOrganization(String certificateOrganization) {
		this.certificateOrganization = certificateOrganization;
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
