package model.vo.spec;

import java.util.Date;

public class Language {
	
	//language 변수					
	private String languageName;				// 언어
	private String languageExamName;			// 언어시험 명
	private String languageExamGrade;			// 언어시험 등급 및 점수
	private String languageExamOrg;				// 시험 기관
	private int regNo;							// 등록번호	
	private String publicScope;					// 공개범위
	private Date regDate;						// 등록일
	
	public String getLanguageName() {
		return languageName;
	}
	public String getLanguageExamName() {
		return languageExamName;
	}
	public String getLanguageExamGrade() {
		return languageExamGrade;
	}
	public String getLanguageExamOrg() {
		return languageExamOrg;
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
	public void setLanguageName(String languageName) {
		this.languageName = languageName;
	}
	public void setLanguageExamName(String languageExamName) {
		this.languageExamName = languageExamName;
	}
	public void setLanguageExamGrade(String languageExamGrade) {
		this.languageExamGrade = languageExamGrade;
	}
	public void setLanguageExamOrg(String languageExamOrg) {
		this.languageExamOrg = languageExamOrg;
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
