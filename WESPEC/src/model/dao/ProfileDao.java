package model.dao;

import java.sql.*;

import jdbc.util.JdbcUtil;
import model.vo.Profile;

public class ProfileDao {		
	
	private Profile profile = null;
	
	/********************************************************************************
	 *																				* 
	 *																				*  
	 * 																				* 
	 * 						       SELECT PART										* 
	 *																				* 
	 * 																				* 
	 ********************************************************************************/
	
	// 프로필 검색
	public Profile select(String memberId) {				
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;		
		
		String query = "SELECT * FROM PROFILE WHERE MEMBER_ID = ?";
		
		try {				
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();			
			
			
			
			while(rs.next())
			{			
				
				this.profile = new Profile();	
				this.profile.setMemberId(rs.getString("MEMBER_ID"));			
				this.profile.setProfileName(rs.getString("PROFILE_NAME"));			
				this.profile.setProfileGrade(rs.getInt("PROFILE_GRADE"));			
				this.profile.setProfileGender(rs.getString("PROFILE_GENDER"));			
				this.profile.setProfileChiName(rs.getString("PROFILE_CHI_NAME"));			
				this.profile.setProfileEngName(rs.getString("PROFILE_ENG_NAME"));			
				this.profile.setProfileAddress(rs.getString("PROFILE_ADDRESS"));			
				this.profile.setProfileBirth(rs.getString("PROFILE_BIRTH"));			
				this.profile.setProfilePhone(rs.getString("PROFILE_PHONE"));			
				this.profile.setProfileEmail(rs.getString("PROFILE_EMAIL"));			
				this.profile.setProfileSnsFacebook(rs.getString("PROFILE_SNS_FACEBOOK"));			
				this.profile.setProfileSnsTwitter(rs.getString("PROFILE_SNS_TWITTER"));			
				this.profile.setProfileSnsNBlog(rs.getString("PROFILE_SNS_NBLOG"));			
				this.profile.setProfileSnsInstagram(rs.getString("PROFILE_SNS_INSTAGRAM"));			
				this.profile.setProfileSnsTumblr(rs.getString("PROFILE_SNS_TUMBLR"));			
				this.profile.setProfileSnsPinterest(rs.getString("PROFILE_SNS_PINTEREST"));		
				this.profile.setProfilePhotoURL(rs.getString("PROFILE_PHOTO_URL"));			
				this.profile.setHit(rs.getInt("PROFILE_HIT"));			
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}	
		return this.profile;				
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
}
