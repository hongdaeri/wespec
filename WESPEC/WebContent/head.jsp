<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>    
<%@ include file="/head_sub.jsp" %>

<body>
    <header>
        <nav class="navbar navbar-default" role="navigation">
          <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="<%=request.getContextPath()%>" title="메인화면"><strong>WESPEC</strong></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">in Software</a></li>
                 <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Menu 1</a></li>
                    <li><a href="#">Menu 2</a></li>
                    <li><a href="#">Menu 3</a></li>
                    <li class="divider"></li> <!-- 경계선 -->
                    <li><a href="#">Link</a></li>
                    <li class="divider"></li>
                    <li><a href="#">About</a></li>
                  </ul>
                </li>
              </ul>
               
              <!-- Search bar -->
              <form class="navbar-form navbar-left" action="<%=request.getContextPath() %>/Search" role="search">
                <div class="input-group">                            
                  <input type="text" class="form-control" placeholder="Search.." name="s_name">
                  <span class="input-group-btn">                   
                    <button class="btn btn-success" type="button" onClick="submit();">Search</button>                 
                    <button class="btn btn-danger" data-toggle="modal" data-target="#searchModal">
					  Detail
					</button>
                  </span>                                 
                </div>
              </form>
              <ul class="nav navbar-nav navbar-right">
                <li><a href="#" data-toggle="modal" data-target="#loginModal">Login</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Account <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="<%=request.getContextPath()%>/OPEN/<%=memberId%>">내 프로필/이력 보기</a></li>
                    <li><a href="<%=request.getContextPath()%>/Register">프로필/이력 등록</a></li>                   
                    <li class="divider"></li>
                    <li><a href="<%=request.getContextPath()%>/logout">Logout</a></li>
                  </ul>
                </li>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
      </header>
    <!-- container START -->  
	<div class="container" id="bgWhite">  

