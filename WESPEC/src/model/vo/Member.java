package model.vo;

import java.sql.Timestamp;

public class Member {
	
	private String memberId;		// 유저 아이디
	private String memberPassword;	// 유저 패스워드
	private String memberGroup;		// 유저 그룹 : S-학생 , P-교수, A-관리자
	private Timestamp regDate;		// 가입일.
	
	public String getMemberId() {
		return memberId;
	}
	public String getMemberPassword() {
		return memberPassword;
	}
	public String getMemberGroup() {
		return memberGroup;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}
	public void setMemberGroup(String memberGroup) {
		this.memberGroup = memberGroup;
	}
	public void setRegDate(Timestamp timestamp) {
		this.regDate = timestamp;
	}
}