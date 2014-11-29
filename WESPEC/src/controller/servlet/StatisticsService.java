package controller.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.SpecDao;
import model.vo.Statistics;

/**
 * 위스펙 통계 서블릿
 * @since 2014.11.23
 * @author wespec.co.kr
 **/
@WebServlet("/Statistics")
public class StatisticsService extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public StatisticsService() {
        super(); 
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 * doGet : 전체학생 통계
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		request.setCharacterEncoding("euc-kr");
		
		// 로그인 체크
		if(!ExceptionService.isLogin(request))			
			ExceptionService.printAlert(request, response, "로그인하지 않으셨습니다.","/login");
	
		Statistics statis = new Statistics();
		SpecDao specDao = new SpecDao();
		statis = specDao.statisticsPart_All(statis);
		statis = specDao.statisticsPart_TOEIC(statis);
		statis = specDao.statisticsPart_CERTIFICATE(statis);
		statis = specDao.statisticsPart_AWARD(statis);
		statis = specDao.statisticsPart_PORTFOLIO(statis);
		statis = specDao.statisticsPart_SWAbility(statis);
		
		request.setAttribute("statistics", statis);
		
		RequestDispatcher requestDispatcher = 
				request.getRequestDispatcher("/skin/module/statistics.jsp");
		requestDispatcher.forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 * doPost : 학년별 통계
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
