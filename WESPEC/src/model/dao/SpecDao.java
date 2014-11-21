package model.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import jdbc.util.JdbcUtil;
import model.vo.spec.*;
import model.vo.Spec;
public class SpecDao {		
	
	private Spec spec = null;
	
	/********************************************************************************
	 *																				* 
	 *																				*  
	 * 																				* 
	 * 						       SELECT PART										* 
	 *																				* 
	 * 																				* 
	 ********************************************************************************/
	
	// 학생 프로필 개별 검색
	public List<Spec> select() {	
		List<Spec> specs = new ArrayList<Spec>();
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;		
		
		String query = "SELECT * FROM SPEC";
		
		try {				
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);		
			rs = pstmt.executeQuery();	
			
			while(rs.next())
			{						
				Spec spec = new Spec();	
				spec.setMemberId(rs.getString("MEMBER_ID"));
				spec.setSpec_last_change_date(rs.getTimestamp("SPEC_LAST_CHANGE_DATE"));
				spec.setSpec_change_point(rs.getInt("SPEC_CHANGE_POINT"));
				spec.setMemberId(rs.getString("SPEC_CHANGE_LOCATION"));
				specs.add(spec);
				this.spec=null;
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}	
		return specs;				
	}
	
	
	// 학생 스팩 검색 (통합 메소드)
	public Spec selectSpec(String memberId) {
		
		this.spec = new Spec();	
		
		this.selectByAcademic(memberId);
		this.selectByCertificate(memberId);
		this.selectByLanguage(memberId);
		this.selectByMilitary(memberId);
		this.selectByPortfolio(memberId);
		this.selectByProgrammingLanguage(memberId);
		this.selectByTraining(memberId);
		this.selectByAward(memberId);	
		
		return spec;		
	}
		
