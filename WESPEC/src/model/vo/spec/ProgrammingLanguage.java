package model.vo.spec;

import java.util.Date;


public class ProgrammingLanguage {
	
	//language 변수
	private String languageName;			// 프로그래밍언어 명
	private String languageLevel;			// 프로그래밍언어 수준
	private int regNo;						// 등록번호
	private String publicScope;				// 공개범위
	private Date regDate;					// 등록일
	private String memberId;				// 사용자 ID
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getLanguageName() {
		return languageName;
	}
	public String getLanguageLevel() {
		return languageLevel;
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
	public void setLanguageLevel(String languageLevel) {
		this.languageLevel = languageLevel;
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
