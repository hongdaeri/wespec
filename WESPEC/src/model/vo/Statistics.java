package model.vo;

/* Statistics Value Object */
public class Statistics {
	
	// 전체 PART
	private int totalStudentCount;					// 전체학생수 (4학년제외)
	private int totalSpecRegCount;					// 이력을 등록한 학생의 총 수
	
	// 프로필 PART
	
	// 토익 PART
	private double avgToeicScore;					// 학생들 평균 토익 점수
	private int topmostToeicScore;					// 토익 최고 점수
	private int totalRegStudentCount_toeic;			// 토익항목 등록학생 수
	private String[] toeicKing;						// 토익왕 3명
	private int[] toeicKingScore;					// 토익왕 3명의 점수
	private int[] totalRegStudentCountGraph_toeic;	// 토익을 등록한 학생중 점수대별 도표
	
	// 자격증 PART
	private double avgCertificateCount;				// 학생들 평균 자격증 갯수
	private int totalRegStudentCount_certificate;	// 자격증항목 등록학생수
	private String[] certificateKing;				// 자격증 왕 3명
	private int[]  certificateKingCount;			// 자격증 왕 3명의 자격증 등록갯수
	private int[] totalRegStudentCountGraph_certi;	// 자격증을 등록한 학생중 1개~10개까지 도표
	
	// 포트폴리오 PART
	private double avgPortfolioCount;					// 학생들 평균 포트폴리오 갯수
	private int totalRegStudentCount_portfolio;			// 포트폴리오를 등록한 학생의 수
	private String[] portfolioKing;						// 포트폴리오 왕 3명
	private int[] portfolioKingCount;					// 포트폴리오  왕 3명의 포트폴리오 갯수
	private int[] totalRegStudentCountGraph_portfolio; 	// 포트폴리오를 등록한 학생중 1개~10개까지 도표

	// 수상실적 PART
	private double avgAwardCount;					// 학생들 평균 수상실적 갯수
	private int totalRegStudentCount_award;			// 수상실적을 등록한 학생의 수
	private int[] totalRegStudentCountGraph_award;	// 수상실적을 등록한 학생중 1개~10개까지 도표

	// 소프트웨어개발능력 PART
	private double avgSwAbilityCount;				// 학생들 평균 소프트웨어능력 갯수
	private int[] totalRegStudentCountGraph_swAbility;	// 소프트웨어개발능력 등록갯수 도표. 
	private int totalStudentCount_c;				// c언어 가능학생 수
	private int totalStudentCount_cpp;				// c++ 가능학생 수
	private int totalStudentCount_cSharp;			// c# 가능학생 수
	private int totalStudentCount_python;			// 파이썬 가능학생 수
	private int totalStudentCount_java;				// 자바 가능학생 수
	private int totalStudentCount_jsp;				// jsp 가능학생 수 
	private int totalStudentCount_visualBasic;		// vB 가능학생 수
	private int totalStudentCount_lisp;				// LISP 가능학생 수
	private int totalStudentCount_php;				// PHP가능학생 수
	private int totalStudentCount_asp;				// ASP 가능학생 수
	private int totalStudentCount_ruby;				// 루비 가능학생 수
	private int totalStudentCount_html;				// html 가능학생 수
	private int totalStudentCount_js;				// 자바스크립트 가능학생 수
	private int totalStudentCount_nodeJs;			// nodejs 가능학생 수
	private int totalStudentCount_android;			// 안드로이드 가능학생 수
	private int totalStudentCount_oracle;			// 오라클 가능학생 수
	private int totalStudentCount_swift;			// swift 가능학생 수
	private int totalStudentCount_objectiveC;		// 오브젝트C 가능학생 수
	private int totalStudentCount_delphi; 			// 델파이 가능학생 수
	
	
	// 병역 PART
	private int totalStudentCount_military;			// 전체 예비군 수
	
	// 생성자
	public Statistics()
	{
		// 토익
		toeicKing = new String[3];							//3명
		toeicKingScore = new int[3];						//3명
		totalRegStudentCountGraph_toeic = new int[9];		// 100~900점대 
		
		//자격증
		certificateKing = new String[3];					//3명
		certificateKingCount = new int[3];					//3명
		totalRegStudentCountGraph_certi = new int[11];		// 1개~10개 , 10개이상
		
		//포트폴리오
		portfolioKing = new String[3];						//3명
		portfolioKingCount = new int[3];					//3명
		totalRegStudentCountGraph_portfolio = new int[11]; 	// 1개~10개 , 10개이상
		
		// 수상실적
		totalRegStudentCountGraph_award = new int[11];		// 1개~10개 , 10개이상
		totalRegStudentCountGraph_swAbility = new int [11];	// 1개~10개 , 10개이상	
	}

	public int getTotalStudentCount() {
		return totalStudentCount;
	}

	public int getTotalSpecRegCount() {
		return totalSpecRegCount;
	}

	public double getAvgToeicScore() {
		return avgToeicScore;
	}

