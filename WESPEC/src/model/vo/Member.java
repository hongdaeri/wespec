package model.vo;

public class Member {
	
	private String memberId;		// 유저 아이디
	private String memberPassword;	// 유저 패스워드
	private String memberName;		// 학생 이름
	private char memberGroup;		// 유저 그룹 : S-학생 , P-교수, A-관리자
	private int studentGrade;		// 학생 학년
	private char studentGender;		// 학생 성별
	private int studentHit;			// 학생 상세 페이지 조횟수
	
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
	public int getStudentGrade() {
		return studentGrade;
	}
	public void setStudentGrade(int studentGrade) {
		this.studentGrade = studentGrade;
	}
	public char getStudentGender() {
		return studentGender;
	}
	public void setStudentGender(char studentGender) {
		this.studentGender = studentGender;
	}
	public int getStudentHit() {
		return studentHit;
	}
	public void setStudentHit(int studentHit) {
		this.studentHit = studentHit;
	}

	


}