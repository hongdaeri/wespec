<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>    
<%@ include file="/common/common.jsp" %>

<%
	String loginState = (String)session.getAttribute("memberId");
	
	if(loginState != null)
	{
		response.sendRedirect( rootPath + "/List");
	}
	else
	{
		response.sendRedirect(rootPath + "/skin/module/login.jsp");
	}
%>



