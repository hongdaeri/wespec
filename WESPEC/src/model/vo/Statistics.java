package model.vo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* Statistics Value Object */
public class Statistics {
	
	// 전체 PART
	private int totalStudentCount;						// 전체학생수 (4학년제외)
	private int totalSpecRegCount;						// 이력을 등록한 학생의 총 수
	private double totalRegRatio;						// 이력등록률
	
	// 프로필 PART
	
	// 토익 PART
	private int avgToeicScore;						 	// 학생들 평균 토익 점수
	private int topmostToeicScore;						// 토익 최고 점수
	private int totalRegStudentCount_toeic;				// 토익항목 등록학생 수
	public List<String> toeicKingName;					// 토익왕 3명
	public List<Integer> toeicKingScore;				// 토익왕 3명의 점수
	public List<String> toeicKingId;					// 토익왕 3명의 점수
	public List<String> toeicKingPhoto;					// 토익왕 3명의 점수
	public List<Integer> distributionMap_toeic;			// 토익을 등록한 학생중 점수대별 도표
	
	// 자격증 PART
	private double avgCertificateCount;					// 학생들 평균 자격증 갯수
	private int totalRegStudentCount_certificate;		// 자격증항목 등록학생수
	public List<String> certificateKingName;			// 자격증 왕 3명의 이름
	public List<Integer>  certificateKingCount;			// 자격증 왕 3명의 자격증 등록갯수
	public List<String> certificateKingId;				// 자격증 왕 3명의 아이디
	public List<String> certificateKingPhoto;			// 자격증 왕 3명의 사진
	public List<Integer> distributionMap_certi;			// 자격증을 등록한 학생중 1개~10개까지 도표
	
	// 포트폴리오 PART
	private double avgPortfolioCount;					// 학생들 평균 포트폴리오 갯수
	private int totalRegStudentCount_portfolio;			// 포트폴리오를 등록한 학생의 수
	public List<String> portfolioKingName;				// 포트폴리오 왕 3명의 이름
	public List<String> portfolioKingId;				// 포트폴리오 왕 3명의 아이디
	public List<String> portfolioKingPhoto;				// 포트폴리오 왕 3명의 사진
	public List<Integer> portfolioKingCount;			// 포트폴리오  왕 3명의 포트폴리오 갯수
	public List<Integer> distributionMap_portfolio; 	// 포트폴리오를 등록한 학생중 1개~10개까지 도표

	// 수상실적 PART
	private double avgAwardCount;						// 학생들 평균 수상실적 갯수
	private int totalRegStudentCount_award;				// 수상실적을 등록한 학생의 수
	public List<String> awardKingName;					// 수상실적 왕 3명의 이름
	public List<String> awardKingId;					// 수상실적 왕 3명의 아이디
	public List<String> awardKingPhoto;					// 수상실적 왕 3명의 사진
	public List<Integer> awardKingCount;				// 수상실적  왕 3명의 수상실적 갯수
	public List<Integer> distributionMap_award;			// 수상실적을 등록한 학생중 1개~10개까지 도표

	// 소프트웨어개발능력 PART
	private double avgSwAbilityCount;									// 학생들 평균 소프트웨어능력 갯수
	public List<Integer> distributionMap_swAbility;						// 소프트웨어개발능력 등록갯수 도표. 
	public HashMap<String, Integer> totalRegStudentCountMap_SWAbility; 	// 언어명, 가능학생수
	public HashMap<String, Integer> swAbilityRank; 						// 선호 언어명, 가능학생수
	
	
	// 병역 PART
	private int totalStudentCount_military;			// 전체 예비군 수
	
	// 생성자
	public Statistics()
	{
		// 토익
		toeicKingId = new ArrayList<String>();
		toeicKingName = new ArrayList<String>();
		toeicKingPhoto = new ArrayList<String>(); 					//3명
		toeicKingScore = new ArrayList<Integer>();					//3명
		distributionMap_toeic= new ArrayList<Integer>();			// 100~900점대 
		
		//자격증
		certificateKingName = new ArrayList<String>();	
		certificateKingPhoto = new ArrayList<String>();	
		certificateKingId = new ArrayList<String>();	
		certificateKingCount = new ArrayList<Integer>();			
		distributionMap_certi = new ArrayList<Integer>();			
		
		//포트폴리오
		portfolioKingName = new ArrayList<String>();	
		portfolioKingId = new ArrayList<String>();
		portfolioKingPhoto = new ArrayList<String>();
		portfolioKingCount = new ArrayList<Integer>();						
		distributionMap_portfolio = new ArrayList<Integer>();	 	
		
		// 수상실적
		awardKingName = new ArrayList<String>();
		awardKingId = new ArrayList<String>();
		awardKingPhoto = new ArrayList<String>();
		awardKingCount = new ArrayList<Integer>();		
		distributionMap_award = new ArrayList<Integer>();			
		// 소프트웨어 개발능력
		distributionMap_swAbility = new ArrayList<Integer>();		
		totalRegStudentCountMap_SWAbility = new HashMap<String, Integer>();
		swAbilityRank = new HashMap<String, Integer>();
	}

