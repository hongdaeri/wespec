<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>

<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1>JDBC TEST </h1>
<h3><%=  new Date(System.currentTimeMillis()) %></h3>
<hr>
<table border=1>
	<tr>
		<td>id</td><td>name</td><td>grade</td>
	</tr>
	

<%
	
	// 1. JDBC 드라이버 로딩.
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try {
		//localhost:80 --> localhost:3306
		String jdbcDriver = "jdbc:mysql://localhost:80/test?useUnicode=true&characterEncoding=euckr";
		String dbUser = "wespec";
		String dbPass = "18gkdans";
		
		String query = "select * from testTable";
		
		// 2. 커넥션 생성
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		// 3. statement 생성
		stmt = conn.createStatement();
		
		// 4. 쿼리실행
		rs = stmt.executeQuery(query);
		
		// 5. 쿼리 실행결과
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
		out.print("<h1>접속실패</h1>");
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