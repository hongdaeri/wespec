<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="model.vo.Spec" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
	Spec spec = (Spec)request.getAttribute("spec");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
											
		conn = DriverManager.getConnection("jdbc:mysql://localhost:80/testdb","wespec","18gkdans");

		String query="select * from userinfo";
		pstmt = conn.prepareStatement(query);
		rs = pstmt.executeQuery();
		
		while(rs.next())
		{
			String name = rs.getString(1);
			String id = rs.getString("id");
			String email = rs.getString("email");
			String part = rs.getString("part");
			int count = rs.getInt("count");
			int level = rs.getInt("level");
			
			out.println(name + " " +id + " " +email + " " +part + " " +count + " " +level + " ");
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


