<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/common/common.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 해당 페이지가 없으면 리다이렉션.  --%> 
<c:if test="${profile.profileName eq null}">
	<jsp:forward page="/Exception">
		<jsp:param name="ex" value="NotFoundStudent" />
	</jsp:forward>	
</c:if>

<!DOCTYPE html>
<html lang="kr">
  <head>
    <meta charset="euc-kr">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>WESPEC in Software</title>
    <!-- Bootstrap -->
    <link href="<%=skinPath %>/css/bootstrap.min.css" rel="stylesheet">
    <style>
    	th { background:transprent; background-color:red;}
    
    </style>
</head>
<body>	
			<div style="text-align:center;"><h1 style="border-bottom:1px solid #000;">이력서</h1></div>
		     
		     <table class="table table-bordered">
		        <tr>
		          <td rowspan="5"><img src="${profile.profilePhotoURL}" width="300" height="400"></td>
		          <th width="120">이름</th><td colspan="3">${profile.profileName}</td>
		        </tr>
		        <tr>
		          <th width="120">한문</th><td>${profile.profileChiName}</td>
		          <th width="120">영문</th><td>${profile.profileEngName}</td>
		        </tr>
		        <tr>
		          <th width="120">생년월일</th><td>${profile.profileBirth}</td>
		          <th width="120">거주지</th><td>${profile.profileAddress}</td>
		        </tr>
		        <tr>
		          <th width="120">연락처</th><td>${profile.profilePhone}</td>
		          <th width="120">이메일</th><td>${profile.profileEmail}</td>
		        </tr>  
		     </table>	   
		
		
		    <h4>학력사항</h4>
		     <table class="table table-bordered">
		        <tr>
		          <th width="160">재학기간</th>
		          <th width="200">학교명</th>
		          <th width="80">전공</th>
		          <th width="80">졸업여부</th>
		        </tr>
		        <c:forEach var="academic" items="${spec.academics}">
		          <tr>
		            <td>${academic.academicPeriod}</td>
		            <td>${academic.academicName}</td>
		            <td>${academic.academicMajor}</td>
		            <td>${academic.academicState}</td>
		          </tr>
		        </c:forEach>
		     </table>
		     
		    
		
		     <h4> 자격 및 면허</h4>
		     <table class="table table-bordered">
		        <tr>
		          <th>취득일</th>
		          <th>자격증(면허)명 및 등급</th>
		          <th>발행기관</th>
		        </tr>
		        <c:forEach var="certificate" items="${spec.certificates}">
		          <tr>
		            <td>${certificate.certificateDate}</td>
		            <td>${certificate.certificateName} ${certificate.certificateGrade}</td>
		            <td>${certificate.certificateOrg}</td>
		          </tr>
		        </c:forEach> 
		     </table>
		     
		
		
		
		     <h4>어학능력</h4>
		     <table class="table table-bordered">
		        <tr>
		          <th>언어</th>
		          <th>시험명</th>
		          <th>점수(등급)</th>
		          <th>증빙기관</th>
		        </tr>
		        <c:forEach var="language" items="${spec.languages}">
		          <tr>
		            <td>${language.languageName}</td>
		            <td>${language.languageExamName}</td>
		            <td>${language.languageExamGrade}</td>
		            <td>${language.languageExamOrg}</td>
		          </tr> 
		        </c:forEach>  
		     </table>
		     
		
		
		
		     <h4>교육 및 연수활동</h4>
		     <table class="table table-bordered">
		        <tr>
		          <th width="160">기간</th>
		          <th width="300">과정명(연수내용)</th>
		          <th >기관</th>
		        </tr>
		        <c:forEach var="training" items="${spec.trainings}">
		          <tr>
		            <td>${training.trainingPeriod}</td>
		            <td>${training.trainingName}</td>
		            <td>${training.trainingOrg}</td>
		          </tr>
		        </c:forEach>
		      </table>
		       
		
		
		
		      <h4>수상실적</h4>
		     <table class="table table-bordered">
		        <tr>
		          <th width="120">수상일자</th>
		          <th width="300">수상내용</th>
		          <th>수상기관</th>
		        </tr>
		        <c:forEach var="award" items="${spec.awards}">
		          <tr>
		            <td>${award.awardDate}</td>
		            <td>${award.awardSubject}</td>
		            <td>${award.awardOrg}</td>
		          </tr>
		        </c:forEach>
		      </table>
		      		
		
		
		
		      <h4>프로젝트 경험</h4>
		     <table class="table table-bordered">
		        <tr>
		          <th width="160">기간</th>
		          <th width="300">프로젝트명</th>
		          <th>관련링크</th>
		        </tr>
		        <c:forEach var="portfolio" items="${spec.portfolios}">
		          <tr>
		            <td>${portfolio.portfolioPeriod}</td>
		            <td>${portfolio.portfolioName}</td>
		            <td>${portfolio.portfolioLink}</td>
		          </tr>
		        </c:forEach>
		      </table>
		       	


<script>
 window.print();
 </script>
	
  </body>
</html>

