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


	// CSS 기본값.
	String login_display_state = "none";


%>

<%-- /* 로그인 상태 확인 및 DISPLAY 처리 */ --%>
<%				
	String memberId = (String)session.getAttribute("memberId");
	boolean login = memberId == null ? false : true;
%>