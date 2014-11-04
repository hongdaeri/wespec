<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>

<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1>JDBC TEST </h1>
<h3>mysql:testdb</h3>
<hr>
<table border=1>
	<tr>
		<td>id</td><td>name</td><td>grade</td>
	</tr>
	

<%
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try {
		//localhost:80 --> localhost:3306
		String jdbcDriver ="jdbc:apache:commons:dbcp:/pool";		
		String query = "select * from testTable";
		
		conn = DriverManager.getConnection(jdbcDriver);
		
		// 3. statement 积己
		stmt = conn.createStatement();
		
		// 4. 孽府角青
		rs = stmt.executeQuery(query);
		
		// 5. 孽府 角青搬苞
		while(rs.next())
		{
%>

		<tr>
			<td><%= rs.getString("id") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("grade") %>
		</tr>
<%	
		}
		
	}catch(SQLException ex)
	{
		out.print("<h1>立加角菩</h1>");
	}
	finally
	{
		if(rs!=null) try {rs.close();} catch(SQLException ex) {} 
		if(stmt!=null) try {stmt.close();} catch(SQLException ex) { }
		if(conn!=null) try { conn.close(); } catch(SQLException ex) { }
	}

%>
</table>
</body>
</html>