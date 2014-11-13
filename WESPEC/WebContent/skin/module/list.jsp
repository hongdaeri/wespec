<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/common/common.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/head.jsp" flush="false" />

<article>
	<section>
		<div class="row">
			<div class="col-md-12" id="jumbo">
				<div class="jumbotron">
               		<h1>What is WESPEC</h1>
               		<p>WESPEC으로 당신의 이력을 관리해보세요.</p>
               		<p><a class="btn btn-default btn-lg" role="button" href="<%=request.getContextPath() %>/Register">Register</a></p>
             	</div>                            
			</div>
		</div>
	</section>

	<section>
		<div class="row">
			<div class="col-md-12">
			<!-- List toggle btn -->         
				<ul class="nav nav-tabs" id="listTab">
                	<li><a href="#tab0" data-toggle="tab">전체학년</a></li>
                	<li><a href="#tab4" data-toggle="tab">4학년</a></li>
                	<li><a href="#tab3" data-toggle="tab">3학년</a></li>
                	<li><a href="#tab2" data-toggle="tab">2학년</a></li>
                	<li><a href="#tab1" data-toggle="tab">1학년</a></li>
              	</ul>

	            <!-- LIST SECTION : jsp 코드로 생성할 부분-->
				<div class="tab-content">
					<!-- 전체 학생 리스트 --> 
					<div class="tab-pane active" id="tab0">
	               		<p>&nbsp;</p> 
	               		<div class="row text-center">	
	               		<c:forEach var="profile" items="${profiles}" varStatus="status">   
							<div class="col-xs-6 col-sm-4 col-md-3"> 					
								<div class="person">
									<a href="<%=rootPath %>/Open/${profile.memberId}">
										<img src="<%=imagesPath %>/basic_profile_icon_male.jpg" class="img-responsive img-rounded" alt="Profile image">
										<h2>${profile.profileName}</h2>
										<h3>${profile.profileGrade}학년  ${profile.primarySpec}</h3>				
										<span>프로필 보기&nbsp;&raquo;</span>
									</a>
								</div><!-- /.person -->	
							</div>
						</c:forEach>												
						</div>						
					</div>
					<!-- 4학년 학생 리스트 --> 
					<div class="tab-pane active" id="tab4">
	              		<p>&nbsp;</p>              		
	              		<div class="row text-center">
						<c:forEach var="profile" items="${profiles}">
						<c:if test="${profile.profileGrade eq 4}">
							<div class="col-xs-6 col-sm-4 col-md-3"> 					
								<div class="person">
									<a href="<%=rootPath %>/Open/${profile.memberId}">
										<img src="<%=imagesPath %>/basic_profile_icon_male.jpg" class="img-responsive img-rounded" alt="Profile image">
										<h2>${profile.profileName}</h2>
										<h3>${profile.profileGrade}학년  ${profile.primarySpec}</h3>				
										<span>프로필 보기&nbsp;&raquo;</span>
									</a>
								</div><!-- /.person -->	
							</div>
						</c:if>					
						</c:forEach> 
						</div>
					</div>
					
					<!-- 3학년 학생 리스트 --> 
					<div class="tab-pane active" id="tab3">
	              		<p>&nbsp;</p>              		
	              		<div class="row text-center">
						<c:forEach var="profile" items="${profiles}">
						<c:if test="${profile.profileGrade eq 3}">						
							<div class="col-xs-6 col-sm-4 col-md-3"> 					
								<div class="person">
									<a href="<%=rootPath %>/Open/${profile.memberId}">
										<img src="<%=imagesPath %>/basic_profile_icon_male.jpg" class="img-responsive img-rounded" alt="Profile image">
										<h2>${profile.profileName}</h2>
										<h3>${profile.profileGrade}학년  ${profile.primarySpec}</h3>				
										<span>프로필 보기&nbsp;&raquo;</span>
									</a>
								</div><!-- /.person -->	
							</div>	
						</c:if>					
						</c:forEach> 
						</div>
					</div>
					
					<!-- 2학년 학생 리스트 --> 
					<div class="tab-pane active" id="tab2">
	              		<p>&nbsp;</p>              		
	              		<div class="row text-center">
						<c:forEach var="profile" items="${profiles}">
						<c:if test="${profile.profileGrade eq 2}">
							<div class="col-xs-6 col-sm-4 col-md-3"> 					
								<div class="person">
									<a href="<%=rootPath %>/Open/${profile.memberId}">
										<img src="<%=imagesPath %>/basic_profile_icon_male.jpg" class="img-responsive img-rounded" alt="Profile image">
										<h2>${profile.profileName}</h2>
										<h3>${profile.profileGrade}학년  ${profile.primarySpec}</h3>				
										<span>프로필 보기&nbsp;&raquo;</span>
									</a>
								</div><!-- /.person -->	
							</div>						
						</c:if>					
						</c:forEach> 
						</div>
					</div>
					
					<!-- 1학년 학생 리스트 --> 
					<div class="tab-pane active" id="tab1">
	              		<p>&nbsp;</p>              		
	              		<div class="row text-center">
						<c:forEach var="profile" items="${profiles}">
						<c:if test="${profile.profileGrade eq 1}">
							<div class="col-xs-6 col-sm-4 col-md-3"> 					
								<div class="person">
									<a href="<%=rootPath %>/Open/${profile.memberId}">
										<img src="<%=imagesPath %>/basic_profile_icon_male.jpg" class="img-responsive img-rounded" alt="Profile image">
										<h2>${profile.profileName}</h2>
										<h3>${profile.profileGrade}학년  ${profile.primarySpec}</h3>				
										<span>프로필 보기&nbsp;&raquo;</span>
									</a>
								</div><!-- /.person -->	
							</div>	
						</c:if>					
						</c:forEach> 
						</div>
					</div>	
					<!--  학생 리스트 전체 끝 -->
					<script>
						  $(function () {
							$('#listTab a:first').tab('show')
						  })
					</script>
	
				</div>              
			</div>
		</div>
	</section>      
</article>
<jsp:include page="/tail.jsp" flush="false" />