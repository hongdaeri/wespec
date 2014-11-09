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
			memberId = memberId.substring(1);
		
		// Profile DAO 클래스를 이용해 request에 Profile 객체 실어 전송
		profile = profileDao.select(memberId);	
		request.setAttribute("profile", profile);
		
		// SpecDAO 클래스를 이용해 request에 Spec 객체 실어 전송
		spec = specDao.selectSpec(memberId);			
		request.setAttribute("spec", spec);	
		
		
		RequestDispatcher requestDispatcher = 
				request.getRequestDispatcher("/skin/module/Open.jsp");
		requestDispatcher.forward(request, response);			
	}
}
