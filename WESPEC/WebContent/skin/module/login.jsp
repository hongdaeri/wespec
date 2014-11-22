<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>    
<%@ include file="/common/common.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="kr">
<head>
   	<meta charset="euc-kr">
   	<meta http-equiv="X-UA-Compatible" content="IE=edge">
   	<meta name="viewport" content="width=device-width, initial-scale=1">
   	<title>WESPEC in Software</title>

   	<!-- Bootstrap -->
   	<link href="<%=skinPath%>/css/bootstrap.min.css" rel="stylesheet">
   	<link href="<%=skinPath%>/css/login.css" rel="stylesheet" media="screen">
   	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
   	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
   	<!--[if lt IE 9]>
    	 <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    	 <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  	 	<![endif]-->
	<!-- js -->
	<script src="<%=skinPath %>/js/wespec.js"></script>
	<script src="<%=skinPath %>/js/jquery-1.9.1.min.js"></script>
	<script src="<%=skinPath %>/js/modernizr.js"></script>
	<script src="<%=skinPath %>/js/jspatch.js"></script>
	<script src="<%=skinPath %>/js/buildcats.js" charset="utf-8"></script>
	<script src="<%=skinPath %>/js/jquery.poshytip.js"></script>
	<%-- jquery.circularise --%>
	<script src="<%=skinPath %>/js/jquery.circularise.js"></script>
</head>
<body>

 	<!-- 
 	<video id="videobcg" preload="auto" autoplay="true" loop="loop" muted="muted" volume="50">
     <source src="http://vimeo.com/34706361" type="video/mp4">
     <source src="movie.webm" type="video/webm">
      
	</video> -->
	<!-- 
	<iframe id="videobcg" src="//player.vimeo.com/video/34706361?title=0&amp;byline=0&amp;portrait=0&amp;badge=0&amp;color=ffffff&amp;autoplay=1&amp;loop=1" width="1024" height="575" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> 
	<iframe id="videobcg" src="//player.vimeo.com/video/91590180?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff&amp;autoplay=1&amp;loop=1" width="1024" height="576" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
	
	-->
	<iframe id="videobcg"src="//player.vimeo.com/video/78801886?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff&amp;autoplay=1&amp;loop=1" width="1024" height="436" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
	
	
	<div class="wrapper">		
		<form class="form-signin" action="<%=rootPath %>/login" method="post">		
			<% if((rememberId.length() > 1) && (rememberName.length() > 1)) { %>
			 	<h2 class="form-signin-heading"><span>안녕하세요, <%=rememberName%>님!</span></h2><br>
			 	<div class="text-center" style="border:1px solid #fff; -webkit-border-radius: 8px; -moz-border-radius: 8px; color:#fff;">
					<p align="center"><img src="<%=rememberPhoto%>" class="profile-sample" width="100px"  alt="Profile image"></p>
				  	<h4><span><%=rememberName%> </span><small><%=rememberId%></small></h4>
			  	</div> 	
			  	<input type="hidden" class="form-control" name="memberId" value="<%=rememberId%>"/><br>
				<input type="password" class="form-control" name="memberPw" autofocus="autofocus" placeholder="Password" /><br/>
				<input type="hidden" name="rememberId" value="on" />				
				<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
				<button class="btn btn-lg btn-warning btn-block" type="submit">Forgot password</button>  <br>
				<div class="row">
					<div class="col-md-12 text-center"><a href="<%=rootPath%>/delCookie"><span><abbr>저는 <%=rememberName %> 이(가) 아니에요!<br>다른 사용자로 로그인</abbr></span></a></div>
				</div>
	        <%} else {%>
	        	<h2 class="form-signin-heading">Welcome to Wespec<br>Please login</h2>
				<input type="text" class="form-control" name="memberId" placeholder="Student Code" autofocus="autofocus" value="<%=rememberId%>"/><br>
				<input type="password" class="form-control" name="memberPw" placeholder="Password" /><br/>
				<div class="row">
					<div class="col-md-6"> <input type="checkbox" name="rememberId" value="on" <% if(rememberId.length() > 1) out.print("checked"); %>/> <abbr title="다음 접속시 아이디가 자동입력 됩니다.">Remember your ID</abbr></div>
					<div class="col-md-6"> <input type="checkbox" name="autoLogin" value="on"/> <abbr title="다음 접속시 시스템에 자동로그인 됩니다. 개인 PC에서만 이 항목을 체크하세요.">Auto Login</abbr></div>
				</div>			
			<br/>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
			<button class="btn btn-lg btn-warning btn-block" type="submit">Forgot password</button>    
			<%} %> 
		</form>
	</div>
	<script>
	    $('.profile-sample').circularise({ width:"100px" });
	</script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=skinPath%>/js/bootstrap.min.js"></script>
 	</body>
</html>