	// 학력검색
	private void selectByAcademic(String memberId) { 		
				
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;		
		
		String query = "SELECT * FROM ACADEMIC WHERE MEMBER_ID = ?";
		
		try {				
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();			
			
			while(rs.next())
			{			
				Academic academic = new Academic();
				academic.setRegNo(rs.getInt("ACADEMIC_NO"));
				academic.setAcademicPeriod(rs.getString("ACADEMIC_PERIOD"));
				academic.setAcademicName(rs.getString("ACADEMIC_NAME"));	
				academic.setAcademicState(rs.getString("ACADEMIC_STATE"));	
				academic.setAcademicMajor(rs.getString("ACADEMIC_MAJOR"));	
				academic.setPublicScope(rs.getString("ACADEMIC_SCOPE"));
				
				spec.academics.add(academic);				
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}
		
	}
	
	// 자격증검색
	private void selectByCertificate(String memberId) { 	
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "SELECT * FROM CERTIFICATE WHERE MEMBER_ID = ?";
		
		try {	
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();			
			
			while(rs.next())
			{			
				Certificate certificate = new Certificate();
				certificate.setRegNo(rs.getInt("CERTIFICATE_NO"));
				certificate.setCertificateName(rs.getString("CERTIFICATE_NAME"));
				certificate.setCertificateDate(rs.getString("CERTIFICATE_DATE"));	
				certificate.setCertificateGrade(rs.getString("CERTIFICATE_GRADE"));	
				certificate.setCertificateOrg(rs.getString("CERTIFICATE_ORG"));	
				certificate.setPublicScope(rs.getString("CERTIFICATE_SCOPE"));
				
				spec.certificates.add(certificate);				
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}
		
	}
	
	// 어학능력검색
	private void selectByLanguage(String memberId) { 
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "SELECT * FROM LANGUAGE_EXAM WHERE MEMBER_ID = ?";
		
		try {	
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();			
		
			while(rs.next())
			{		
				Language language = new Language();
				language.setRegNo(rs.getInt("LANGUAGE_EXAM_NO"));
				language.setLanguageName(rs.getString("LANGUAGE"));
				language.setLanguageExamName(rs.getString("LANGUAGE_EXAM_NAME"));	
				language.setLanguageExamGrade(rs.getString("LANGUAGE_EXAM_GRADE"));	
				language.setLanguageExamOrg(rs.getString("LANGUAGE_EXAM_ORG"));	
				language.setPublicScope(rs.getString("LANGUAGE_EXAM_SCOPE"));
				
				spec.languages.add(language);				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}
	}
		
	// 병역검색
	private void selectByMilitary(String memberId) { 
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;
		
		String query = "SELECT * FROM Military WHERE MEMBER_ID = ?";
		
		try {	
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();			
		
			while(rs.next())
			{	
				Military military = new Military();
				military.setRegNo(rs.getInt("MILITARY_NO"));
				military.setMilitaryDone(rs.getInt("MILITARY_DONE"));
				military.setMilitaryReason(rs.getString("MILITARY_REASON"));	
				military.setMilitaryGroup(rs.getString("MILITARY_GROUP"));	
				military.setMilitaryRank(rs.getString("MILITARY_RANK"));	
				military.setMilitaryPeriod(rs.getString("MILITARY_PERIOD"));	
				military.setMilitaryWork(rs.getString("MILITARY_WORK"));
				military.setPublicScope(rs.getString("MILITARY_SCOPE"));
				military.setRegister(rs.getBoolean("MILITARY_IS_REG"));
				
				spec.military = military;				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}		
	}
	
	//포트폴리오 검색
	private void selectByPortfolio(String memberId) { 
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;
		
		String query = "SELECT * FROM portfolio WHERE MEMBER_ID = ?";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();			
		
			while(rs.next())
			{	
				Portfolio portfolio = new Portfolio();
				portfolio.setRegNo(rs.getInt("PORTFOLIO_NO"));
				portfolio.setPortfolioName(rs.getString("PORTFOLIO_NAME"));
				portfolio.setPortfolioPeriod(rs.getString("PORTFOLIO_PERIOD"));	
				portfolio.setPortfolioLink(rs.getString("PORTFOLIO_LINK"));	
				portfolio.setPortfolioThumbnail(rs.getString("PORTFOLIO_THUMBNAIL"));	
				portfolio.setPublicScope(rs.getString("PORTFOLIO_SCOPE"));
				
				spec.portfolios.add(portfolio);				
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}		 
	}
	
	//선호프로그래밍언어 검색
	private void selectByProgrammingLanguage(String memberId) { 
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "SELECT * FROM programming_language WHERE MEMBER_ID = ?";
				
		try {	
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();			
		
			while(rs.next())
			{		
				ProgrammingLanguage programmingLanguage = new ProgrammingLanguage();
				programmingLanguage.setRegNo(rs.getInt("LANGUAGE_NO"));
				programmingLanguage.setLanguageName(rs.getString("LANGUAGE_NAME"));	
				programmingLanguage.setPublicScope(rs.getString("LANGUAGE_SCOPE"));
				
				spec.programmingLanguages.add(programmingLanguage);				
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}
	}
	
	// 교육/연수 검색
	private void selectByTraining(String memberId) { 
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "SELECT * FROM training WHERE MEMBER_ID = ?";
		
		try {	
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();			
		
			while(rs.next())
			{		
				Training training = new Training();
				training.setRegNo(rs.getInt("TRAINING_NO"));
				training.setTrainingName(rs.getString("TRAINING_NAME"));
				training.setTrainingPeriod(rs.getString("TRAINING_PERIOD"));	
				training.setTrainingOrg(rs.getString("TRAINING_ORG"));				
				training.setPublicScope(rs.getString("TRAINING_SCOPE"));
				
				spec.trainings.add(training);				
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}		
	}
	
	// 수상내역 검색
	private void selectByAward(String memberId) { 
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;
		
		String query = "SELECT * FROM award WHERE MEMBER_ID = ?";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();			
		
			while(rs.next())
			{	
				Award award = new Award();
				award.setRegNo(rs.getInt("AWARD_NO"));
				award.setAwardSubject(rs.getString("AWARD_SUBJECT"));
				award.setAwardDate(rs.getString("AWARD_DATE"));	
				award.setAwardOrg(rs.getString("AWARD_ORG"));				
				award.setPublicScope(rs.getString("AWARD_SCOPE"));
				
				spec.awards.add(award);				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}		
	}
	
	// 특정 테이블의 입력항목이 있는 회원 리스트만 추출
	public List<String> selectHaveSpecByMemberId(List<String> members, String tableName) { 
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;
		List<String> newMembers = new ArrayList<String>();
		
		String subQuery = this.makeSubQueryByMembers(members);
		String query = "SELECT DISTINCT MEMBER_ID FROM " + tableName;
		query +=" WHERE " + subQuery;		
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();				
		
			while(rs.next())
			{	
				newMembers.add(rs.getString(1));			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}
		return newMembers;		
	}
	
	// 특정 테이블의 입력항목이 있는 회원 리스트만 추출
	public List<String> selectHaveSpecByMemberId(List<String> members, String tableName, String  languageExamName, String languageGrade) { 
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;
		List<String> newMembers = new ArrayList<String>();
		
		String subQuery = this.makeSubQueryByMembers(members);
		String query = "SELECT DISTINCT MEMBER_ID FROM " + tableName;
		query +=" WHERE " + subQuery;
		query +=" AND (LANGUAGE_EXAM_NAME = ? AND LANGUAGE_EXAM_GRADE > ? ) ";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, languageExamName);
			pstmt.setString(2, languageGrade);		
			rs = pstmt.executeQuery();				
		
			while(rs.next())
			{	
				newMembers.add(rs.getString(1));			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}
		return newMembers;		
	}
	
	// 스펙이 존재하는 회원리스트 추출.
	public List<String> selectHaveSpecByAll() { 
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;
		List<String> newMembers = new ArrayList<String>();
		
		// 이력이 등록된 회원 찾기.
		String query = "SELECT MEMBER_ID FROM SPEC WHERE SPEC_LAST_CHANGE_DATE IS NOT NULL";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();			
			while(rs.next())
			{	
				newMembers.add(rs.getString(1));			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}
		return newMembers;		
	}
	

	/********************************************************************************
	 *																				* 
	 *																				*  
	 * 																				* 
	 * 						       INSERT PART										* 
	 *																				* 
	 * 																				* 
	 ********************************************************************************/
	
	// 자격증 추가.
	public void insert(Certificate certificate) 
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "INSERT INTO CERTIFICATE";
			   query += "(MEMBER_ID, CERTIFICATE_NAME, CERTIFICATE_DATE, CERTIFICATE_GRADE, CERTIFICATE_ORG, CERTIFICATE_SCOPE, CERTIFICATE_REG_DATE)";
			   query += "VALUES(?,?,?,?,?,?,?)";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, certificate.getMemberId());
			pstmt.setString(2, certificate.getCertificateName());
			pstmt.setString(3, certificate.getCertificateDate());
			pstmt.setString(4, certificate.getCertificateGrade());
			pstmt.setString(5, certificate.getCertificateOrg());
			pstmt.setString(6, certificate.getPublicScope());
			pstmt.setTimestamp(7, new Timestamp(System.currentTimeMillis()));
			pstmt.executeUpdate();
			this.updateSpec(certificate.getMemberId(), "CERTIFICATE", 2);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}		
	}	
	
	// 학력 추가.
	public void insert(Academic academic)
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "INSERT INTO ACADEMIC";
			   query += "(MEMBER_ID, ACADEMIC_PERIOD, ACADEMIC_NAME, ACADEMIC_STATE, ACADEMIC_MAJOR, ACADEMIC_SCOPE, ACADEMIC_REG_DATE)";
			   query += "VALUES(?,?,?,?,?,?,?)";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, academic.getMemberId());
			pstmt.setString(2, academic.getAcademicPeriod());
			pstmt.setString(3, academic.getAcademicName());
			pstmt.setString(4, academic.getAcademicState());
			pstmt.setString(5, academic.getAcademicMajor());
			pstmt.setString(6, academic.getPublicScope());
			pstmt.setTimestamp(7, new Timestamp(System.currentTimeMillis()));
			pstmt.executeUpdate();
			this.updateSpec(academic.getMemberId(), "ACADEMIC", 2);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}
	}
	
	// 수상실적 추가.
	public void insert(Award award)
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "INSERT INTO AWARD";
			   query += "(MEMBER_ID, AWARD_DATE, AWARD_SUBJECT, AWARD_ORG, AWARD_SCOPE, AWARD_REG_DATE)";
			   query += "VALUES(?,?,?,?,?,?)";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, award.getMemberId());
			pstmt.setString(2, award.getAwardDate());
			pstmt.setString(3, award.getAwardSubject());
			pstmt.setString(4, award.getAwardOrg());	
			pstmt.setString(5, award.getPublicScope());
			pstmt.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
			pstmt.executeUpdate();
			this.updateSpec(award.getMemberId(), "AWARD", 2);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}
	}
	
	// 어학능력 추가.
	public void insert(Language language)
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "INSERT INTO LANGUAGE_EXAM";
			   query += "(MEMBER_ID, LANGUAGE, LANGUAGE_EXAM_NAME, LANGUAGE_EXAM_GRADE, LANGUAGE_EXAM_ORG, LANGUAGE_EXAM_SCOPE, LANGUAGE_EXAM_REG_DATE )";
			   query += "VALUES(?,?,?,?,?,?,?)";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, language.getMemberId());
			pstmt.setString(2, language.getLanguageName());
			pstmt.setString(3, language.getLanguageExamName());
			pstmt.setString(4, language.getLanguageExamGrade());	
			pstmt.setString(5, language.getLanguageExamOrg());
			pstmt.setString(6, language.getPublicScope());
			pstmt.setTimestamp(7, new Timestamp(System.currentTimeMillis()));
			pstmt.executeUpdate();
			this.updateSpec(language.getMemberId(), "LANGUAGE_EXAM", 2);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}
	}
	
	// 병역등록. : 필/미필, 미필사유 미구현
	public void insert(Military military)
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "INSERT INTO MILITARY";
			   query += "(MEMBER_ID, MILITARY_PERIOD, MILITARY_GROUP, MILITARY_RANK, MILITARY_WORK, MILITARY_SCOPE, MILITARY_REG_DATE, MILITARY_IS_REG)";
			   query += "VALUES(?,?,?,?,?,?,?,?)";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, military.getMemberId());
			pstmt.setString(2, military.getMilitaryPeriod());
			pstmt.setString(3, military.getMilitaryGroup());
			pstmt.setString(4, military.getMilitaryRank());	
			pstmt.setString(5, military.getMilitaryWork());
			pstmt.setString(6, military.getPublicScope());
			pstmt.setTimestamp(7, new Timestamp(System.currentTimeMillis()));
			pstmt.setBoolean(8, military.isRegister());
			pstmt.executeUpdate();
			this.updateSpec(military.getMemberId(), "MILITARY", 2);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}
	}
	
	// 포트폴리오 추가 : 썸네일부분 미구현
	public void insert(Portfolio portfolio)
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "INSERT INTO PORTFOLIO"; 
			   query += "(MEMBER_ID, PORTFOLIO_PERIOD, PORTFOLIO_NAME , PORTFOLIO_LINK, PORTFOLIO_SCOPE, PORTFOLIO_REG_DATE)";
			   query += "VALUES(?,?,?,?,?,?)";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, portfolio.getMemberId());
			pstmt.setString(2, portfolio.getPortfolioPeriod());
			pstmt.setString(3, portfolio.getPortfolioName());
			pstmt.setString(4, portfolio.getPortfolioLink());
			pstmt.setString(5, portfolio.getPublicScope());
			pstmt.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
			pstmt.executeUpdate();
			this.updateSpec(portfolio.getMemberId(), "PORTFOLIO", 2);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}
	}
	
	// 선호 프로그래밍 언어 추가
	public void insert(ProgrammingLanguage programmingLanguage)
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "INSERT INTO PROGRAMMING_LANGUAGE";
			   query += "(MEMBER_ID, LANGUAGE_NAME, LANGUAGE_REG_DATE)";
			   query += "VALUES(?,?,?)";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, programmingLanguage.getMemberId());
			pstmt.setString(2, programmingLanguage.getLanguageName());		
			pstmt.setTimestamp(3, new Timestamp(System.currentTimeMillis()));
			pstmt.executeUpdate();
			this.updateSpec(programmingLanguage.getMemberId(), "PROGRAMMING_LANGUAGE", 2);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}
	}
	
	// 교육 / 연수 추가
	public void insert(Training training)
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "INSERT INTO TRAINING";
			   query += "(MEMBER_ID, TRAINING_PERIOD, TRAINING_NAME, TRAINING_ORG, TRAINING_SCOPE, TRAINING_REG_DATE)";
			   query += "VALUES(?,?,?,?,?,?)";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, training.getMemberId());
			pstmt.setString(2, training.getTrainingPeriod());
			pstmt.setString(3, training.getTrainingName());
			pstmt.setString(4, training.getTrainingOrg());
			pstmt.setString(5, training.getPublicScope());
			pstmt.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
			pstmt.executeUpdate();
			this.updateSpec(training.getMemberId(), "TRAINING", 2);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}
		
	}
	
	//회원가입시 필요함.
	public void insertMember(String studentCode) 
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	

		String query = "INSERT INTO SPEC";
			   query += "(member_id) ";		  
			   query += "values(?)";		
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, studentCode); 		 
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}		
	}	
	
	
	
	/********************************************************************************
	 *																				* 
	 *																				*  
	 * 																				* 
	 * 						       DELETE PART										* 
	 *																				* 
	 * 																				* 
	 ********************************************************************************/
	
	public void deleteSpec(String tableName, String tableNo) 
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	

		//테이블 컬럼명 지정 : programming_language 빼고 다른 테이블들을 테이블명 + _NO임.
		String tableColName;		
		if(tableName.equals("programming_language"))
			tableColName = "language_no";
		else
			tableColName = tableName + "_no";		
		
		String query = "DELETE FROM " + tableName  ;
			   query += " WHERE " + tableColName + " = " + tableNo;
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}		
	}	
	
	//소프트웨어개발능력 전용 메소드 : 등록전 기존 내용 지우는 역활
	public void deleteByProgrammingLanguage(String memberId) 
	{
		PreparedStatement pstmt = null;
		Connection conn = null;			
		
		String query = "DELETE FROM PROGRAMMING_LANGUAGE";
			   query += " WHERE MEMBER_ID = " + memberId;
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}		
	}
	
	
	
	/********************************************************************************
	 *																				* 
	 *																				*  
	 * 																				* 
	 * 						       UPDATE PART										* 
	 *																				* 
	 * 																				* 
	 ********************************************************************************/
	
	// 스펙사항이 변경될때마다 변경 날짜와 변경위치 기록 하는 메서드
	private void updateSpec(String memberId, String changeLocation, int changePoint ) 
	{
		PreparedStatement pstmt = null;
		Connection conn = null;			
		
		String query = "UPDATE SPEC ";
	   	   query += "SET SPEC_CHANGE_LOCATION = ? , SPEC_CHANGE_POINT = ? , SPEC_LAST_CHANGE_DATE = ? ";
	   	   query += "WHERE MEMBER_ID = ? ";
		
		try {			
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, changeLocation);
			pstmt.setInt(2, changePoint);
			pstmt.setTimestamp(3, new Timestamp(System.currentTimeMillis()));
			pstmt.setString(4, memberId);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}		
	}	
	/********************************************************************************
	 *																				* 
	 *																				*  
	 * 																				* 
	 * 						       FUNCTION PART									* 
	 *																				* 
	 * 																				* 
	 ********************************************************************************/
	
	// 상세검색시 WHERE 문을 만들어주는 메서드
	private String makeSubQueryByMembers(List<String> members)
	{
		String subQuery ="";
		for(int i=0; i < members.size(); i++)
		{
			if(i==0)
				subQuery = "MEMBER_ID = '" + members.get(i) + "' ";
			else
				subQuery += "OR MEMBER_ID = '" + members.get(i) + "' ";
		}
		System.out.println("Maked SubQuery = " + subQuery);
		return subQuery;
	}
	
}
