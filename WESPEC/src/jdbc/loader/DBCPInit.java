package jdbc.loader;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.sql.DataSource;

import com.mysql.jdbc.Connection;

import java.util.StringTokenizer;

public class DBCPInit extends HttpServlet {


	public void init(ServletConfig config) throws ServletException {
		try {
			
			String drivers = config.getInitParameter("jdbcdriver");
			StringTokenizer st = new StringTokenizer(drivers, ",");
			while (st.hasMoreTokens()) {
				String jdbcDriver = st.nextToken();
				Class.forName(jdbcDriver);
			}
			
			Class.forName("org.apache.commons.dbcp.PoolingDriver");

		} catch(Exception ex) {
			throw new ServletException(ex);
		}
	}
}
