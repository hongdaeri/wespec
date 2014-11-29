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
/**
 * Servlet implementation class PrintService
 */
@WebServlet(urlPatterns = {"/print/*" , "/Print/*", "/PRINT/*"})
public class PrintService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PrintService() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		request.setCharacterEncoding("euc-kr");
		
		// 로그인 체크
		if(!ExceptionService.isLogin(request))			
			ExceptionService.printAlert(request, response, "로그인하지 않으셨습니다.","/login");
		
		SpecDao specDao = new SpecDao();
		Spec spec = new Spec();	
		ProfileDao profileDao = new ProfileDao();
		Profile profile = new Profile();
		
		String memberId = request.getRequestURI().substring(
				request.getContextPath().length() + "/open".length());
		
		// URL : OPEN/학생이름   URL에 대한 처리 
		if(memberId.length()>2)
			memberId = memberId.substring(2);
		System.out.println("member id : " + memberId);
		// Profile DAO 클래스를 이용해 request에 Profile 객체 실어 전송
		profile = profileDao.select(memberId);	
		request.setAttribute("profile", profile);
		
		// SpecDAO 클래스를 이용해 request에 Spec 객체 실어 전송
		spec = specDao.selectSpec(memberId);			
		request.setAttribute("spec", spec);	
		
		
		RequestDispatcher requestDispatcher = 
				request.getRequestDispatcher("/skin/module/print.jsp");
		requestDispatcher.forward(request, response);
	}

	

}
