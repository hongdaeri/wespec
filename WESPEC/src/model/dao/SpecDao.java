package model.dao;



import java.sql.*;

import model.vo.spec.*;
import model.vo.Profile;
public class SpecDao {
	
	private PreparedStatement pstmt=null;
	private Statement stmt = null;
	private ResultSet rs = null;
	private Connection conn;
	
	public void getConnection() 
	{
		String jdbcDriver="jdbc:apache:commons:dbcp:/wespec";			
		try {
			conn = DriverManager.getConnection(jdbcDriver);
		} catch (SQLException e) {			
			e.printStackTrace();
		}
		

	}
	public void insert(Profile profile)
	{
		
	}

	
	// 자격증 추가.
	public void insert(Certificate certificate) 
	{
		this.getConnection(); // 컨넥션풀 가져오기
		
		String query = "INSERT INTO CERTIFICATE";
			   query += "(MEMBER_ID, CERTIFICATE_NAME, CERTIFICATE_DATE, CERTIFICATE_GRADE, CERTIFICATE_ORG, CERTIFICATE_SCOPE, CERTIFICATE_REG_DATE)";
			   query += "VALUES(?,?,?,?,?,?,?)";
		
		try {
			this.pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
			this.pstmt.setString(2, certificate.getCertificateName());
			this.pstmt.setString(3, certificate.getCertificateDate());
			this.pstmt.setString(4, certificate.getCertificateGrade());
			this.pstmt.setString(5,  certificate.getCertificateOrg());
			this.pstmt.setInt(6, certificate.getPublicScope());
			this.pstmt.setTimestamp(7, new Timestamp(System.currentTimeMillis()));
			this.pstmt.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{			
			if(pstmt!=null) try {pstmt.close();} catch(SQLException ex) { }
			if(conn!=null) try { conn.close(); } catch(SQLException ex) { }
		}
	}
	
	
	// 학력 추가.
	public void insert(Academic academic)
	{
		this.getConnection(); // 컨넥션풀 가져오기
		
		String query = "INSERT INTO ACADEMIC";
			   query += "(MEMBER_ID, ACEDEMIC_PERIOD, ACEDEMIC_NAME, ACEDEMIC_STATE, ACADEMIC_MAJOR, ACEDEMIC_SCOPE, ACEDEMIC_REG_DATE)";
			   query += "VALUES(?,?,?,?,?,?,?)";
		
		try {
			this.pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
			this.pstmt.setString(2, academic.getAcademicPeriod());
			this.pstmt.setString(3, academic.getAcademicName());
			this.pstmt.setString(4, academic.getAcademicState());
			this.pstmt.setString(5, academic.getAcademicMajor());
			this.pstmt.setInt(6, academic.getPublicScope());
			this.pstmt.setTimestamp(7, new Timestamp(System.currentTimeMillis()));
			this.pstmt.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{			
			if(pstmt!=null) try {pstmt.close();} catch(SQLException ex) { }
			if(conn!=null) try { conn.close(); } catch(SQLException ex) { }
		}
	}
	
	
	// 수상실적 추가.
	public void insert(Award award)
	{
		this.getConnection(); // 컨넥션풀 가져오기
		
		String query = "INSERT INTO AWARD";
			   query += "(MEMBER_ID, AWARD_DATE, AWARD_SUBJECT, AWARD_ORG, AWARD_SCOPE, AWARD_REG_DATE)";
			   query += "VALUES(?,?,?,?,?,?)";
		
		try {
			this.pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
			this.pstmt.setString(2, award.getAwardDate());
			this.pstmt.setString(3, award.getAwardSubject());
			this.pstmt.setString(4, award.getAwardOrg());	
			this.pstmt.setInt(5, award.getPublicScope());
			this.pstmt.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
			this.pstmt.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{			
			if(pstmt!=null) try {pstmt.close();} catch(SQLException ex) { }
			if(conn!=null) try { conn.close(); } catch(SQLException ex) { }
		}
	}
	
	
	// 어학능력 추가.
	public void insert(Language language)
	{
		this.getConnection(); // 컨넥션풀 가져오기
		
		String query = "INSERT INTO LANGUAGE";
			   query += "(MEMBER_ID, LANGUAGE, LANGUAGE_EXAM_NAME, LANGUAGE_EXAM_GRADE, LANGUAGE_EXAM_ORG, LANGUAGE_EXAM_SCOPE, LANGUAGE_EXAM_REG_DATE )";
			   query += "VALUES(?,?,?,?,?,?,?)";
		
		try {
			this.pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
			this.pstmt.setString(2, language.getLanguageName());
			this.pstmt.setString(3, language.getLanguageExamName());
			this.pstmt.setString(4, language.getLanguageExamGrade());	
			this.pstmt.setString(5, language.getLanguageExamOrg());
			this.pstmt.setInt(6, language.getPublicScope());
			this.pstmt.setTimestamp(7, new Timestamp(System.currentTimeMillis()));
			this.pstmt.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{			
			if(pstmt!=null) try {pstmt.close();} catch(SQLException ex) { }
			if(conn!=null) try { conn.close(); } catch(SQLException ex) { }
		}
	}
	
	
	// 병역등록. : 필/미필, 미필사유 미구현
	public void insert(Military military)
	{
		this.getConnection(); // 컨넥션풀 가져오기
		
		String query = "INSERT INTO MILITARY";
			   query += "(MEMBER_ID, MILITARY_PERIOD, MILITARY_GROUP, MILITARY_RANK, MILITARY_WORK, MILITARY_SCOPE, MILITARY_REG_DATE)";
			   query += "VALUES(?,?,?,?,?,?,?)";
		
		try {
			this.pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
			this.pstmt.setString(2, military.getMilitaryPeriod());
			this.pstmt.setString(3, military.getMilitaryGroup());
			this.pstmt.setString(4, military.getMilitaryRank());	
			this.pstmt.setString(5, military.getMilitaryWork());
			this.pstmt.setInt(6, military.getPublicScope());
			this.pstmt.setTimestamp(7, new Timestamp(System.currentTimeMillis()));
			this.pstmt.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{			
			if(pstmt!=null) try {pstmt.close();} catch(SQLException ex) { }
			if(conn!=null) try { conn.close(); } catch(SQLException ex) { }
		}
	}
	
	// 포트폴리오 추가 : 썸네일부분 미구현
	public void insert(Portfolio portfolio)
	{
		this.getConnection(); // 컨넥션풀 가져오기
		
		String query = "INSERT INTO PORTFOLIO";
			   query += "(MEMBER_ID, PORTFOLIO_PERIOD, PORTFOLIO_NAME, PORTFOLIO_LINK, PORTFOLIO_SCOPE, PORTFOLIO_REG_DATE)";
			   query += "VALUES(?,?,?,?,?,?)";
		
		try {
			this.pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
			this.pstmt.setString(2, portfolio.getPortfolioPeriod());
			this.pstmt.setString(3, portfolio.getPortfolioName());
			this.pstmt.setString(4, portfolio.getPortfolioLink());
			this.pstmt.setInt(5, portfolio.getPublicScope());
			this.pstmt.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
			this.pstmt.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{			
			if(pstmt!=null) try {pstmt.close();} catch(SQLException ex) { }
			if(conn!=null) try { conn.close(); } catch(SQLException ex) { }
		}
	}
	
	// 선호 프로그래밍 언어 추가
	public void insert(ProgrammingLanguage programmingLanguage)
	{
		this.getConnection(); // 컨넥션풀 가져오기
		
		String query = "INSERT INTO PROGRAMMING_LANGUAGE";
			   query += "(MEMBER_ID, LANGUAGE_NAME, LANGUAGE_LEVEL, LANGUAGE_SCOPE, LANGUAGE_REG_DATE)";
			   query += "VALUES(?,?,?,?,?)";
		
		try {
			this.pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
			this.pstmt.setString(2, programmingLanguage.getLanguageName());
			this.pstmt.setString(3, programmingLanguage.getLanguageLevel());
			this.pstmt.setInt(4, programmingLanguage.getPublicScope());
			this.pstmt.setTimestamp(5, new Timestamp(System.currentTimeMillis()));
			this.pstmt.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{			
			if(pstmt!=null) try {pstmt.close();} catch(SQLException ex) { }
			if(conn!=null) try { conn.close(); } catch(SQLException ex) { }
		}
	}
	
	// 교육 / 연수 추가
	public void insert(Training training)
	{
		this.getConnection(); // 컨넥션풀 가져오기
		
		String query = "INSERT INTO TRAINING";
			   query += "(MEMBER_ID, TRAINING_PERIOD, TRAINING_NAME, TRAINING_ORG, TRAINING_SCOPE, TRAINING_REG_DATE)";
			   query += "VALUES(?,?,?,?,?,?)";
		
		try {
			this.pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
			this.pstmt.setString(2, training.getTrainingPeriod());
			this.pstmt.setString(3, training.getTrainingName());
			this.pstmt.setString(4, training.getTrainingOrg());
			this.pstmt.setInt(5, training.getPublicScope());
			this.pstmt.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
			this.pstmt.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{			
			if(pstmt!=null) try {pstmt.close();} catch(SQLException ex) { }
			if(conn!=null) try { conn.close(); } catch(SQLException ex) { }
		}
	}
}
