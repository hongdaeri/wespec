<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/common/common.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/head.jsp" flush="false" />
<%
String[] languageList = {
"C",
"C++",
"Python",
"Java",
"Visual Basic",
"Lisp",
"PHP",
"ASP",
"JSP",
"C#",
"Ruby",
"HTML",
"Javascript",
"Node.js",
"Android",
"Oracle",
"Swift",
"Objective-C"
};
%>
<div class="row">
<c:forEach var="item" items="<%= languageList %>" varStatus="status">
			    			   
	<div class="col-md-2 col-sm-4 col-xs-6">
		<input id="abl${status.index}" class="css-checkbox" type="checkbox" name="ability" value="${item}" /><label for="abl${status.index}" class="css-label">${item}</label>
	</div>					   	

</c:forEach>
</div>
