<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%-- /* 각종 Path 정의 및 기본값 정의 */ --%>
<%
	// Basic Path 
	String rootPath = request.getContextPath();
	String skinPath =  rootPath + "/skin";
	String modulePath = rootPath + "/module";
	String imagesPath = skinPath + "/images";
	String uploadPath = rootPath + "/file/images";
%>

<%-- /* 로그인 상태 확인 및 DISPLAY 처리 */ --%>
<%				
	String memberId = (String)session.getAttribute("memberId");
	boolean login = memberId == null ? false : true;
	String photoUrl = (String)session.getAttribute("photoUrl");
	String memberGroup = (String)session.getAttribute("memberGroup");
%>
<%-- /* 툴팁 내용 설정  */ --%>
<%
	String tooltip_year ="<strong>년도를 입력하세요 (숫자 4자리)</strong><br>예) 2014";
	String tooltip_month ="<strong>월을 입력하세요 (숫자 2자리)</strong><br>예) 05";
%>

<%--/* 소프트웨어개발능력 체크박스리스트 */ --%>
<%	
	String[] languageList = {
			"C",			"C++",			"Python",			"Java",
			"Visual Basic",	"Lisp",			"PHP",				"ASP",
			"JSP",			"C#",			"Ruby",				"HTML",
			"Javascript",	"Node.js",		"Android",			"Oracle",
			"Swift",		"Objective-C"
			};
%>

<%--/* 쿠키설정 */ --%>
<%	
	Cookie[] cookies = request.getCookies();
	String rememberId = "";
	
	if(cookies!=null)
	{
		for(int i=0; i<cookies.length; i++)
		{
			if(cookies[i].getName().equals("rememberId"))
				rememberId = cookies[i].getValue();
		}
	}
%>