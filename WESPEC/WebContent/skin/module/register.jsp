<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/common/common.jsp" %>
<jsp:include page="/head.jsp" flush="false"/>
<div class="row">
  <div class="col-md-12">
    <div class="row">
      <!--  프로필 사진 영역 -->
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
		    Hong Paul / 洪바울
		  </div>
		</div>
		
		<table class="table table-hover">
		  <tr>
		    <td class="active">학년</td>
		    <td class="">3 학년</td>
		 	<td class="active">학번</td>
		 	<td>0729081</td>
		  </tr>	
		  <tr>
		    <td class="active">연락처</td>
		    <td class="">010-8985-5334</td>
		 	<td class="active">이메일</td>
		 	<td>h0ngz@naver.com</td>
		  </tr>	
		   <tr>
		    <td class="active">SNS</td>
		    <td colspan="3">dddddddddd</td>		 	
		  </tr>		 	
		</table>
		<div class="col-md-12">
			<div class="col-md-3"></div>
			<div class="col-md-6">			
				<button type="button" class="btn btn-primary btn-lg btn-block">프로필 등록</button>
			</div>
			<div class="col-md-3"></div>			
		</div>
      </div>
    </div> <!--  프로필 영역 끝 -->
    <hr> <!--  경계선 -->
    <!--  이력 영역 -->
    
    <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>자격증</b></div>	
	  <!-- Table -->
	   <table class="table table-hover">	  	
		 <tr>
		   <th class="col-md-2">취득일</th>
		   <th class="col-md-2">자격증명</th>
		   <th class="col-md-2">등급</th>
		   <th class="col-md-2">발행기관</th>
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="자격증 추가" type="button" class="btn btn-primary btn-xs">추가</button></th>
		 </tr>
		 <tr>
		   <td class="col-md-2">2012.08.12</td>
		   <td class="col-md-2">워드프로세서</td>
		   <td class="col-md-2">1급</td>
		   <td class="col-md-2">한국교통대학교</td>
		   <td class="col-md-2">전체공개</td>
		   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
		</tr>
      </table>		  
	</div>  <!--  section END -->
	
	 <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>어학 능력</b></div>	
	  <!-- Table -->
	   <table class="table table-hover">	  	
		 <tr>
		   <th class="col-md-2">언어</th>
		   <th class="col-md-2">시험명</th>
		   <th class="col-md-2">점수(등급)</th>
		   <th class="col-md-2">증빙기관</th>
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="어학능력 추가" type="button" class="btn btn-primary btn-xs">추가</button></th>
		 </tr>
		 <tr>
		   <td class="col-md-2">영어</td>
		   <td class="col-md-2">TOEIC</td>
		   <td class="col-md-2">750점</td>
		   <td class="col-md-2">미교육평가위원회</td>
		   <td class="col-md-2">전체공개</td>
		   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
		</tr>
      </table>		  
	</div>  <!--  section END -->
	
	
	 <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>수상실적</b></div>	
	  <!-- Table -->
	   <table class="table table-hover">	  	
		 <tr>
		   <th class="col-md-2">수상일</th>
		   <th class="col-md-4">수상내용</th>
		   <th class="col-md-2">수상기관</th>		  
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="수상실적 추가" type="button" class="btn btn-primary btn-xs">추가</button></th>
		 </tr>
		 <tr>
		   <td class="col-md-2">2012.08.12</td>
		   <td class="col-md-4">한이음 모바일 어플리케이션 공모전 대상</td>
		   <td class="col-md-2">한이음</td>		
		   <td class="col-md-2">전체공개</td>
		   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
		</tr>
      </table>		  
	</div>  <!--  section END -->
	
	
	 <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>교육/연수</b></div>	
	  <!-- Table -->
	   <table class="table table-hover">	  	
		 <tr>
		   <th class="col-md-2">기간</th>
		   <th class="col-md-4">과정명</th>
		   <th class="col-md-2">기관</th>		   
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="교육/연수 추가" type="button" class="btn btn-primary btn-xs">추가</button></th>
		 </tr>
		 <tr>
		   <td class="col-md-2">2012.08.12 ~ 2013.02.14</td>
		   <td class="col-md-4">빅데이터 전문가 양성과정</td>		  
		   <td class="col-md-2">한국교통대학교</td>
		   <td class="col-md-2">전체공개</td>
		   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
		</tr>
      </table>		  
	</div>  <!--  section END -->
	
	 <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>포트폴리오</b></div>	
	  <!-- Table -->
	   <table class="table table-hover">	  	
		 <tr>
		   <th class="col-md-2">기간</th>
		   <th class="col-md-3">포트폴리오명</th>
		   <th class="col-md-3">링크</th>		   
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="포트폴리오 추가" type="button" class="btn btn-primary btn-xs">추가</button></th>
		 </tr>
		 <tr>
		   <td class="col-md-2">2012.08.12 ~ 2013.02.14</td>
		   <td class="col-md-3">개방형 이력시스템 - 위스펙</td>		  
		   <td class="col-md-3"><a href="#">http://wesepc.co.kr/adsfji</a></td>
		   <td class="col-md-2">전체공개</td>
		   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
		</tr>
      </table>		  
	</div>  <!--  section END -->
	
	 <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>소프트웨어 개발 능력</b></div>	
	  <!-- Table -->
	   <table class="table table-hover">	  	
		 <tr>
		   <th class="col-md-2">언어(기술)명</th>
		   <th class="col-md-2">수준</th>	
		   <th class="col-md-2"></th>	
		   <th class="col-md-2"></th>		  		   
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="개발능력 추가" type="button" class="btn btn-primary btn-xs">추가</button></th>
		 </tr>
		 <tr>
		   <td class="col-md-2">Java</td>
		   <td class="col-md-2">상</td>	
		    <th class="col-md-2"></th>	
		   <th class="col-md-2"></th>		
		   <td class="col-md-2">전체공개</td>
		   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
		</tr>
      </table>		  
	</div>  <!--  section END -->
	
	 <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>학력 사항</b></div>	
	  <!-- Table -->
	   <table class="table table-hover">	  	
		 <tr>
		   <th class="col-md-2">재학기간</th>
		   <th class="col-md-2">학교명</th>	
		   <th class="col-md-2">전공</th>	
		   <th class="col-md-2">구분</th>		  		   
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="학력 추가" type="button" class="btn btn-primary btn-xs">추가</button></th>
		 </tr>
		 <tr>
		   <td class="col-md-2">2004.03 ~ 2007.02</td>
		   <td class="col-md-2">청담정보통신고등학교</td>	
		   <td class="col-md-2">네트워크디자인과</td>	
		   <td class="col-md-2">졸업</td>		
		   <td class="col-md-2">전체공개</td>
		   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
		</tr>
      </table>		  
	</div>  <!--  section END -->
	 
	 <!--  section  -->
  	<div class="panel panel-default">
	  <!-- Table Name -->
	  <div class="panel-heading"><b>병역</b></div>	
	  <!-- Table -->
	   <table class="table table-hover">	  	
		 <tr>
		   <th class="col-md-2">복무기간</th>
		   <th class="col-md-2">군별</th>	
		   <th class="col-md-2">계급</th>	
		   <th class="col-md-2">병과</th>		  		   
		   <th class="col-md-2">공개범위</th>
		   <th class="col-md-2 text-right"><button title="학력 추가" type="button" class="btn btn-primary btn-xs">추가</button></th>
		 </tr>
		 <tr>
		   <td class="col-md-2">2008.07 ~ 2010.08</td>
		   <td class="col-md-2">육군</td>	
		   <td class="col-md-2">보병</td>	
		   <td class="col-md-2">병장</td>		
		   <td class="col-md-2">전체공개</td>
		   <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs">삭제</button></td>
		</tr>
      </table>		  
	</div>  <!--  section END -->
	
	 
  </div>
</div>

<jsp:include page="/tail.jsp" flush="false" />
