<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/common/common.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="model.vo.Spec" %>

<%
	
%>
<jsp:include page="/head.jsp" flush="false"/>


<div class="row">
  <div class="col-md-12">
    <div class="row">
      <!--  프로필 사진 영역 -->
      <form action="<%=rootPath %>/test" method="post" name="profile">
      <div class="col-md-3">
      
	      <!--  이미지 이펙트  -->
	      <div id="effect-6" class="effects clearfix">
	            <div class="img">
	                <img src="<%= imagesPath%>/tumb.jpg" alt="">
	                <div class="overlay">
	                    <a href="#" class="expand">+</a>
	                    <a class="close-overlay hidden">x</a>
	                </div>
	            </div>
	      </div><!-- 이미지이펙트끝 -->
      
     
        	
      </div>
      <!--  프로필 영역 -->
      <div class="col-md-9">       
       <div class="panel panel-default">
		  <div class="panel-body">
		    <h2>홍바울</h2>
		    
		    <input type="text" name="engName" value="Hong Paul"/> / 
		    <input type="text" name="chiName" value="洪바울"/>
		  </div>
		</div>
		
		<table class="table table-hover">
		  <tr>
		    <td class="active">학년</td>
		    <td class="">
		    <select>
		    	<option value="1">1</option>
		    	<option value="2">2</option>
		    	<option value="3" selected>3</option>
		    	<option value="4">4</option>
		    </select>
		    		학년
		    </td>
		 	<td class="active">학번</td>
		 	<td>0729081</td>
		  </tr>	
		  <tr>
		    <td class="active">연락처</td>
		    <td class=""><input type="text" name="phone" value="010-8985-5334"/></td>
		 	<td class="active">이메일</td>
		 	<td><input type="text" name="email"  value="h0ngz@naver.com"/></td>
		  </tr>	
		   <tr>
		    <td class="active">SNS</td>
		    <td colspan="3">dddddddddd</td>		 	
		  </tr>		 	
		</table>
		<div class="col-md-12">
			<div class="col-md-3"></div>
			<div class="col-md-6">			
				<button type="button" class="btn btn-primary btn-lg btn-block" onClick="submit()">프로필 등록</button>
			</div>
			<div class="col-md-3"></div>			
		</div>
		
      </div>
      </form>	
    </div> <!--  프로필 영역 끝 -->
  	
    <hr> <!--  경계선 -->
    <!--  이력 영역 -->
    
	<form action="<%=rootPath %>/test" name="spec" method="post" >
    <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>자격증</b></div>	
	  <!-- Table -->
	   <table class="table table-hover" ID="s1">	  	
		 <tr>
		   <th class="col-md-2">취득일</th>
		   <th class="col-md-2">자격증명</th>
		   <th class="col-md-2">등급</th>
		   <th class="col-md-2">발행기관</th>
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="자격증 추가" type="button" class="btn btn-primary btn-xs" onclick="addItem_s1()">추가</button></th>
		 </tr>
		 <c:choose>
			<c:when test="${spec.certificates}==null">
			<tr>
				<td align="center" colspan="6">등록된 자격증이 없습니다.</td>
			</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="certificate" items="${spec.certificates}" >
					 <tr>
					   <td class="col-md-2">${certificate.certificateDate}</td>
					   <td class="col-md-2">${certificate.certificateName}</td>	
					   <td class="col-md-2">${certificate.certificateGrade}</td>	
					   <td class="col-md-2">${certificate.certificateOrg}</td>						  		
					   <td class="col-md-2">${certificate.publicScope}</td>
					   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
					</tr>
				</c:forEach>
			</c:otherwise>
		  </c:choose>
      </table>		  
	</div>  <!--  section END -->
	
	
	

	
	 <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>어학 능력</b></div>	
	  <!-- Table -->
	   <table class="table table-hover" ID="s2">	  	
		 <tr>
		   <th class="col-md-2">언어</th>
		   <th class="col-md-2">시험명</th>
		   <th class="col-md-2">점수(등급)</th>
		   <th class="col-md-2">증빙기관</th>
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="어학능력 추가" type="button" class="btn btn-primary btn-xs" onclick="addItem_s2()">추가</button></th>
		 </tr>
		 <c:choose>
			<c:when test="${spec.languages}==null">
			<tr>
				<td align="center" colspan="6">등록된 어학능력이 없습니다.</td>
			</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="language" items="${spec.languages}" >
					 <tr>
					   <td class="col-md-2">${language.languageName}</td>
					   <td class="col-md-2">${language.languageExamName}</td>	
					   <td class="col-md-2">${language.languageExamGrade}</td>	
					   <td class="col-md-2">${language.languageExamOrg}</td>						  		
					   <td class="col-md-2">${language.publicScope}</td>
					   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
					</tr>
				</c:forEach>
			</c:otherwise>
		  </c:choose>
      </table>		  
	</div>  <!--  section END -->
	
	
	 <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>수상실적</b></div>	
	  <!-- Table -->
	   <table class="table table-hover" ID="s3">	  	
		 <tr>
		   <th class="col-md-2">수상일</th>
		   <th class="col-md-4">수상내용</th>
		   <th class="col-md-2">수상기관</th>		  
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="수상실적 추가" type="button" class="btn btn-primary btn-xs" onclick="addItem_s3()">추가</button></th>
		 </tr>
	 	 <c:choose>
			<c:when test="${spec.awards}==null">
			<tr>
				<td align="center" colspan="5">등록된 수상내역이 없습니다.</td>
			</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="award" items="${spec.awards}" >
					 <tr>
					   <td class="col-md-2">${award.awardDate}</td>
					   <td class="col-md-4">${award.awardSubject}</td>	
					   <td class="col-md-2">${award.awardOrg}</td>						  		
					   <td class="col-md-2">${award.publicScope}</td>
					   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
					</tr>
				</c:forEach>
			</c:otherwise>
		  </c:choose>
      </table>		  
	</div>  <!--  section END -->
	
	
	 <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>교육/연수</b></div>	
	  <!-- Table -->
	   <table class="table table-hover" ID="s4">	  	
		 <tr>
		   <th class="col-md-2">기간</th>
		   <th class="col-md-4">과정명</th>
		   <th class="col-md-2">기관</th>		   
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="교육/연수 추가" type="button" class="btn btn-primary btn-xs" onclick="addItem_s4()">추가</button></th>
		 </tr>
	 	 <c:choose>
			<c:when test="${spec.trainings}==null">
			<tr>
				<td align="center" colspan="5">등록된 교육/연수 내용이 없습니다.</td>
			</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="training" items="${spec.trainings}" >
					 <tr>
					   <td class="col-md-2">${training.trainingPeriod}</td>
					   <td class="col-md-4">${training.trainingName}</td>	
					   <td class="col-md-2">${training.trainingOrg}</td>						  		
					   <td class="col-md-2">${training.publicScope}</td>
					   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
					</tr>
				</c:forEach>
			</c:otherwise>
		  </c:choose>
      </table>		  
	</div>  <!--  section END -->
	
	 <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>포트폴리오</b></div>	
	  <!-- Table -->
	   <table class="table table-hover" ID="s5">	  	
		 <tr>
		   <th class="col-md-2">기간</th>
		   <th class="col-md-3">포트폴리오명</th>
		   <th class="col-md-3">링크</th>		   
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="포트폴리오 추가" type="button" class="btn btn-primary btn-xs" onclick="addItem_s5()">추가</button></th>
		 </tr>
	 	 <c:choose>
			<c:when test="${spec.portfolios}==null">
			<tr>
				<td align="center" colspan="5">등록된 포트폴리오가 없습니다.</td>
			</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="portfolio" items="${spec.portfolios}" >
					 <tr>
					   <td class="col-md-2">${portfolio.portfolioPeriod}</td>
					   <td class="col-md-3">${portfolio.portfolioName}</td>	
					   <td class="col-md-3">${portfolio.portfolioLink}</td>						  		
					   <td class="col-md-2">${portfolio.publicScope}</td>
					   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
					</tr>
				</c:forEach>
			</c:otherwise>
		  </c:choose>
      </table>		  
	</div>  <!--  section END -->
	
	 <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>소프트웨어 개발 능력</b></div>	
	  <!-- Table -->
	   <table class="table table-hover" ID="s6">	  	
		 <tr>
		   <th class="col-md-2">언어(기술)명</th>
		   <th class="col-md-2">수준</th>	
		   <th class="col-md-2"></th>	
		   <th class="col-md-2"></th>		  		   
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="개발능력 추가" type="button" class="btn btn-primary btn-xs" onclick="addItem_s6()">추가</button></th>
		 </tr>
	 	 <c:choose>
			<c:when test="${spec.programmingLanguages}==null">
			<tr>
				<td align="center" colspan="6">등록된 사항이 없습니다.</td>
			</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="programmingLanguage" items="${spec.programmingLanguages}" >
					 <tr>
					   <td class="col-md-2">${programmingLanguage.languageName}</td>
					   <td class="col-md-2">${programmingLanguage.languageLevel}</td>	
					   <td class="col-md-2"></td>	
					   <td class="col-md-2"></td>		
					   <td class="col-md-2">${programmingLanguage.publicScope}</td>
					   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
					</tr>
				</c:forEach>
			</c:otherwise>
		  </c:choose>
      </table>		  
	</div>  <!--  section END -->
	
	 <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>학력 사항</b></div>	
	  <!-- Table -->
	   <table class="table table-hover" ID="s7">	  	
		 <tr>
		   <th class="col-md-2">재학기간</th>
		   <th class="col-md-2">학교명</th>	
		   <th class="col-md-2">전공</th>	
		   <th class="col-md-2">구분</th>		  		   
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="학력 추가" type="button" class="btn btn-primary btn-xs" onclick="addItem_s7()">추가</button></th>
		 </tr>
		 <c:choose>
			<c:when test="${spec.academics}==null">
			<tr>
				<td align="center" colspan="6">등록된 학력사항이 없습니다.</td>
			</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="academic" items="${spec.academics}" >
					 <tr>
					   <td class="col-md-2">${academic.academicPeriod}</td>
					   <td class="col-md-2">${academic.academicName}</td>	
					   <td class="col-md-2">${academic.academicMajor}</td>	
					   <td class="col-md-2">${academic.academicState}</td>		
					   <td class="col-md-2">${academic.publicScope}</td>
					   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>		
      </table>		  
	</div>  <!--  section END -->
	 
	 <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>병역</b></div>	
	  <!-- Table -->
	   <table class="table table-hover" ID="s8">	  	
		 <tr>
		   <th class="col-md-2">복무기간</th>
		   <th class="col-md-2">군별</th>	
		   <th class="col-md-2">계급</th>	
		   <th class="col-md-2">병과</th>		  		   
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="병역 추가" type="button" class="btn btn-primary btn-xs" onclick="addItem_s8()">추가</button></th>
		 </tr>
			<c:choose>
				<c:when test="${spec.military.publicScope>0}">
					<tr>
						   <td class="col-md-2">${spec.military.militaryPeriod}</td>
						   <td class="col-md-2">${spec.military.militaryGroup}</td>	
						   <td class="col-md-2">${spec.military.militaryRank}</td>	
						   <td class="col-md-2">${spec.military.militaryWork}</td>		
						   <td class="col-md-2">${spec.military.publicScope}</td>
						   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
					</tr>				
				</c:when>
				<c:otherwise>
					<tr>
						<td align="center" colspan="6">등록된 병역사항이 없습니다.</td>
					</tr>	
				</c:otherwise>
			</c:choose>					 
      </table>		  
	</div>  <!--  section END -->
	
	 </form>
  </div>
</div>

<jsp:include page="/tail.jsp" flush="false" />
