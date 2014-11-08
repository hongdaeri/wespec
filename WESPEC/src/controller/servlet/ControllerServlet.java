package controller.servlet;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.vo.*;
import model.dao.ProfileDao;
import model.dao.SpecDao;

/************************************
 * URL¸ÅÇÎ ¼­ºí¸´						*
 * @since 2014.11.07				*
 * @author wespec.co.kr				*
 * 									*
 ************************************/

@WebServlet("*.do")
public class ControllerServlet extends HttpServlet{	
	private static final long serialVersionUID = -8567273307264010369L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doPost(request,response);			
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html; charset=euc-kr");
		request.setCharacterEncoding("euc-kr");
	
		String com = request.getRequestURI().substring(request.getContextPath().length());
		
		
		if(com.equals("register"))
		{
			
		}
		else if(com.equals("open"))
		{
			
		}
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/skin/module/Open.jsp");
		rd.forward(request, response);			
	}
}