	public int getTotalStudentCount() {
		return totalStudentCount;
	}

	public int getTotalSpecRegCount() {
		return totalSpecRegCount;
	}

	public double getTotalRegRatio() {
		return totalRegRatio;
	}

	public int getAvgToeicScore() {
		return avgToeicScore;
	}

	public int getTopmostToeicScore() {
		return topmostToeicScore;
	}

	public int getTotalRegStudentCount_toeic() {
		return totalRegStudentCount_toeic;
	}

	public List<String> getToeicKingName() {
		return toeicKingName;
	}

	public List<Integer> getToeicKingScore() {
		return toeicKingScore;
	}

	public List<String> getToeicKingId() {
		return toeicKingId;
	}

	public List<String> getToeicKingPhoto() {
		return toeicKingPhoto;
	}

	public List<Integer> getDistributionMap_toeic() {
		return distributionMap_toeic;
	}

	public double getAvgCertificateCount() {
		return avgCertificateCount;
	}

	public int getTotalRegStudentCount_certificate() {
		return totalRegStudentCount_certificate;
	}

	public List<String> getCertificateKingName() {
		return certificateKingName;
	}

	public List<Integer> getCertificateKingCount() {
		return certificateKingCount;
	}

	public List<String> getCertificateKingId() {
		return certificateKingId;
	}

	public List<String> getCertificateKingPhoto() {
		return certificateKingPhoto;
	}

	public List<Integer> getDistributionMap_certi() {
		return distributionMap_certi;
	}

	public double getAvgPortfolioCount() {
		return avgPortfolioCount;
	}

	public int getTotalRegStudentCount_portfolio() {
		return totalRegStudentCount_portfolio;
	}

	public List<String> getPortfolioKingName() {
		return portfolioKingName;
	}

	public List<String> getPortfolioKingId() {
		return portfolioKingId;
	}

	public List<String> getPortfolioKingPhoto() {
		return portfolioKingPhoto;
	}

	public List<Integer> getPortfolioKingCount() {
		return portfolioKingCount;
	}

	public List<Integer> getDistributionMap_portfolio() {
		return distributionMap_portfolio;
	}

	public double getAvgAwardCount() {
		return avgAwardCount;
	}

	public int getTotalRegStudentCount_award() {
		return totalRegStudentCount_award;
	}

	public List<String> getAwardKingName() {
		return awardKingName;
	}

	public List<String> getAwardKingId() {
		return awardKingId;
	}

	public List<String> getAwardKingPhoto() {
		return awardKingPhoto;
	}

	public List<Integer> getAwardKingCount() {
		return awardKingCount;
	}

	public List<Integer> getDistributionMap_award() {
		return distributionMap_award;
	}

	public double getAvgSwAbilityCount() {
		return avgSwAbilityCount;
	}

	public List<Integer> getDistributionMap_swAbility() {
		return distributionMap_swAbility;
	}

	public HashMap<String, Integer> getTotalRegStudentCountMap_SWAbility() {
		return totalRegStudentCountMap_SWAbility;
	}

	public HashMap<String, Integer> getSwAbilityRank() {
		return swAbilityRank;
	}

	public int getTotalStudentCount_military() {
		return totalStudentCount_military;
	}

	public void setTotalStudentCount(int totalStudentCount) {
		this.totalStudentCount = totalStudentCount;
	}

	public void setTotalSpecRegCount(int totalSpecRegCount) {
		this.totalSpecRegCount = totalSpecRegCount;
	}

	public void setTotalRegRatio(double totalRegRatio) {
		this.totalRegRatio = totalRegRatio;
	}

	public void setAvgToeicScore(int avgToeicScore) {
		this.avgToeicScore = avgToeicScore;
	}

	public void setTopmostToeicScore(int topmostToeicScore) {
		this.topmostToeicScore = topmostToeicScore;
	}

