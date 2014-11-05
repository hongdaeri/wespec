package controller.servlet;

import javax.servlet.annotation.WebServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.SQLException;
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
import model.dao.SpecDao;

/**
 * 프로필/이력 등록 서블릿 클래스
 * @since 2014.11.02
 * @author wespec.co.kr
 **/

@WebServlet(urlPatterns = {"/Test" , "/test", "/TEST"})


public class ServletManual extends HttpServlet{	

	SpecDao specDao = null;
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
		
		String param = request.getParameter("param");
		
		
		specDao = new SpecDao();
	
		if(param.equals("s1"))	// 자격증
		{
			Certificate certificate = new Certificate();
			certificate.setCertificateDate(request.getParameter("certificateDate"));
			certificate.setCertificateName(request.getParameter("certificateName"));
			certificate.setCertificateGrade(request.getParameter("certificateGrade"));
			certificate.setCertificateOrg(request.getParameter("certificateOrg"));
			certificate.setPublicScope(Integer.parseInt(request.getParameter("publicScope")));
			
			this.specDao.insert(certificate);
			
			out.print("성공");
			
		}
		else if(param.equals("s2"))	// 어학능력
		{			
			 Language language = new Language();
			 language.setLanguageName(request.getParameter("languageName"));
			 language.setLanguageExamName(request.getParameter("languageExamName"));
			 language.setLanguageExamGrade(request.getParameter("languageExamGrade"));
			 language.setLanguageExamOrg(request.getParameter("languageExamOrg"));
			 language.setPublicScope(Integer.parseInt(request.getParameter("publicScope")));
			 
			this.specDao.insert(language);
		}
		else if(param.equals("s3")) // 수상실적
		{
			Award award = new Award();
			award.setAwardDate(request.getParameter("awardDate"));
			award.setAwardSubject(request.getParameter("awardSubject"));
			award.setAwardOrg(request.getParameter("awardOrg"));
			award.setPublicScope(Integer.parseInt(request.getParameter("publicScope")));
			 
			this.specDao.insert(award);
		}
		else if(param.equals("s4")) // 교육 및 연수
		{
			Training trainning = new Training();
			trainning.setTrainingName(request.getParameter("trainingName"));
			trainning.setTrainingPeriod(request.getParameter("trainingPeriod"));
			trainning.setTrainingOrg(request.getParameter("trainingOrg"));
			trainning.setPublicScope(Integer.parseInt(request.getParameter("publicScope")));
			 
			this.specDao.insert(trainning);
		}
		else if(param.equals("s5")) // 포트폴리오
		{
			Portfolio portfolio = new Portfolio();
			portfolio.setPortfolioName(request.getParameter("portfolioName"));
			portfolio.setPortfolioPeriod(request.getParameter("portfolioPeriod"));
			portfolio.setPortfolioLink(request.getParameter("portfolioLink"));
			portfolio.setPublicScope(Integer.parseInt(request.getParameter("publicScope")));
			 
			this.specDao.insert(portfolio);
		}
		else if(param.equals("s6")) // 선호프로그래밍 랭귀지
		{
			ProgrammingLanguage programmingLanguage = new ProgrammingLanguage();
			programmingLanguage.setLanguageName(request.getParameter("languageName"));
			programmingLanguage.setLanguageLevel(request.getParameter("languageLevel"));
			programmingLanguage.setPublicScope(Integer.parseInt(request.getParameter("publicScope")));
			 
			this.specDao.insert(programmingLanguage);
		}
		else if(param.equals("s7")) // 학력사항
		{
			Academic academic = new Academic();
			
			academic.setAcademicName(request.getParameter("academicName"));
			academic.setAcademicMajor(request.getParameter("academicMajor"));
			academic.setAcademicPeriod(request.getParameter("academicPeriod"));
			academic.setAcademicState(request.getParameter("academicState"));
			academic.setPublicScope(Integer.parseInt(request.getParameter("publicScope")));
			 
			this.specDao.insert(academic);
		}
		else if(param.equals("s8")) // 병역
		{
			Military military = new Military();
			
			military.setMilitaryPeriod(request.getParameter("militaryPeriod"));
			military.setMilitaryGroup(request.getParameter("militaryGroup"));
			military.setMilitaryRank(request.getParameter("militaryRank"));
			military.setMilitaryWork(request.getParameter("militaryWork"));
			military.setPublicScope(Integer.parseInt(request.getParameter("publicScope")));
						 
			this.specDao.insert(military);
		}
		else
		{
			
		}
	
	}

	
	
	

}
