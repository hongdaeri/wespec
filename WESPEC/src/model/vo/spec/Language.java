package model.vo.spec;

import java.util.Date;

import model.vo.Spec;

public class Language {
	
	//language 변수					
	private String languageName;				// 언어
	private String languageExamName;			// 언어시험 명
	private String languageExamGrade;			// 언어시험 등급 및 점수
	private String languageExamOrg;				// 시험 기관
	private int regNo;							// 등록번호	
	private int publicScope;					// 공개범위
	private Date regDate;						// 등록일
	
	public String getLanguageName() {
		return languageName;
	}
	public void setLanguageName(String languageName) {
		this.languageName = languageName;
	}
	public String getLanguageExamName() {
		return languageExamName;
	}
	public void setLanguageExamName(String languageExamName) {
		this.languageExamName = languageExamName;
	}
	public String getLanguageExamGrade() {
		return languageExamGrade;
	}
	public void setLanguageExamGrade(String languageExamGrade) {
		this.languageExamGrade = languageExamGrade;
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
	public String getLanguageExamOrg() {
		return languageExamOrg;
	}
	public void setLanguageExamOrg(String languageExamOrg) {
		this.languageExamOrg = languageExamOrg;
	}
	
	
	

}
