package model.vo.spec;

import java.util.Date;


public class Certificate {
	
	// certificate 변수	
	private String certificateName;				// 자격증 명
	private String certificateDate;				// 자격증 취득일
	private String certificateGrade;			// 자격증 등급
	private String certificateOrg;				// 기관
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
	public String getCertificateName() {
		return certificateName;
	}
	public String getCertificateDate() {
		return certificateDate;
	}
	public String getCertificateGrade() {
		return certificateGrade;
	}
	public String getCertificateOrg() {
		return certificateOrg;
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
	public void setCertificateName(String certificateName) {
		this.certificateName = certificateName;
	}
	public void setCertificateDate(String certificateDate) {
		this.certificateDate = certificateDate;
	}
	public void setCertificateGrade(String certificateGrade) {
		this.certificateGrade = certificateGrade;
	}
	public void setCertificateOrg(String certificateOrg) {
		this.certificateOrg = certificateOrg;
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
