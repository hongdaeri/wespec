<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/common/common.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/head.jsp" flush="false" />

<article>
	<section>
		<div class="row">
			<div class="col-md-6" id="jumbo">
				<div class="jumbotron">
               		<h1>Hello,World!</h1>
               		<p> &nbsp;WESPEC으로 당신의 이력을 관리해보세요.</p>
               		<p class="text-center"><a class="btn btn-primary btn-lg" role="button" href="<%=request.getContextPath() %>/Register">프로필/이력 등록</a></p>
             	</div>                            
			</div>
			<div class="col-md-6" id="jumbo">
				<div class="jumbotron">
					<!--  prograssbar -->
					<h1>프로젝트 진행도</h1>
					<div class="progress">
					  <div class="progress-bar progress-bar-success" style="width: 20%">
					    <span class="sr-only">20% Complete (success)</span>
					  </div>
					  <div class="progress-bar progress-bar-warning progress-bar-striped" style="width: 35%">
					    <span class="sr-only">35% Complete (warning)</span>
					  </div>
					  <div class="progress-bar progress-bar-danger" style="width: 30%">
					    <span class="sr-only">30% Complete (danger)</span>
					  </div>
					</div>
					
					
					<p class="text-center"><a class="btn btn-default btn-lg" role="button" href="https://github.com/h0ngz/wespec/commits/master" target="_BLANK">Go Github</a></p>
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
										<img src="${profile.profilePhotoURL}" class="img-responsive img-rounded" alt="Profile image">
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
										<img src="${profile.profilePhotoURL}" class="img-responsive img-rounded" alt="Profile image">
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
										<img src="${profile.profilePhotoURL}" class="img-responsive img-rounded" alt="Profile image">
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
										<img src="${profile.profilePhotoURL}" class="img-responsive img-rounded" alt="Profile image">
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
										<img src="${profile.profilePhotoURL}" class="img-responsive img-rounded" alt="Profile image">
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