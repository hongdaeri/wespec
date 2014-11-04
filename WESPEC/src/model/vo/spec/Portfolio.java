package model.vo.spec;

import java.util.Date;

import model.vo.Spec;

public class Portfolio  {
	
	//portfolio 변수			
	private String portfolioName;				// 포트폴리오명
	private String portfolioPeriod;				// 프로젝트기간
	private String portfolioLink;				// 포트폴리오 링크
	private String portfolioThumbnail;			// 썸네일 이미지 URL
	private int regNo;							// 등록번호	
	private int publicScope;					// 공개범위
	private Date regDate;						// 등록일
	
	public String getPortfolioName() {
		return portfolioName;
	}
	public void setPortfolioName(String portfolioName) {
		this.portfolioName = portfolioName;
	}
	public String getPortfolioPeriod() {
		return portfolioPeriod;
	}
	public void setPortfolioPeriod(String portfolioPeriod) {
		this.portfolioPeriod = portfolioPeriod;
	}
	public String getPortfolioLink() {
		return portfolioLink;
	}
	public void setPortfolioLink(String portfolioLink) {
		this.portfolioLink = portfolioLink;
	}
	public String getPortfolioThumbnail() {
		return portfolioThumbnail;
	}
	public void setPortfolioThumbnail(String portfolioThumbnail) {
		this.portfolioThumbnail = portfolioThumbnail;
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
