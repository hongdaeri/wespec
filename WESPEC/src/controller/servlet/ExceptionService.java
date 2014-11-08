package controller.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class EsceptionService
 */
@WebServlet("/Exception")
public class ExceptionService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExceptionService() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	public static boolean isLogin(HttpServletRequest request) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String memberId = (String)session.getAttribute("memberId");			
		if(memberId != null)
			return true;
		else
			return false;		
	}
	
	public static void printAlert(HttpServletRequest request, HttpServletResponse response,String message, String url) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();	
		String scriptCode = "<script language='javascript'>alert('"+message+ "'); location.href='"+ request.getContextPath() + url + "';</script>";
		out.print(scriptCode);			
		out.flush();
		out.close();
	}
	public static void printAlert(HttpServletRequest request, HttpServletResponse response,String message) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();	
		String scriptCode = "<script language='javascript'>alert('"+message+ "'); history.back(); </script>";
		out.print(scriptCode);			
		out.flush();
		out.close();
	}

}