	public int getTopmostToeicScore() {
		return topmostToeicScore;
	}

	public int getTotalRegStudentCount_toeic() {
		return totalRegStudentCount_toeic;
	}

	public String[] getToeicKing() {
		return toeicKing;
	}

	public int[] getToeicKingScore() {
		return toeicKingScore;
	}

	public int[] getTotalRegStudentCountGraph_toeic() {
		return totalRegStudentCountGraph_toeic;
	}

	public double getAvgCertificateCount() {
		return avgCertificateCount;
	}

	public int getTotalRegStudentCount_certificate() {
		return totalRegStudentCount_certificate;
	}

	public String[] getCertificateKing() {
		return certificateKing;
	}

	public int[] getCertificateKingCount() {
		return certificateKingCount;
	}

	public int[] getTotalRegStudentCountGraph_certi() {
		return totalRegStudentCountGraph_certi;
	}

	public double getAvgPortfolioCount() {
		return avgPortfolioCount;
	}

	public int getTotalRegStudentCount_portfolio() {
		return totalRegStudentCount_portfolio;
	}

	public String[] getPortfolioKing() {
		return portfolioKing;
	}

	public int[] getPortfolioKingCount() {
		return portfolioKingCount;
	}

	public int[] getTotalRegStudentCountGraph_portfolio() {
		return totalRegStudentCountGraph_portfolio;
	}

	public double getAvgAwardCount() {
		return avgAwardCount;
	}

	public int getTotalRegStudentCount_award() {
		return totalRegStudentCount_award;
	}

	public int[] getTotalRegStudentCountGraph_award() {
		return totalRegStudentCountGraph_award;
	}

	public double getAvgSwAbilityCount() {
		return avgSwAbilityCount;
	}

	public int[] getTotalRegStudentCountGraph_swAbility() {
		return totalRegStudentCountGraph_swAbility;
	}

	public int getTotalStudentCount_c() {
		return totalStudentCount_c;
	}

	public int getTotalStudentCount_cpp() {
		return totalStudentCount_cpp;
	}

	public int getTotalStudentCount_cSharp() {
		return totalStudentCount_cSharp;
	}

	public int getTotalStudentCount_python() {
		return totalStudentCount_python;
	}

	public int getTotalStudentCount_java() {
		return totalStudentCount_java;
	}

	public int getTotalStudentCount_jsp() {
		return totalStudentCount_jsp;
	}

	public int getTotalStudentCount_visualBasic() {
		return totalStudentCount_visualBasic;
	}

	public int getTotalStudentCount_lisp() {
		return totalStudentCount_lisp;
	}

	public int getTotalStudentCount_php() {
		return totalStudentCount_php;
	}

	public int getTotalStudentCount_asp() {
		return totalStudentCount_asp;
	}

	public int getTotalStudentCount_ruby() {
		return totalStudentCount_ruby;
	}

	public int getTotalStudentCount_html() {
		return totalStudentCount_html;
	}

	public int getTotalStudentCount_js() {
		return totalStudentCount_js;
	}

	public int getTotalStudentCount_nodeJs() {
		return totalStudentCount_nodeJs;
	}

	public int getTotalStudentCount_android() {
		return totalStudentCount_android;
	}

	public int getTotalStudentCount_oracle() {
		return totalStudentCount_oracle;
	}

	public int getTotalStudentCount_swift() {
		return totalStudentCount_swift;
	}

	public int getTotalStudentCount_objectiveC() {
		return totalStudentCount_objectiveC;
	}

