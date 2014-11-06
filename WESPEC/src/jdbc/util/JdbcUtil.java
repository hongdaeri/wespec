package jdbc.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class JdbcUtil {
	
	public static Connection getConnection(Connection conn)
	{		
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource dataSource = (DataSource) envContext.lookup("jdbc/mysql");
			conn = dataSource.getConnection();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return conn;		
	}
	
	
	public static void close(ResultSet rs, PreparedStatement pstmt, Connection conn)
	{
		if(rs!=null) { try{ rs.close(); } catch(Exception ex) { } } 
		if(pstmt!=null) { try{ pstmt.close(); } catch(Exception ex) { } } 
		if(conn!=null) { try{ conn.close(); } catch(Exception ex) { } } 
	}
	
	public static void close(PreparedStatement pstmt, Connection conn)
	{
		
		if(pstmt!=null) { try{ pstmt.close(); } catch(Exception ex) { } } 
		if(conn!=null) { try{ conn.close(); } catch(Exception ex) { } } 
	}

	public static void close(ResultSet rs) {
		if (rs!=null) { try { rs.close(); } catch (SQLException ex) { }	}
	}

	public static void close(Statement stmt) {
		if (stmt!=null) { try {	stmt.close();} catch (SQLException ex) {}}
	}

	public static void close(Connection conn) {
		if (conn!=null) {try {	conn.close();} catch (SQLException ex) {}}
	}

	public static void rollback(Connection conn) {
		if (conn!=null) {	try {	conn.rollback(); } catch (SQLException ex) {}}
	}
}