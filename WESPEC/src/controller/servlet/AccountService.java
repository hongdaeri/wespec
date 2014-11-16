package controller.servlet;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.vo.*;
import model.dao.AccountDao;
import model.dao.ProfileDao;
import model.dao.SpecDao;


/**
 * 프로필/이력 등록 서블릿 클래스
 * @since 2014.11.02
 * @author wespec.co.kr
 **/

@WebServlet(urlPatterns = {"/login","/join", "/logout"})
public class AccountService extends HttpServlet{	
	private static final long serialVersionUID = -8567273307264010369L;
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		response.setContentType("text/html; charset=euc-kr");
		request.setCharacterEncoding("euc-kr");	
		String requestURL = request.getRequestURI().substring(request.getContextPath().length());
		String nextPage = "";
		
	
		if(requestURL.equals("/login")) 
		{			
	 		if(ExceptionService.isLogin(request))	 		
	 			ExceptionService.printAlert(request, response, "이미 로그인 되어있습니다.","/List");
	 		
			nextPage = "/skin/module/login.jsp";			
		}
		else if(requestURL.equals("/logout")) 
		{	
			if(!ExceptionService.isLogin(request))			
				ExceptionService.printAlert(request, response, "로그인하지 않으셨습니다.","/login");
						
			nextPage = "/skin/module/logout.jsp";			
		}
		else if(requestURL.equals("/join")) 
		{
			if(!ExceptionService.isLogin(request))			
				ExceptionService.printAlert(request, response, "로그인하지 않으셨습니다.","/login");
			if(!ExceptionService.isAdmin(request))
				ExceptionService.printAlert(request, response, "관리자만 이용할 수 있는 기능입니다.","/");
			else insertMember();
			
			nextPage = "/skin/module/join.jsp";		
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);
			
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html; charset=euc-kr");
		request.setCharacterEncoding("euc-kr");
		
		String memberId = request.getParameter("memberId");
		String memberPw = request.getParameter("memberPw");
		
		AccountDao accountDao = new AccountDao();
		Member member = accountDao.select(memberId);
		
