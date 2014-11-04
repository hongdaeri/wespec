package model.dao;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;

import model.vo.spec.*;
import model.vo.Profile;
public class SpecDao {
	
	private PreparedStatement pstmt=null;
	private Statement stmt = null;
	private ResultSet rs = null;
	
	
	public void insert(Profile profile)
	{
		
	}

	public void insert(Certificate certificate)
	{
		/* 이런식으로 하면 될듯..
		pstmt = conn.prepareStatement("INSERT INTO CERTIFICATE VALUES (?,?,?,?,?,?,?,?)");
		pstmt.setInt(1, );
		pstmt.setString(2,);
		pstmt.setString(3, certificate.getCertificateName());
		pstmt.setTimestamp(4, new Timestamp(certificate.getCertificateDate().getTime());
		
				certificate_no : int
				member_id
				certificate_name
				certificate_date  : date
				certificate_grade
				certificate_organization
				certificate_scope : int
				certificate_registration : date
				
				*/

	}
	public void insert(Academic academic)
	{
		
	}
	public void insert(Award award)
	{
		
	}
	public void insert(Language language)
	{
		
	}
	public void insert(Military milytary)
	{
		
	}
	public void insert(Portfolio portfolio)
	{
		
	}
	public void insert(ProgrammingLanguage programmingLanguage)
	{
		
	}
	public void insert(Trainning trainning)
	{
		
	}

}