	public void setTotalRegStudentCount_toeic(int totalRegStudentCount_toeic) {
		this.totalRegStudentCount_toeic = totalRegStudentCount_toeic;
	}

	public void setToeicKingName(List<String> toeicKingName) {
		this.toeicKingName = toeicKingName;
	}

	public void setToeicKingScore(List<Integer> toeicKingScore) {
		this.toeicKingScore = toeicKingScore;
	}

	public void setToeicKingId(List<String> toeicKingId) {
		this.toeicKingId = toeicKingId;
	}

	public void setToeicKingPhoto(List<String> toeicKingPhoto) {
		this.toeicKingPhoto = toeicKingPhoto;
	}

	public void setDistributionMap_toeic(List<Integer> distributionMap_toeic) {
		this.distributionMap_toeic = distributionMap_toeic;
	}

	public void setAvgCertificateCount(double avgCertificateCount) {
		this.avgCertificateCount = avgCertificateCount;
	}

	public void setTotalRegStudentCount_certificate(
			int totalRegStudentCount_certificate) {
		this.totalRegStudentCount_certificate = totalRegStudentCount_certificate;
	}

	public void setCertificateKingName(List<String> certificateKingName) {
		this.certificateKingName = certificateKingName;
	}

	public void setCertificateKingCount(List<Integer> certificateKingCount) {
		this.certificateKingCount = certificateKingCount;
	}

	public void setCertificateKingId(List<String> certificateKingId) {
		this.certificateKingId = certificateKingId;
	}

	public void setCertificateKingPhoto(List<String> certificateKingPhoto) {
		this.certificateKingPhoto = certificateKingPhoto;
	}

	public void setDistributionMap_certi(List<Integer> distributionMap_certi) {
		this.distributionMap_certi = distributionMap_certi;
	}

	public void setAvgPortfolioCount(double avgPortfolioCount) {
		this.avgPortfolioCount = avgPortfolioCount;
	}

	public void setTotalRegStudentCount_portfolio(int totalRegStudentCount_portfolio) {
		this.totalRegStudentCount_portfolio = totalRegStudentCount_portfolio;
	}

	public void setPortfolioKingName(List<String> portfolioKingName) {
		this.portfolioKingName = portfolioKingName;
	}

	public void setPortfolioKingId(List<String> portfolioKingId) {
		this.portfolioKingId = portfolioKingId;
	}

	public void setPortfolioKingPhoto(List<String> portfolioKingPhoto) {
		this.portfolioKingPhoto = portfolioKingPhoto;
	}

	public void setPortfolioKingCount(List<Integer> portfolioKingCount) {
		this.portfolioKingCount = portfolioKingCount;
	}

	public void setDistributionMap_portfolio(List<Integer> distributionMap_portfolio) {
		this.distributionMap_portfolio = distributionMap_portfolio;
	}

	public void setAvgAwardCount(double avgAwardCount) {
		this.avgAwardCount = avgAwardCount;
	}

	public void setTotalRegStudentCount_award(int totalRegStudentCount_award) {
		this.totalRegStudentCount_award = totalRegStudentCount_award;
	}

	public void setAwardKingName(List<String> awardKingName) {
		this.awardKingName = awardKingName;
	}

	public void setAwardKingId(List<String> awardKingId) {
		this.awardKingId = awardKingId;
	}

	public void setAwardKingPhoto(List<String> awardKingPhoto) {
		this.awardKingPhoto = awardKingPhoto;
	}

	public void setAwardKingCount(List<Integer> awardKingCount) {
		this.awardKingCount = awardKingCount;
	}

	public void setDistributionMap_award(List<Integer> distributionMap_award) {
		this.distributionMap_award = distributionMap_award;
	}

	public void setAvgSwAbilityCount(double avgSwAbilityCount) {
		this.avgSwAbilityCount = avgSwAbilityCount;
	}

	public void setDistributionMap_swAbility(List<Integer> distributionMap_swAbility) {
		this.distributionMap_swAbility = distributionMap_swAbility;
	}

	public void setTotalRegStudentCountMap_SWAbility(
			HashMap<String, Integer> totalRegStudentCountMap_SWAbility) {
		this.totalRegStudentCountMap_SWAbility = totalRegStudentCountMap_SWAbility;
	}

	public void setSwAbilityRank(HashMap<String, Integer> swAbilityRank) {
		this.swAbilityRank = swAbilityRank;
	}

	public void setTotalStudentCount_military(int totalStudentCount_military) {
		this.totalStudentCount_military = totalStudentCount_military;
	}

	
}
