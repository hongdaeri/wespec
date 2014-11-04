package model.vo.spec;

import java.util.Date;

import model.vo.Spec;

public class ProgrammingLanguage {
	
	//language 변수
	private String languageName;			// 프로그래밍언어 명
	private String languageLevel;			// 프로그래밍언어 수준
	private int regNo;						// 등록번호
	private int publicScope;				// 공개범위
	private Date regDate;					// 등록일
	
	public String getLanguageName() {
		return languageName;
	}
	public void setLanguageName(String languageName) {
		this.languageName = languageName;
	}
	public String getLanguageLevel() {
		return languageLevel;
	}
	public void setLanguageLevel(String languageLevel) {
		this.languageLevel = languageLevel;
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
