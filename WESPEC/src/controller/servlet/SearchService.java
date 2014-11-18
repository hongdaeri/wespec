package controller.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.servlet.ExceptionService;
import model.dao.ProfileDao;
import model.dao.SpecDao;
import model.vo.*;

/**
 * Servlet implementation class SearchService
 */
@WebServlet(urlPatterns = {"/Search" , "/search"})
public class SearchService extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SearchService() {
        super();      
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		request.setCharacterEncoding("euc-kr");
		
		// 로그인 체크
		if(!ExceptionService.isLogin(request))			
			ExceptionService.printAlert(request, response, "로그인하지 않으셨습니다.","/login");
		
		String searchTarget = new String(request.getParameter("s_name").getBytes("8859_1"),"KSC5601");	
		//이클립스 ver
		//String searchTarget = request.getParameter("s_name");
		
		ProfileDao profileDao = new ProfileDao();
		String studentId = profileDao.selectByName(searchTarget);
				
		response.sendRedirect(request.getContextPath() + "/Open/" + studentId);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		request.setCharacterEncoding("euc-kr");
		
		// 로그인 체크
		if(!ExceptionService.isLogin(request))			
			ExceptionService.printAlert(request, response, "로그인하지 않으셨습니다.","/login");
		
		SpecDao specDao = new SpecDao();
		ProfileDao profileDao = new ProfileDao();		
		List<String> members = new ArrayList<String>();
		String nextPage = "/skin/module/list.jsp";
		
		String[] chkbox = request.getParameterValues("s_chk");		
		//스펙이 존재하는 전체학생 리스트 뽑기.
		members = specDao.selectHaveSpecByAll();
		
		try{
			if(chkbox!=null)
			{
				for(int i=0; i<chkbox.length; i++)
				{
					if(chkbox[i].equals("haveCertificate"))
					{
						members = specDao.selectHaveSpecByMemberId(members, "CERTIFICATE");
					}
					if(chkbox[i].equals("haveAward"))
					{
						members = specDao.selectHaveSpecByMemberId(members, "AWARD");
					}
					if(chkbox[i].equals("havePortfoilo"))
					{
						members = specDao.selectHaveSpecByMemberId(members, "PORTFOLIO");
					}
					if(chkbox[i].equals("haveTraining"))
					{
						members = specDao.selectHaveSpecByMemberId(members, "TRAINING");
					}
					if(chkbox[i].equals("haveService"))
					{
						//미구현
					}
					if(chkbox[i].equals("haveClub"))
					{
						//미구현
					}
					if(chkbox[i].equals("haveLanguageExam"))
					{	
						String languageExamName = request.getParameter("languageExamName");
						String languageGrade = request.getParameter("languageGrade") + request.getParameter("languageExamGradeOption");
						members = specDao.selectHaveSpecByMemberId(members, "Language_Exam" , languageExamName, languageGrade);
					}		
				}
			}
		} catch(Exception ex) 	{  nextPage = "/Exception?ex=NotFoundStudent";	}
		// 학생 리스트를 토대로 (선택성별의) 프로필 리스트 가져오기.
		List <Profile> profiles = new ArrayList<Profile>();	
		profiles = profileDao.selectByMemberId(members);	
		
		// 검색조건 성별 검별 작업.
		if(request.getParameter("gender").equals("M"))
		{
			for(int i=0; i<profiles.size(); i++)
			{				
				if(profiles.get(i).getProfileGender().equals("F"))
				{	
					profiles.remove(i);
					
				}
			}
		}
		else if(request.getParameter("gender").equals("F"))
		{
			for(int i=0; i<profiles.size(); i++)
			{		
				if(profiles.get(i).getProfileGender().equals("M"))
				{	
					profiles.remove(i);
				}
			}
		}
		
		// Profile DAO 클래스를 이용해 request에 Profiles 객체 실어 전송		
		request.setAttribute("profiles", profiles);		
		
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(nextPage);
		requestDispatcher.forward(request, response);	

	}
}
