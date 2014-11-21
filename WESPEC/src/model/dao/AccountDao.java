package model.dao;

import java.sql.*;

import jdbc.util.JdbcUtil;
import model.vo.Member;
import model.vo.Profile;

public class AccountDao {		
	
	
	
	/********************************************************************************
	 *																				* 
	 *																				*  
	 * 																				* 
	 * 						       SELECT PART										* 
	 *																				* 
	 * 																				* 
	 ********************************************************************************/
	
	// 멤버검색
	public Member select(String memberId) {	
		Member member = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;		
		
		String query = "SELECT * FROM MEMBER WHERE MEMBER_ID = ?";
		
		try {				
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();			
						
			while(rs.next())
			{			
				member = new Member();	
				member.setMemberId(rs.getString("MEMBER_ID"));			
				member.setMemberPassword(rs.getString("MEMBER_PASSWORD"));			
				member.setMemberGroup(rs.getString("MEMBER_GROUP"));			
				member.setRegDate(rs.getTimestamp("MEMBER_REG_DATE"));		
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}			
		return member;				
	}
		
	/********************************************************************************
	 *																				* 
	 *																				*  
	 * 																				* 
	 * 						       INSERT PART										* 
	 *																				* 
	 * 																				* 
	 ********************************************************************************/
	public void insertMember(String studentCode, String studentBirth) 
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	

		String query = "INSERT INTO MEMBER";
			   query += "(member_id, member_password, member_group, member_reg_date) ";
			   query += "values(?,?,'S',?) ";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, studentCode);    
			pstmt.setString(2, studentBirth);				 
			pstmt.setTimestamp(3, new Timestamp(System.currentTimeMillis()));			 
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
	// 프로필 일반항목 수정
	public void update(Profile profile) 
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "UPDATE PROFILE ";
			   query += "SET PROFILE_CHI_NAME=?, PROFILE_ENG_NAME=?, PROFILE_ADDRESS =?, PROFILE_BIRTH =?, PROFILE_PHONE =?, PROFILE_EMAIL=?, PROFILE_GRADE =?, PROFILE_HIT =?, PROFILE_REG_DATE =? ";
			   query += "WHERE MEMBER_ID = ? ";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, profile.getProfileChiName());    
			pstmt.setString(2, profile.getProfileEngName());   
			pstmt.setString(3, profile.getProfileAddress());    
			pstmt.setString(4, profile.getProfileBirth());    
			pstmt.setString(5, profile.getProfilePhone());   
			pstmt.setString(6, profile.getProfileEmail());    
			pstmt.setInt(7, profile.getProfileGrade());   
			pstmt.setInt(8, profile.getHit());   
			pstmt.setTimestamp(9, new Timestamp(System.currentTimeMillis()));
			pstmt.setString(10, profile.getMemberId());
			 
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}		
	}	
	// 프로필 SNS 항목 등록 및 수정
	public void updateSNS(Profile profile)
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "UPDATE FROM PROFILE ";
		   	   query += "SET PROFILE_SNS_FACEBOOK=?, PROFILE_SNS_TWITTER=?, PROFILE_SNS_NBLOG=?, PROFILE_SNS_INSTAGRAM=?, PROFILE_SNS_TUMBLR=?, PROFILE_SNS_PINTEREST=?, PROFILE_REG_DATE =? ";
		   	   query += "WHERE MEMBER_ID = ? ";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, profile.getProfileSnsFacebook());    
			pstmt.setString(2, profile.getProfileSnsTwitter());   
			pstmt.setString(3, profile.getProfileSnsNBlog());    
			pstmt.setString(4, profile.getProfileSnsInstagram());    
			pstmt.setString(5, profile.getProfileSnsTumblr());   
			pstmt.setString(6, profile.getProfileSnsPinterest());     
			pstmt.setTimestamp(7, new Timestamp(System.currentTimeMillis()));
			pstmt.setString(8, profile.getMemberId());
			 
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}
	}
	
	// 프로필 사진 변경
	public void updatePhoto(String memberId, String photoURL) 
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "UPDATE FROM PROFILE ";
		   	   query += "SET PROFILE_PHOTO_URL=? ";
		   	   query += "WHERE MEMBER_ID = ? ";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, photoURL);    
			pstmt.setString(2, memberId);
			 
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}	
	}	
	// 비밀번호 변경
	public void updatePassword(String memberId, String password) 
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	
		
		String query = "UPDATE MEMBER ";
			   query += "SET MEMBER_PASSWORD=? ";
			   query += "WHERE MEMBER_ID = ? ";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, password);    
			pstmt.setString(2, memberId);   			 
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}		
	}	
}