		if( member !=null  && member.getMemberPassword().equals(memberPw))
		{	
			ProfileDao profileDao = new ProfileDao();
		
			String photoUrl = profileDao.selectBySection(memberId, "PROFILE_PHOTO_URL");
			HttpSession session = request.getSession();
			session.setAttribute("memberId",memberId);
			session.setAttribute("memberGroup",member.getMemberGroup());
			session.setAttribute("photoUrl", photoUrl);
			response.sendRedirect(request.getContextPath() + "/List");
		}
		else 
			ExceptionService.printAlert(request, response, "계정 정보가 올바르지 않습니다. 확인후 다시 입력해주세요.");
		
	}
	
	public void insertMember() 
	{
		String[][] stuList = {
				{ "1244009", "김재환", "911225", "M" },	
				{ "1244013", "남영훈", "920220", "M" },	
				{ "1244031", "이성훈", "930309", "M" },	
				{ "1444001", "고영수", "960205", "M" },	
				{ "1444002", "김기태", "941201", "M" },	
				{ "1444003", "김성준", "950718", "M" },	
				{ "1444004", "김승환", "950323", "M" },	
				{ "1444005", "김예린", "951004", "F" },	
				{ "1444006", "김채현", "950605", "F" },	
				{ "1444020", "오기택", "950304", "M" },	
				{ "1444008", "류영준", "941130", "M" },	
				{ "1444009", "박상돈", "940420", "M" },	
				{ "1444011", "박세희", "960211", "F" },	
				{ "1444012", "박준영", "940425", "M" },	
				{ "1444013", "박진완", "951019", "M" },	
				{ "1444014", "박희동", "951127", "M" },	
				{ "1444015", "서지원", "950127", "M" },	
				{ "1444016", "설정수", "950613", "M" },	
				{ "1444017", "손다영", "951204", "F" },	
				{ "1444018", "신이종", "951025", "M" },	
				{ "1444022", "윤우희", "951129", "M" },	
				{ "1444023", "이승호", "951018", "M" },	
				{ "1444024", "이유리", "950711", "F" },	
				{ "1444025", "이정민", "950504", "M" },	
				{ "1444026", "이정호", "950427", "M" },	
				{ "1444027", "이종훈", "950108", "M" },	
				{ "1444028", "이주열", "950905", "M" },	
				{ "1444029", "장상진", "950829", "M" },	
				{ "1444030", "정재성", "950921", "M" },	
				{ "1444031", "정지영", "950613", "F" },	
				{ "1444032", "정지환", "951010", "M" },	
				{ "1444034", "최선동", "950411", "M" },	
				{ "1444035", "최준희", "951013", "M" },	
				{ "1444036", "최혜진", "941224", "F" },	
				{ "1444038", "한승동", "951010", "M" },	
				{ "1026017", "이상욱", "911025", "M" },	
				{ "1044001", "권순혁", "910926", "M" },	
				{ "1044003", "김성현", "910403", "M" },	
				{ "1044004", "김인우", "920212", "M" },	
				{ "1044006", "김종훈", "910710", "M" },	
				{ "1044011", "박선우", "920118", "M" },	
				{ "1044019", "이승욱", "910218", "M" },	
				{ "1044024", "정희찬", "910820", "M" },	
				{ "1144014", "배현호", "920902", "M" },	
				{ "1144018", "송민욱", "920908", "M" },	
				{ "1144022", "이태우", "920403", "M" },	
				{ "1144023", "임대현", "921128", "M" },	
				{ "1144025", "전선재", "920713", "M" },	
				{ "1144026", "조재이", "930426", "F" },	
				{ "1144029", "최석근", "920527", "M" },	
				{ "1244007", "김선진", "931211", "M" },	
				{ "1244036", "진보람", "920803", "F" },	
				{ "1301002", "김민지", "941228", "F" },	
				{ "1344003", "김영범", "940630", "M" },	
				{ "1344006", "김지원", "941101", "M" },	
				{ "1344008", "명평윤", "941024", "M" },	
				{ "1344014", "송혜진", "940318", "F" },	
				{ "1344015", "송희웅", "931119", "M" },	
				{ "1344017", "신하렴", "940716", "F" },	
				{ "1344021", "이문환", "930312", "M" },	
				{ "1344022", "이승재", "931127", "M" },	
				{ "1344024", "이효형", "900508", "M" },	
				{ "1344026", "전산하", "930430", "F" },	
				{ "1344032", "조훈연", "940623", "M" },	
				{ "1344035", "최명진", "941117", "M" },	
				{ "0929344", "신현호", "900904", "M" },	
				{ "0829169", "박현수", "891219", "M" },	
				{ "1023018", "윤정호", "910904", "M" },	
				{ "1023051", "손민석", "910714", "M" },	
				{ "1044005", "김종근", "920211", "M" },	
				{ "1044012", "박우석", "910417", "M" },	
				{ "1044014", "박지철", "910329", "M" },	
				{ "1044017", "윤태열", "910814", "M" },	
				{ "1044020", "이용준", "910402", "M" },	
				{ "1044021", "이푸름", "910920", "M" },	
				{ "1044022", "임영심", "910808", "F" },	
				{ "1044023", "장현수", "910530", "M" },		
				{ "1244004", "김다은", "930821", "F" },	
				{ "1244006", "김선명", "931023", "F" },	
				{ "1244010", "김지현", "930702", "F" },	
				{ "1244011", "김혜인", "940112", "F" },	
				{ "1244014", "노혜선", "930805", "F" },	
				{ "1244019", "서재현", "911202", "M" },	
				{ "1244020", "송다은", "930915", "F" },	
				{ "1244027", "이가영", "920909", "F" },	
				{ "1244033", "이현범", "900815", "M" },	
				{ "1244039", "한혜지", "940201", "F" },	
				{ "1244040", "황재민", "930719", "M" },	
				{ "1444301", "김정선", "920331", "F" },	
				{ "1444302", "박진영", "901211", "M" },	
				{ "0729081", "홍바울", "880508", "M" },	
				{ "0929051", "박호진", "910314", "M" },	
				{ "0929053", "안순호", "901227", "M" },	
				{ "0929088", "김현우", "900610", "M" },	
				{ "0929149", "황태연", "910104", "M" },	
				{ "0929208", "이태윤", "910213", "M" },	
				{ "0929240", "서지원", "910211", "M" },	
				{ "0929285", "장근식", "910218", "M" },	
				{ "1244001", "고은", "920327", "F" },	
				{ "1444021", "윤건", "950728", "M" },	
				{ "1444007", "노설", "960106", "F" }
			};
		SpecDao specDao = new SpecDao();
		ProfileDao profileDao = new ProfileDao();
		AccountDao accountDao = new AccountDao();
		int [] stud_grade = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3};

		for(int i=0; i<stuList.length; i++)
		{				
			accountDao.insertMember(stuList[i][0], stuList[i][2]);
			profileDao.insertMember(stuList[i][0], stuList[i][1], stuList[i][3], stud_grade[i], stuList[i][2]);
			specDao.insertMember(stuList[i][0]);			
		}
		
		
			
	}
}
