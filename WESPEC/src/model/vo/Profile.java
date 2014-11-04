package model.vo;

import java.sql.Date;

public class Profile {
	
	private String memberId;			// 학생 아이디
	private String profileChiName;		// 학생 한문 이름
	private String profileEngName;		// 학생 영어 이름
	private String profileAdress;		// 학생 거주지
	private String profileBirth;		// 학생 생년월일
	private String profilePhone;		// 학생 휴대폰 번호
	private String profileEmail;		// 학생 이메일주소
	private String profileSns;			// 학생 사용 SNS
	private String profileSnsFacebook;	// 학생 페이스북 주소
	private String profileSnsTwitter;	// 학생 트위터 주소
	private String profileSnsNBlog;		// 학생 네이버블로그 주소
	private String profileSnsInstagram;	// 학생 인스타그램 주소
	private String profileSnsTumblr;	// 학생 텀블러 주소
	private String profileSnsPinterest;	// 학생 핀터레스트 주소	
	private String profilePhotoURL;		// 학생 프로필 사진 URL
	private Date profileRegistration;	// 프로필 등록일.
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getProfileChiName() {
		return profileChiName;
	}
	public void setProfileChiName(String profileChiName) {
		this.profileChiName = profileChiName;
	}
	public String getProfileEngName() {
		return profileEngName;
	}
	public void setProfileEngName(String profileEngName) {
		this.profileEngName = profileEngName;
	}
	public String getProfileAdress() {
		return profileAdress;
	}
	public void setProfileAdress(String profileAdress) {
		this.profileAdress = profileAdress;
	}
	public String getProfileBirth() {
		return profileBirth;
	}
	public void setProfileBirth(String profileBirth) {
		this.profileBirth = profileBirth;
	}
	public String getProfilePhone() {
		return profilePhone;
	}
	public void setProfilePhone(String profilePhone) {
		this.profilePhone = profilePhone;
	}
	public String getProfileEmail() {
		return profileEmail;
	}
	public void setProfileEmail(String profileEmail) {
		this.profileEmail = profileEmail;
	}
	public String getProfileSns() {
		return profileSns;
	}
	public void setProfileSns(String profileSns) {
		this.profileSns = profileSns;
	}
	public String getProfileSnsFacebook() {
		return profileSnsFacebook;
	}
	public void setProfileSnsFacebook(String profileSnsFacebook) {
		this.profileSnsFacebook = profileSnsFacebook;
	}
	public String getProfileSnsTwitter() {
		return profileSnsTwitter;
	}
	public void setProfileSnsTwitter(String profileSnsTwitter) {
		this.profileSnsTwitter = profileSnsTwitter;
	}
	public String getProfileSnsNBlog() {
		return profileSnsNBlog;
	}
	public void setProfileSnsNBlog(String profileSnsNBlog) {
		this.profileSnsNBlog = profileSnsNBlog;
	}
	public String getProfileSnsInstagram() {
		return profileSnsInstagram;
	}
	public void setProfileSnsInstagram(String profileSnsInstagram) {
		this.profileSnsInstagram = profileSnsInstagram;
	}
	public String getProfileSnsTumblr() {
		return profileSnsTumblr;
	}
	public void setProfileSnsTumblr(String profileSnsTumblr) {
		this.profileSnsTumblr = profileSnsTumblr;
	}
	public String getProfileSnsPinterest() {
		return profileSnsPinterest;
	}
	public void setProfileSnsPinterest(String profileSnsPinterest) {
		this.profileSnsPinterest = profileSnsPinterest;
	}
	public String getProfilePhotoURL() {
		return profilePhotoURL;
	}
	public void setProfilePhotoURL(String profilePhotoURL) {
		this.profilePhotoURL = profilePhotoURL;
	}
	public Date getProfileRegistration() {
		return profileRegistration;
	}
	public void setProfileRegistration(Date profileRegistration) {
		this.profileRegistration = profileRegistration;
	}
}