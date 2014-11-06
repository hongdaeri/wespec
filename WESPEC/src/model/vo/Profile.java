package model.vo;

import java.sql.Date;

public class Profile {
	 
	private String memberId;			// 학생 아이디 : 학번
	private String profileName;			// 학생 이름
	private int profileGrade;			// 학생 학년
	private String profileGender;		// 성별 { 남,여}
	private String profileChiName;		// 학생 한문 이름
	private String profileEngName;		// 학생 영어 이름
	private String profileAddress;		// 학생 거주지
	private String profileBirth;		// 학생 생년월일
	private String profilePhone;		// 학생 휴대폰 번호
	private String profileEmail;		// 학생 이메일주소
	private String profileSnsFacebook;	// 학생 페이스북 주소
	private String profileSnsTwitter;	// 학생 트위터 주소
	private String profileSnsNBlog;		// 학생 네이버블로그 주소
	private String profileSnsInstagram;	// 학생 인스타그램 주소
	private String profileSnsTumblr;	// 학생 텀블러 주소
	private String profileSnsPinterest;	// 학생 핀터레스트 주소	
	private String profilePhotoURL;		// 학생 프로필 사진 URL
	private int hit;					// 학생페이지 조횟수
	private Date regDate;	// 프로필 등록일.
	
	public String getMemberId() {
		return memberId;
	}
	public String getProfileName() {
		return profileName;
	}
	public int getProfileGrade() {
		return profileGrade;
	}
	public String getProfileGender() {
		return profileGender;
	}
	public String getProfileChiName() {
		return profileChiName;
	}
	public String getProfileEngName() {
		return profileEngName;
	}
	public String getProfileAddress() {
		return profileAddress;
	}
	public String getProfileBirth() {
		return profileBirth;
	}
	public String getProfilePhone() {
		return profilePhone;
	}
	public String getProfileEmail() {
		return profileEmail;
	}
	public String getProfileSnsFacebook() {
		return profileSnsFacebook;
	}
	public String getProfileSnsTwitter() {
		return profileSnsTwitter;
	}
	public String getProfileSnsNBlog() {
		return profileSnsNBlog;
	}
	public String getProfileSnsInstagram() {
		return profileSnsInstagram;
	}
	public String getProfileSnsTumblr() {
		return profileSnsTumblr;
	}
	public String getProfileSnsPinterest() {
		return profileSnsPinterest;
	}
	public String getProfilePhotoURL() {
		return profilePhotoURL;
	}
	public int getHit() {
		return hit;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public void setProfileName(String profileName) {
		this.profileName = profileName;
	}
	public void setProfileGrade(int profileGrade) {
		this.profileGrade = profileGrade;
	}
	public void setProfileGender(String profileGender) {
		this.profileGender = profileGender;
	}
	public void setProfileChiName(String profileChiName) {
		this.profileChiName = profileChiName;
	}
	public void setProfileEngName(String profileEngName) {
		this.profileEngName = profileEngName;
	}
	public void setProfileAddress(String profileAddress) {
		this.profileAddress = profileAddress;
	}
	public void setProfileBirth(String profileBirth) {
		this.profileBirth = profileBirth;
	}
	public void setProfilePhone(String profilePhone) {
		this.profilePhone = profilePhone;
	}
	public void setProfileEmail(String profileEmail) {
		this.profileEmail = profileEmail;
	}
	public void setProfileSnsFacebook(String profileSnsFacebook) {
		this.profileSnsFacebook = profileSnsFacebook;
	}
	public void setProfileSnsTwitter(String profileSnsTwitter) {
		this.profileSnsTwitter = profileSnsTwitter;
	}
	public void setProfileSnsNBlog(String profileSnsNBlog) {
		this.profileSnsNBlog = profileSnsNBlog;
	}
	public void setProfileSnsInstagram(String profileSnsInstagram) {
		this.profileSnsInstagram = profileSnsInstagram;
	}
	public void setProfileSnsTumblr(String profileSnsTumblr) {
		this.profileSnsTumblr = profileSnsTumblr;
	}
	public void setProfileSnsPinterest(String profileSnsPinterest) {
		this.profileSnsPinterest = profileSnsPinterest;
	}
	public void setProfilePhotoURL(String profilePhotoURL) {
		this.profilePhotoURL = profilePhotoURL;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
}