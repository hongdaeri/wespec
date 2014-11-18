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
import model.vo.*;

/**
 * Servlet implementation class ListService
 */
@WebServlet(urlPatterns = {"/List" , "/LIST", "/list"})
public class ListService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListService() {
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
		
		ProfileDao profileDao = new ProfileDao();
		List <Profile> profiles = new ArrayList<Profile>();
					
		// Profile DAO 클래스를 이용해 request에 Profiles 객체 실어 전송
		profiles = profileDao.select();		
		request.setAttribute("profiles", profiles);
	
		RequestDispatcher requestDispatcher = 
				request.getRequestDispatcher("/skin/module/list.jsp");
		requestDispatcher.forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