	public int getTotalStudentCount_delphi() {
		return totalStudentCount_delphi;
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

	public void setAvgToeicScore(double avgToeicScore) {
		this.avgToeicScore = avgToeicScore;
	}

	public void setTopmostToeicScore(int topmostToeicScore) {
		this.topmostToeicScore = topmostToeicScore;
	}

	public void setTotalRegStudentCount_toeic(int totalRegStudentCount_toeic) {
		this.totalRegStudentCount_toeic = totalRegStudentCount_toeic;
	}

	public void setToeicKing(String[] toeicKing) {
		this.toeicKing = toeicKing;
	}

	public void setToeicKingScore(int[] toeicKingScore) {
		this.toeicKingScore = toeicKingScore;
	}

	public void setTotalRegStudentCountGraph_toeic(
			int[] totalRegStudentCountGraph_toeic) {
		this.totalRegStudentCountGraph_toeic = totalRegStudentCountGraph_toeic;
	}

	public void setAvgCertificateCount(double avgCertificateCount) {
		this.avgCertificateCount = avgCertificateCount;
	}

	public void setTotalRegStudentCount_certificate(
			int totalRegStudentCount_certificate) {
		this.totalRegStudentCount_certificate = totalRegStudentCount_certificate;
	}

	public void setCertificateKing(String[] certificateKing) {
		this.certificateKing = certificateKing;
	}

	public void setCertificateKingCount(int[] certificateKingCount) {
		this.certificateKingCount = certificateKingCount;
	}

	public void setTotalRegStudentCountGraph_certi(
			int[] totalRegStudentCountGraph_certi) {
		this.totalRegStudentCountGraph_certi = totalRegStudentCountGraph_certi;
	}

	public void setAvgPortfolioCount(double avgPortfolioCount) {
		this.avgPortfolioCount = avgPortfolioCount;
	}

	public void setTotalRegStudentCount_portfolio(int totalRegStudentCount_portfolio) {
		this.totalRegStudentCount_portfolio = totalRegStudentCount_portfolio;
	}

	public void setPortfolioKing(String[] portfolioKing) {
		this.portfolioKing = portfolioKing;
	}

	public void setPortfolioKingCount(int[] portfolioKingCount) {
		this.portfolioKingCount = portfolioKingCount;
	}

	public void setTotalRegStudentCountGraph_portfolio(
			int[] totalRegStudentCountGraph_portfolio) {
		this.totalRegStudentCountGraph_portfolio = totalRegStudentCountGraph_portfolio;
	}

	public void setAvgAwardCount(double avgAwardCount) {
		this.avgAwardCount = avgAwardCount;
	}

	public void setTotalRegStudentCount_award(int totalRegStudentCount_award) {
		this.totalRegStudentCount_award = totalRegStudentCount_award;
	}

	public void setTotalRegStudentCountGraph_award(
			int[] totalRegStudentCountGraph_award) {
		this.totalRegStudentCountGraph_award = totalRegStudentCountGraph_award;
	}

	public void setAvgSwAbilityCount(double avgSwAbilityCount) {
		this.avgSwAbilityCount = avgSwAbilityCount;
	}

	public void setTotalRegStudentCountGraph_swAbility(
			int[] totalRegStudentCountGraph_swAbility) {
		this.totalRegStudentCountGraph_swAbility = totalRegStudentCountGraph_swAbility;
	}

	public void setTotalStudentCount_c(int totalStudentCount_c) {
		this.totalStudentCount_c = totalStudentCount_c;
	}

	public void setTotalStudentCount_cpp(int totalStudentCount_cpp) {
		this.totalStudentCount_cpp = totalStudentCount_cpp;
	}

	public void setTotalStudentCount_cSharp(int totalStudentCount_cSharp) {
		this.totalStudentCount_cSharp = totalStudentCount_cSharp;
	}

	public void setTotalStudentCount_python(int totalStudentCount_python) {
		this.totalStudentCount_python = totalStudentCount_python;
	}

	public void setTotalStudentCount_java(int totalStudentCount_java) {
		this.totalStudentCount_java = totalStudentCount_java;
	}

	public void setTotalStudentCount_jsp(int totalStudentCount_jsp) {
		this.totalStudentCount_jsp = totalStudentCount_jsp;
	}

	public void setTotalStudentCount_visualBasic(int totalStudentCount_visualBasic) {
		this.totalStudentCount_visualBasic = totalStudentCount_visualBasic;
	}

	public void setTotalStudentCount_lisp(int totalStudentCount_lisp) {
		this.totalStudentCount_lisp = totalStudentCount_lisp;
	}

	public void setTotalStudentCount_php(int totalStudentCount_php) {
		this.totalStudentCount_php = totalStudentCount_php;
	}

	public void setTotalStudentCount_asp(int totalStudentCount_asp) {
		this.totalStudentCount_asp = totalStudentCount_asp;
	}

	public void setTotalStudentCount_ruby(int totalStudentCount_ruby) {
		this.totalStudentCount_ruby = totalStudentCount_ruby;
	}

	public void setTotalStudentCount_html(int totalStudentCount_html) {
		this.totalStudentCount_html = totalStudentCount_html;
	}

	public void setTotalStudentCount_js(int totalStudentCount_js) {
		this.totalStudentCount_js = totalStudentCount_js;
	}

	public void setTotalStudentCount_nodeJs(int totalStudentCount_nodeJs) {
		this.totalStudentCount_nodeJs = totalStudentCount_nodeJs;
	}

	public void setTotalStudentCount_android(int totalStudentCount_android) {
		this.totalStudentCount_android = totalStudentCount_android;
	}

	public void setTotalStudentCount_oracle(int totalStudentCount_oracle) {
		this.totalStudentCount_oracle = totalStudentCount_oracle;
	}

	public void setTotalStudentCount_swift(int totalStudentCount_swift) {
		this.totalStudentCount_swift = totalStudentCount_swift;
	}

	public void setTotalStudentCount_objectiveC(int totalStudentCount_objectiveC) {
		this.totalStudentCount_objectiveC = totalStudentCount_objectiveC;
	}

	public void setTotalStudentCount_delphi(int totalStudentCount_delphi) {
		this.totalStudentCount_delphi = totalStudentCount_delphi;
	}

	public void setTotalStudentCount_military(int totalStudentCount_military) {
		this.totalStudentCount_military = totalStudentCount_military;
	}	
}
