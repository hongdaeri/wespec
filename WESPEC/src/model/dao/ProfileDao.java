package model.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import jdbc.util.JdbcUtil;
import model.vo.Profile;

public class ProfileDao {		

	/********************************************************************************
	 *																				* 
	 *																				*  
	 * 																				* 
	 * 						       SELECT PART										* 
	 *																				* 
	 * 																				* 
	 ********************************************************************************/
	
	// 학생 프로필 개별 검색
	public Profile select(String memberId) {	
		Profile profile = null;
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
				profile = new Profile();	
				profile.setMemberId(rs.getString("MEMBER_ID"));			
				profile.setProfileName(rs.getString("PROFILE_NAME"));			
				profile.setProfileGrade(rs.getInt("PROFILE_GRADE"));			
				profile.setProfileGender(rs.getString("PROFILE_GENDER"));			
				profile.setProfileChiName(rs.getString("PROFILE_CHI_NAME"));			
				profile.setProfileEngName(rs.getString("PROFILE_ENG_NAME"));			
				profile.setProfileAddress(rs.getString("PROFILE_ADDRESS"));			
				profile.setProfileBirth(rs.getString("PROFILE_BIRTH"));			
				profile.setProfilePhone(rs.getString("PROFILE_PHONE"));			
				profile.setProfileEmail(rs.getString("PROFILE_EMAIL"));			
				profile.setProfileSnsFacebook(rs.getString("PROFILE_SNS_FACEBOOK"));			
				profile.setProfileSnsTwitter(rs.getString("PROFILE_SNS_TWITTER"));			
				profile.setProfileSnsNBlog(rs.getString("PROFILE_SNS_NBLOG"));			
				profile.setProfileSnsInstagram(rs.getString("PROFILE_SNS_INSTAGRAM"));			
				profile.setProfileSnsTumblr(rs.getString("PROFILE_SNS_TUMBLR"));			
				profile.setProfileSnsPinterest(rs.getString("PROFILE_SNS_PINTEREST"));		
				profile.setProfilePhotoURL(rs.getString("PROFILE_PHOTO_URL"));			
				profile.setHit(rs.getInt("PROFILE_HIT"));	
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}	
		return profile;				
	}
	
	// 학생 프로필 전체 검색
	public List<Profile> select() {	
		List<Profile> profiles = new ArrayList<Profile>();
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;		
		SpecDao specDao = new SpecDao();
		String query = "SELECT * FROM PROFILE";
		
		try {				
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);		
			rs = pstmt.executeQuery();	
			
			while(rs.next())
			{						
				Profile profile = new Profile();	
				profile.setMemberId(rs.getString("MEMBER_ID"));			
				profile.setProfileName(rs.getString("PROFILE_NAME"));			
				profile.setProfileGrade(rs.getInt("PROFILE_GRADE"));			
				profile.setProfileGender(rs.getString("PROFILE_GENDER"));			
				profile.setProfileChiName(rs.getString("PROFILE_CHI_NAME"));			
				profile.setProfileEngName(rs.getString("PROFILE_ENG_NAME"));			
				profile.setProfileAddress(rs.getString("PROFILE_ADDRESS"));			
				profile.setProfileBirth(rs.getString("PROFILE_BIRTH"));			
				profile.setProfilePhone(rs.getString("PROFILE_PHONE"));			
				profile.setProfileEmail(rs.getString("PROFILE_EMAIL"));			
				profile.setProfileSnsFacebook(rs.getString("PROFILE_SNS_FACEBOOK"));			
				profile.setProfileSnsTwitter(rs.getString("PROFILE_SNS_TWITTER"));			
				profile.setProfileSnsNBlog(rs.getString("PROFILE_SNS_NBLOG"));			
				profile.setProfileSnsInstagram(rs.getString("PROFILE_SNS_INSTAGRAM"));			
				profile.setProfileSnsTumblr(rs.getString("PROFILE_SNS_TUMBLR"));			
				profile.setProfileSnsPinterest(rs.getString("PROFILE_SNS_PINTEREST"));		
				profile.setProfilePhotoURL(rs.getString("PROFILE_PHOTO_URL"));			
				profile.setHit(rs.getInt("PROFILE_HIT"));	
				profile.setPrimarySpec(specDao.selectByMainSpec(profile.getMemberId()));
				profiles.add(profile);
				profile=null;
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}	
		return profiles;				
	}
		
	// 프로필 항목 검사
	public String selectBySection(String memberId, String sectionName) 
	{
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;	
		String query = "SELECT " + sectionName + " FROM PROFILE WHERE MEMBER_ID = ?";
		String sectionResult="";
			
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();	
			while(rs.next())
			{							
				sectionResult += rs.getString(sectionName);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}		
		return sectionResult;
	}	
	
	
	// 프로필 항목 검사
	public String selectByName(String studentName) 
	{
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;	
		String query = "SELECT MEMBER_ID FROM PROFILE WHERE PROFILE_NAME = ?";
		String resultId="";
			
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, studentName);
			rs = pstmt.executeQuery();	
			while(rs.next())
			{							
				resultId = rs.getString("MEMBER_ID");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt, conn);
		}		
		return resultId;
	}	
	
	
	// 학생 프로필 전체 검색
	public List<Profile> selectByMemberId(List<String> members) {	
		List<Profile> profiles = new ArrayList<Profile>();
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection conn = null;		
		SpecDao specDao = new SpecDao();
		String subQuery = this.makeSubQueryByMembers(members);
		String query = "SELECT * FROM PROFILE";
		query +=" WHERE " + subQuery;
		
		try {				
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);		
			rs = pstmt.executeQuery();	
			
			while(rs.next())
			{						
				Profile profile = new Profile();	
				profile.setMemberId(rs.getString("MEMBER_ID"));			
				profile.setProfileName(rs.getString("PROFILE_NAME"));			
				profile.setProfileGrade(rs.getInt("PROFILE_GRADE"));			
				profile.setProfileGender(rs.getString("PROFILE_GENDER"));			
				profile.setProfileChiName(rs.getString("PROFILE_CHI_NAME"));			
				profile.setProfileEngName(rs.getString("PROFILE_ENG_NAME"));			
				profile.setProfileAddress(rs.getString("PROFILE_ADDRESS"));			
				profile.setProfileBirth(rs.getString("PROFILE_BIRTH"));			
				profile.setProfilePhone(rs.getString("PROFILE_PHONE"));			
				profile.setProfileEmail(rs.getString("PROFILE_EMAIL"));			
				profile.setProfileSnsFacebook(rs.getString("PROFILE_SNS_FACEBOOK"));			
				profile.setProfileSnsTwitter(rs.getString("PROFILE_SNS_TWITTER"));			
				profile.setProfileSnsNBlog(rs.getString("PROFILE_SNS_NBLOG"));			
				profile.setProfileSnsInstagram(rs.getString("PROFILE_SNS_INSTAGRAM"));			
				profile.setProfileSnsTumblr(rs.getString("PROFILE_SNS_TUMBLR"));			
				profile.setProfileSnsPinterest(rs.getString("PROFILE_SNS_PINTEREST"));		
				profile.setProfilePhotoURL(rs.getString("PROFILE_PHOTO_URL"));			
				profile.setHit(rs.getInt("PROFILE_HIT"));	
				profile.setPrimarySpec(specDao.selectByMainSpec(profile.getMemberId()));
				profiles.add(profile);
				profile=null;
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs, pstmt, conn );
		}	
		return profiles;				
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
			   query += "SET PROFILE_CHI_NAME=?, PROFILE_ENG_NAME=?, PROFILE_ADDRESS =?, PROFILE_PHONE =?, PROFILE_EMAIL=?, PROFILE_GRADE =?, PROFILE_HIT =?, PROFILE_REG_DATE =? ";
			   query += "WHERE MEMBER_ID = ? ";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, profile.getProfileChiName());    
			pstmt.setString(2, profile.getProfileEngName());   
			pstmt.setString(3, profile.getProfileAddress());   	   
			pstmt.setString(4, profile.getProfilePhone());   
			pstmt.setString(5, profile.getProfileEmail());    
			pstmt.setInt(6, profile.getProfileGrade());   
			pstmt.setInt(7, profile.getHit());   
			pstmt.setTimestamp(8, new Timestamp(System.currentTimeMillis()));
			pstmt.setString(9, profile.getMemberId());
			 
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
		
		String query = "UPDATE PROFILE ";
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
		
		String query = "UPDATE PROFILE ";
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
	
	
	
	/********************************************************************************
	 *																				* 
	 *																				*  
	 * 																				* 
	 * 						       INSERT PART										* 
	 *																				* 
	 * 																				* 
	 ********************************************************************************/
	
	public void insertMember(String studentCode, String studentName, String studentGender, int studentGrade, String studentBirth) 
	{
		PreparedStatement pstmt = null;
		Connection conn = null;	

		String query = "INSERT INTO PROFILE";
			   query += "(member_id, profile_name, profile_gender, profile_photo_url,profile_grade, profile_birth) ";
		if(studentGender.equals("M"))	  
			   query += "values(?,?,?,'/skin/images/basic_profile_icon_male.jpg',?,?) ";
		else
			   query += "values(?,?,?,'/skin/images/basic_profile_icon_female.jpg',?,?) ";
		
		try {
			conn = JdbcUtil.getConnection(conn);
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, studentCode);    
			pstmt.setString(2, studentName);
			pstmt.setString(3, studentGender);
			pstmt.setInt(4, studentGrade);	
			pstmt.setString(5, studentBirth);
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
