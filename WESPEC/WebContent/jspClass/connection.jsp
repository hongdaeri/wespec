<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>


<h1> hello world!:</h1>
<%
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
											
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wespec","wespec","18gkdans");

		String query="select * from member";
		pstmt = conn.prepareStatement(query);
		rs = pstmt.executeQuery();
		
		while(rs.next())
		{
			String name = rs.getString("member_id");
			String id = rs.getString("member_group");
		
			
			out.println(name + " " +id);
		}
		
	}
	catch (SQLException ex)
	{
		out.println("单海 立加 角菩");
	}
	finally
	{
		try { rs.close(); } catch(SQLException ex) { out.println("rs"); }  
		try { pstmt.close(); } catch(SQLException ex) { out.println("pstmt"); }  
		try { conn.close(); } catch(SQLException ex) { out.println("conn");}  
		
	}
			
%>


