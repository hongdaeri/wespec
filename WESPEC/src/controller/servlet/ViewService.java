package controller.servlet;

import javax.servlet.annotation.WebServlet;

import java.io.IOException;
import java.io.PrintWriter;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.vo.Spec;
import model.vo.spec.*;
import model.dao.SpecDao;

/**
 * 프로필/이력 등록 서블릿 클래스
 * @since 2014.11.02
 * @author wespec.co.kr
 **/

@WebServlet(urlPatterns = {"/OPEN/*" , "/open/*", "/Open/*"})
public class ViewService extends HttpServlet{	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8567273307264010369L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html; charset=euc-kr");
		SpecDao specDao = new SpecDao();
		Spec spec = new Spec();			
		
		String stuName = request.getRequestURI().substring(
				request.getContextPath().length() + "/register".length());
		
		// URL : OPEN/학생이름   URL에 대한 처리 
		if(stuName.length()>1)
			stuName = stuName.substring(1);
				
		spec = specDao.selectSpec("h0ngz");			
		request.setAttribute("spec", spec);			
		
		RequestDispatcher requestDispatcher = 
				request.getRequestDispatcher("/skin/module/RegisterModifyTest.jsp");
		requestDispatcher.forward(request, response);
			
	}
}
