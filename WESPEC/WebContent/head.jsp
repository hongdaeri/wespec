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
              <a class="navbar-brand" href="/" title="메인화면"><strong>WESPEC</strong> in Software</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li class="active"></li>
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
                    <input type="submit" class="btn btn-success" type="button" onClick="submit();" value="Search">           
                    <button class="btn btn-danger" data-toggle="modal" data-target="#searchModal">
					  Detail
					</button>
					
                  </span>                                 
                </div>
              </form>
              <ul class="nav navbar-nav navbar-right">
                <li class="dropdown active">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span></a>
                  <ul class="dropdown-menu" style="text-align:center;" role="menu">
                    <li>                  
						<p align="center">							  		
							<a href="#" data-toggle="modal" data-target="#photoModal"><br>
							<img src="${photoUrl}"  class="profile-sample"  alt="Profile image">
							</a>
						</p>	
						<script>
			             	 $('.profile-sample').circularise({ width:"100px" });
			            </script>								
	                </li>
                     <li><a href="<%=request.getContextPath()%>/Register"><button type="button" class="btn btn-link btn-xs btn-block">비밀번호 변경 <!--  <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>--></button></a></li>
                    <li class="divider"></li>
                    <li><a href="<%=request.getContextPath()%>/OPEN/<%=memberId%>"><button type="button" class="btn btn-info btn-block">내 프로필/이력 보기</button></a></li>
                    <li><a href="<%=request.getContextPath()%>/Register"><button type="button" class="btn btn-primary btn-block">내 프로필/이력 등록 </button></a></li>                   
                    <li class="divider"></li>                    
                    <li><a href="<%=request.getContextPath()%>/logout"><button type="button" class="btn btn-default btn-xs btn-block">Logout <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span></button></a></li>
                  </ul>
                </li>
              </ul>
             
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
      </header>
    <!-- container START -->  
	<div class="container" id="bgWhite">  

