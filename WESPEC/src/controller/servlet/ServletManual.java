package controller.servlet;

import javax.servlet.annotation.WebServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.vo.Resume;
import model.vo.Spec;
import model.vo.spec.*;
import model.dao.ResumeDao;

/**
 * 프로필/이력 등록 서블릿 클래스
 * @since 2014.11.02
 * @author wespec.co.kr
 **/

@WebServlet(urlPatterns = {"/Test" , "/test", "/TEST"})

public class ServletManual extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html; charset=euc-kr");
		
		RequestDispatcher requestDispatcher =
				request.getRequestDispatcher("/skin/module/RegisterModifyTest.jsp");
			requestDispatcher.forward(request, response);
			
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html; charset=euc-kr");
		request.setCharacterEncoding("euc-kr");
		PrintWriter out = response.getWriter();
		
		
		Spec c = getSpecSection(request);
		
		
		Enumeration<String> names = request.getParameterNames();
		while(names.hasMoreElements())
		{
			String n = names.nextElement();
			String value = request.getParameter(n);
			
			out.println(n + ": " + value + "<br>");		
			
		}
		
		
		
		
		
		
		
		out.print("<h1>POST 방식에 대한 처리 예) 폼 데이터 처리하기</h1>");
	}
	public Spec getSpecSection(HttpServletRequest request)
	{
		
		String param = request.getParameter("param");
		
		if(param.equals("s1"))
		{
			Certificate certificate = new Certificate();
			certificate.setCertificateDate(request.getParameter("certificateDate"));
			certificate.setCertificateName(request.getParameter("certificateName"));
			certificate.setCertificateGrade(request.getParameter("certificateGrade"));
			certificate.setCertificateOrganization(request.getParameter("certificateOrganization"));
			certificate.setCertificateDate(request.getParameter("certificateDate"));
			certificate.setPublicScope(Integer.parseInt(request.getParameter("publicScope")));
			
			return certificate;
		}
		else if(param.equals("s2"))
		{
			
			return new Language();
		}
		else if(param.equals("s3"))
		{
			return new Award();
		}
		else if(param.equals("s4"))
		{
			return new Trainning();
		}
		else if(param.equals("s5"))
		{
			return new Portfolio();
		}
		else if(param.equals("s6"))
		{
			return new ProgrammingLanguage();
		}
		else if(param.equals("s7"))
		{
			return new Academic();
		}
		else if(param.equals("s8"))
		{
			return new Military();
		}
		else
		{
			return null;
		}
	}
	
	
	

}
