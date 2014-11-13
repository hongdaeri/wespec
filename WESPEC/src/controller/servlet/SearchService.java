package controller.servlet;

import java.io.IOException;
import java.io.PrintWriter;
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
		// TODO Auto-generated method stub
	}

}
