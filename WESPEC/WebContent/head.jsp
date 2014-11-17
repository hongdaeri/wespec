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
                     <button class="btn btn-success" >
					  Search
					</button>         
                    <label class="btn btn-danger" onClick="javascript:$('#detail').toggle()">
					  Detail
					</label>										
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
           
           <!--  Detail Search Layer -->    
		  <div class="detail_search_box collapse" id="detail" style="background-color:#f8f8f8; padding:10px 20px; border-top:1px solid #dedede; ">
	    	<form action="#" name="d_search" method="get" accept-charset="utf-8" class="form-inline" role="form">			    	
	    	<div class="container">
	    		<div class="panel panel-default" style="padding:10px;">
					<div class="panel-body">				
						 <div class="row">
							<div class="col-md-10 col-sm-12 col-xs-12">
								<!--  row1 -->
			    				<div class="row">
				    			   	<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="chk1" class="css-checkbox" type="checkbox" name="s_chk" value="haveCertificate" /><label for="chk1" class="css-label">자격증 보유</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="chk2" class="css-checkbox" type="checkbox" name="s_chk" value="haveAward" /><label for="chk2" class="css-label">수상실적 보유</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="chk3" class="css-checkbox" type="checkbox" name="s_chk" value="havePortfoilo" /><label for="chk3" class="css-label">포트폴리오 보유</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="chk4" class="css-checkbox" type="checkbox" name="s_chk" value="haveTraining" /><label for="chk4" class="css-label">교육/연수 보유</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="chk5" class="css-checkbox" type="checkbox" name="s_chk" value="haveService" /><label for="chk5" class="css-label">봉사활동 보유</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="chk6" class="css-checkbox" type="checkbox" name="s_chk" value="haveClub" /><label for="chk5" class="css-label">동아리활동 보유</label>
							   		</div>					   	
							  	</div><!--  row1 END -->
							  	<!--  row2 -->
							  	<div class="row" style="margin-top:20px;">
				    			   	<div class="col-md-8 col-sm-12 col-xs-12">
							   			<input id="chk_language" class="css-checkbox" type="checkbox" name="s_chk" value="haveLanguageExam"/><label for="chk_language" class="css-label">어학능력 &nbsp;</label>
							   			<SELECT class="form-control" Name="languageName" onChange="BuildCats(this.selectedIndex,d_search);">
							   				<OPTION Value="">------
							   				<OPTION Value="영어">영어
							   				<OPTION Value="일어">일어
							   				<OPTION Value="중국어">중국어
							   			</Select>
							   			<SELECT class="form-control" Name="languageExamName">
							   				<OPTION Value="">-------
							   			</Select>
							   			<input type="text" class="form-control" name="languageGrade" style="width:80px;">
							   			<SELECT class="form-control" Name="languageExamGradeOption">
								   			<OPTION Value="점">점
								   			<OPTION Value="급">급
							   			</Select>
							   			&nbsp; 이상						   		
							   		</div>					   						   				   		
							   		<div class="col-md-4 col-xs-12 text-right">
							   		<h5>
							   			<input type="radio" name="radiog_lite" id="radio_all" class="css-r-checkbox" checked/><label for="radio_all" class="css-r-label radGroup1 radGroup1">전체</label> &nbsp;
							   			<input type="radio" name="radiog_lite" id="radio_m" class="css-r-checkbox" /><label for="radio_m" class="css-r-label radGroup1 radGroup1">남자</label> &nbsp;
							   			<input type="radio" name="radiog_lite" id="radio_f" class="css-r-checkbox" /><label for="radio_f" class="css-r-label radGroup1 radGroup1">여자&nbsp;&nbsp;&nbsp;</label>						   		
							   		</h5>						   		
							   		</div>					   			
							  	</div><!--  row2 END -->
							</div>
							<div class="col-md-2 col-sm-12 col-xs-12">
								<button type="button" class="btn btn-lg btn-block" style="background:#444; color:#fff;">DETAIL<br>SEARCH</button>
							</div>
						</div>					  		
					</div>				   					   		
				</div>
			 </div>
			</form>
    	  </div> 
    	  
        </nav>                      
      </header>
      
    <!-- container START -->  
	<div class="container" id="bgWhite">  

