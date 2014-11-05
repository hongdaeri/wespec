package model.dao;



import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.vo.spec.*;
import model.vo.Profile;
import model.vo.Spec;
public class SpecDao {
	
	private PreparedStatement pstmt=null;
	private ResultSet rs = null;
	private Connection conn = null;
	private Spec spec= null;
	
	public void getConnection() 
	{
		String jdbcDriver="jdbc:apache:commons:dbcp:/wespec";			
		try {
			conn = DriverManager.getConnection(jdbcDriver);
		} catch (SQLException e) {			
			e.printStackTrace();
		}
	}
	
	
	private Spec selectListProvider()
	{
		this.getConnection(); // 컨넥션풀 가져오기		
		
		this.selectByAcademic(conn);
		this.selectByCertificate(conn);
		this.selectByLanguage(conn);
		this.selectByMilitary(conn);
		this.selectByPortfolio(conn);
		this.selectByProgrammingLanguage(conn);
		this.selectByTraining(conn);
		this.selectByAward(conn);
		
		return null;
		
	}
	
	// 학력검색
	private void selectByAcademic(Connection conn) { 		
		
		String query = "SELECT * FROM ACADEMIC WHERE MEMBER_ID = ?";
		
		try {		
			pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
			rs = pstmt.executeQuery();			
			
			while(rs.next())
			{			
				Academic academic = new Academic();
				academic.setRegNo(rs.getInt("ACADEMIC_NO"));
				academic.setAcademicPeriod(rs.getString("ACADEMIC_PERIOD"));
				academic.setAcademicName(rs.getString("ACADEMIC_NAME"));	
				academic.setAcademicState(rs.getString("ACADEMIC_STATE"));	
				academic.setAcademicMajor(rs.getString("ACADEMIC_MAJOR"));	
				academic.setPublicScope(rs.getInt("ACADEMIC_SCOPE"));
				
				spec.academics.add(academic);				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		
	}
	
	// 자격증검색
	private void selectByCertificate(Connection conn) { 	

		String query = "SELECT * FROM CERTIFICATE WHERE MEMBER_ID = ?";
		
		try {		
			pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
			rs = pstmt.executeQuery();			
			
			while(rs.next())
			{			
				Certificate certificate = new Certificate();
				certificate.setRegNo(rs.getInt("CERTIFICATE_NO"));
				certificate.setCertificateName(rs.getString("CERTIFICATE_NAME"));
				certificate.setCertificateDate(rs.getString("CERTIFICATE_DATE"));	
				certificate.setCertificateGrade(rs.getString("CERTIFICATE_GRADE"));	
				certificate.setCertificateOrg(rs.getString("CERTIFICATE_ORG"));	
				certificate.setPublicScope(rs.getInt("CERTIFICATE_SCOPE"));
				
				spec.certificates.add(certificate);				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	// 어학능력검색
	private void selectByLanguage(Connection conn) { 
	
		String query = "SELECT * FROM LANGUAGE_EXAM WHERE MEMBER_ID = ?";
		
		try {		
			pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
			rs = pstmt.executeQuery();			
		
			while(rs.next())
			{		
				Language language = new Language();
				language.setRegNo(rs.getInt("LANGUAGE_EXAM_NO"));
				language.setLanguageName(rs.getString("LANGUAGE"));
				language.setLanguageExamName(rs.getString("LANGUAGE_EXAM_NAME"));	
				language.setLanguageExamGrade(rs.getString("LANGUAGE_EXAM_GRADE"));	
				language.setLanguageExamOrg(rs.getString("LANGUAGE_EXAM_ORG"));	
				language.setPublicScope(rs.getInt("LANGUAGE_EXAM_SCOPE"));
				
				spec.languages.add(language);				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	// 병역검색
	private void selectByMilitary(Connection conn) { 
		
		String query = "SELECT * FROM Military WHERE MEMBER_ID = ?";
		
		try {		
			pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
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
				military.setPublicScope(rs.getInt("MILITARY_SCOPE"));
				
				spec.military = military;				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	//포트폴리오 검색
	private void selectByPortfolio(Connection conn) { 
		
		String query = "SELECT * FROM portfolio WHERE MEMBER_ID = ?";
		
		try {		
			pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
			rs = pstmt.executeQuery();			
		
			while(rs.next())
			{	
				Portfolio portfolio = new Portfolio();
				portfolio.setRegNo(rs.getInt("PORTFOLIO_NO"));
				portfolio.setPortfolioName(rs.getString("PORTFOLIO_NAME"));
				portfolio.setPortfolioPeriod(rs.getString("PORTFOLIO_PERIOD"));	
				portfolio.setPortfolioLink(rs.getString("PORTFOLIO_LINK"));	
				portfolio.setPortfolioThumbnail(rs.getString("PORTFOLIO_THUMBNAIL"));	
				portfolio.setPublicScope(rs.getInt("PORTFOLIO_SCOPE"));
				
				spec.portfolios.add(portfolio);				
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	//선호프로그래밍언어 검색
	private void selectByProgrammingLanguage(Connection conn) { 
		
		String query = "SELECT * FROM programming_language WHERE MEMBER_ID = ?";
				
		try {		
			pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
			rs = pstmt.executeQuery();			
		
			while(rs.next())
			{		
				ProgrammingLanguage programmingLanguage = new ProgrammingLanguage();
				programmingLanguage.setRegNo(rs.getInt("LANGUAGE_NO"));
				programmingLanguage.setLanguageName(rs.getString("LANGUAGE_NAME"));
				programmingLanguage.setLanguageLevel(rs.getString("LANGUAGE_LEVEL"));		
				programmingLanguage.setPublicScope(rs.getInt("LANGUAGE_SCOPE"));
				
				spec.programmingLanguages.add(programmingLanguage);				
			}			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	// 교육/연수 검색
	private void selectByTraining(Connection conn) { 
		
		String query = "SELECT * FROM training WHERE MEMBER_ID = ?";
		
		try {		
			pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
			rs = pstmt.executeQuery();			
		
			while(rs.next())
			{		
				Training training = new Training();
				training.setRegNo(rs.getInt("TRAINING_NO"));
				training.setTrainingName(rs.getString("TRAINING_NAME"));
				training.setTrainingPeriod(rs.getString("TRAINING_PERIOD"));	
				training.setTrainingOrg(rs.getString("TRAINING_ORG"));				
				training.setPublicScope(rs.getInt("TRAINING_SCOPE"));
				
				spec.trainings.add(training);				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	// 수상내역 검색
	private void selectByAward(Connection conn) { 
		
		String query = "SELECT * FROM award WHERE MEMBER_ID = ?";
		
		try {		
			pstmt = conn.prepareStatement(query);
			this.pstmt.setString(1, "h0ngz");
			rs = pstmt.executeQuery();			
		
			while(rs.next())
			{	
				Award award = new Award();
				award.setRegNo(rs.getInt("AWARD_NO"));
				award.setAwardSubject(rs.getString("AWARD_SUBJECT"));
				award.setAwardDate(rs.getString("AWARD_DATE"));	
				award.setAwardOrg(rs.getString("AWARD_ORG"));				
				award.setPublicScope(rs.getInt("AWARD_SCOPE"));
				
				spec.awards.add(award);				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}

	// 스팩 검색 (통합 메소드)
	public Spec select(String memberID) {
		
		this.getConnection(); // 컨넥션풀 가져오기
		spec = new Spec();	
		selectListProvider();
		
		if(rs!=null) try { rs.close(); } catch(SQLException ex) { }
		if(pstmt!=null) try {pstmt.close();} catch(SQLException ex) { }
		if(conn!=null) try { conn.close(); } catch(SQLException ex) { }
	
		
		return spec;		
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
			   query += "(MEMBER_ID, ACADEMIC_PERIOD, ACADEMIC_NAME, ACADEMIC_STATE, ACADEMIC_MAJOR, ACADEMIC_SCOPE, ACADEMIC_REG_DATE)";
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
		
		String query = "INSERT INTO LANGUAGE_EXAM";
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
			   query += "(MEMBER_ID, PORTFOLIO_PERIOD, PORTFOLIO_NAME , PORTFOLIO_LINK, PORTFOLIO_SCOPE, PORTFOLIO_REG_DATE)";
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
