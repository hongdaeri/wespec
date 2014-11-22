<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/common/common.jsp" %>
<%
	Cookie cookie = new Cookie("rememberId",null);		
	cookie.setMaxAge(0);
	response.addCookie(cookie);
	
	Cookie photoCookie = new Cookie("rememberPhoto",null);		
	photoCookie.setMaxAge(0);
	response.addCookie(photoCookie);
	
	Cookie namecookie = new Cookie("rememberName",null);		
	namecookie.setMaxAge(0);
	response.addCookie(namecookie);
	
	rememberId="";
	rememberName="";
	rememberPhoto="";	
	
	response.sendRedirect(request.getContextPath() + "/login");
%>