package model.vo;

public class Member {
	
	private String memberId;		// 유저 아이디
	private String memberPassword;	// 유저 패스워드
	private String memberName;		// 학생 이름
	private char memberGroup;		// 유저 그룹 : S-학생 , P-교수, A-관리자
	private int memberGrade;		// 학생 학년
	private int memberHit;			// 학생 상세 페이지 조횟수
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPassword() {
		return memberPassword;
	}
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public char getMemberGroup() {
		return memberGroup;
	}
	public void setMemberGroup(char memberGroup) {
		this.memberGroup = memberGroup;
	}
	public int getMemberGrade() {
		return memberGrade;
	}
	public void setMemberGrade(int memberGrade) {
		this.memberGrade = memberGrade;
	}
	public int getMemberHit() {
		return memberHit;
	}
	public void setMemberHit(int memberHit) {
		this.memberHit = memberHit;
	}
	
	


}