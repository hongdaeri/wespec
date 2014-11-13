<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/common/common.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/head.jsp" flush="false" />

<div class="row">
	<div class="col-md-12">
		<div class="row">
			<form action="<%=rootPath%>/register" method="post" name="profile">
				<input type="hidden" name="param" value="p" />
				<!-- 프로필 사진 영역 -->
				<div class="col-md-3">
					<!--  이미지 이펙트  -->
					<div id="effect-6" class="effects clearfix">
						<div class="img">
							<img src="${profile.profilePhotoURL}" alt="">
							<div class="overlay">
								<a href="#" class="expand" data-toggle="modal" data-target="#photoModal"><span class="glyphicon glyphicon-camera"></span></a> <a class="close-overlay hidden">x</a>
							</div>
						</div>
					</div>
					<!-- 이미지이펙트끝 -->
				</div>
				<!--  프로필 영역 -->
				<div class="col-md-9">
					<div class="panel panel-default">
						<div class="panel-body">
							<h2>${profile.profileName}</h2>
							<input type="text" name="engName" value="${profile.profileEngName}" /> /
							<input type="text" name="chiName" value="${profile.profileChiName}" />
						</div>
					</div>

					<table class="table table-hover">
						<tr>
							<td class="active">학년</td>
							<td class="">
							<select name="grade">
								<option value="1" <c:if test="${profile.profileGrade eq 1}">selected</c:if>>1</option> 
								<option value="2" <c:if test="${profile.profileGrade eq 2}">selected</c:if>>2</option> 
								<option value="3" <c:if test="${profile.profileGrade eq 3}">selected</c:if>>3</option> 
								<option value="4" <c:if test="${profile.profileGrade eq 4}">selected</c:if>>4</option> 	
							</select>
								학년
							</td>
							<td class="active">학번</td>
							<td>${profile.memberId}</td>
						</tr>
						<tr>
							<td class="active">생년월일</td>
							<td><input type="text" name="birth" value="${profile.profileBirth}"/></td>
							<td class="active">거주지</td>
							<td><input type="text" name="address" value="${profile.profileAddress}"/></td>
						</tr>
						<tr>
							<td class="active">연락처</td>
							<td class=""><input type="text" name="phone"
								value="${profile.profilePhone}" /></td>
							<td class="active">이메일</td>
							<td><input type="text" name="email" value="${profile.profileEmail}" /></td>
						</tr>
						<tr>
							<td class="active">활동 SNS</td>
							<td colspan="3"><button title="활동 SNS 추가 및 변경" type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#snsModal">SNS 추가 및 변경</button></td>
						</tr>
					</table>
					<div class="col-md-12">
						<div class="col-md-3"></div>
						<div class="col-md-6">
							<button type="button" class="btn btn-primary btn-lg btn-block"
								onClick="submit()">프로필 등록</button>
						</div>
						<div class="col-md-3"></div>
					</div>

				</div>
			</form>
		</div>
		<!--  프로필 영역 끝 -->
		<!--  경계선 -->
		<hr>

		<!--  이력 영역 -->
		<form action="<%=rootPath%>/register" name="spec" method="post">
			<!--  자격증 section  -->
			<div class="panel panel-default">
				<!-- Table Name -->
				<div class="panel-heading">
					<b>자격증</b>
				</div>
				<!-- Table -->
				<table class="table table-hover" ID="s1">
					<tr>
						<th class="col-md-2">취득일</th>
						<th class="col-md-2">자격증명</th>
						<th class="col-md-2">등급</th>
						<th class="col-md-2">발행기관</th>
						<th class="col-md-2">공개범위</th>
						<th class="col-md-2 text-right"><button title="자격증 추가"
								type="button" class="btn btn-primary btn-xs"
								onclick="addItem_s1()">추가</button></th>
					</tr>
					<c:choose>
						<c:when test="${ empty spec.certificates}">
							<tr>
								<td align="center" colspan="6">등록된 자격증이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="certificate" items="${spec.certificates}">
								<tr>
									<td class="col-md-2">${certificate.certificateDate}</td>
									<td class="col-md-2">${certificate.certificateName}</td>
									<td class="col-md-2">${certificate.certificateGrade}</td>
									<td class="col-md-2">${certificate.certificateOrg}</td>
									<td class="col-md-2">${certificate.publicScope}</td>
									<td class="col-md-2 text-right"><button title="항목 삭제"
											type="button" class="btn btn-default btn-xs" onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=certificate&tableNo=${certificate.regNo}');">삭제</button></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
			</div>
			<!--  section END -->
			<!--  어학능력 section  -->
			<div class="panel panel-default">
				<!-- Table Name -->
				<div class="panel-heading">
					<b>어학 능력</b>
				</div>
				<!-- Table -->
				<table class="table table-hover" ID="s2">
					<tr>
						<th class="col-md-2">언어</th>
						<th class="col-md-2">시험명</th>
						<th class="col-md-2">점수(등급)</th>
						<th class="col-md-2">증빙기관</th>
						<th class="col-md-2">공개범위</th>
						<th class="col-md-2 text-right"><button title="어학능력 추가"
								type="button" class="btn btn-primary btn-xs"
								onclick="addItem_s2()">추가</button></th>
					</tr>
					<c:choose>
						<c:when test="${ empty spec.languages }">
							<tr>
								<td align="center" colspan="6">등록된 어학능력이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="language" items="${spec.languages}">
								<tr>
									<td class="col-md-2">${language.languageName}</td>
									<td class="col-md-2">${language.languageExamName}</td>
									<td class="col-md-2">${language.languageExamGrade}</td>
									<td class="col-md-2">${language.languageExamOrg}</td>
									<td class="col-md-2">${language.publicScope}</td>
									<td class="col-md-2 text-right"><button title="항목 삭제"
											type="button" class="btn btn-default btn-xs" onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=language_exam&tableNo=${language.regNo}');">삭제</button></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
			</div>
			<!--  section END -->

			<!--  수상실적 section  -->
			<div class="panel panel-default">
				<!-- Table Name -->
				<div class="panel-heading">
					<b>수상실적</b>
				</div>
				<!-- Table -->
				<table class="table table-hover" ID="s3">
					<tr>
						<th class="col-md-2">수상일</th>
						<th class="col-md-4">수상내용</th>
						<th class="col-md-2">수상기관</th>
						<th class="col-md-2">공개범위</th>
						<th class="col-md-2 text-right"><button title="수상실적 추가"
								type="button" class="btn btn-primary btn-xs"
								onclick="addItem_s3()">추가</button></th>
					</tr>
					<c:choose>
						<c:when test="${ empty spec.awards}">
							<tr>
								<td align="center" colspan="5">등록된 수상내역이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="award" items="${spec.awards}">
								<tr>
									<td class="col-md-2">${award.awardDate}</td>
									<td class="col-md-4">${award.awardSubject}</td>
									<td class="col-md-2">${award.awardOrg}</td>
									<td class="col-md-2">${award.publicScope}</td>
									<td class="col-md-2 text-right"><button title="항목 삭제"
											type="button" class="btn btn-default btn-xs" onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=award&tableNo=${award.regNo}');">삭제</button></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
			</div>
			<!--  section END -->

			<!-- 교육/연수 section  -->
			<div class="panel panel-default">
				<!-- Table Name -->
				<div class="panel-heading">
					<b>교육/연수</b>
				</div>
				<!-- Table -->
				<table class="table table-hover" ID="s4">
					<tr>
						<th class="col-md-2">기간</th>
						<th class="col-md-4">과정명</th>
						<th class="col-md-2">기관</th>
						<th class="col-md-2">공개범위</th>
						<th class="col-md-2 text-right"><button title="교육/연수 추가"
								type="button" class="btn btn-primary btn-xs"
								onclick="addItem_s4()">추가</button></th>
					</tr>
					<c:choose>
						<c:when test="${ empty spec.trainings}">
							<tr>
								<td align="center" colspan="5">등록된 교육/연수 내용이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="training" items="${spec.trainings}">
								<tr>
									<td class="col-md-2">${training.trainingPeriod}</td>
									<td class="col-md-4">${training.trainingName}</td>
									<td class="col-md-2">${training.trainingOrg}</td>
									<td class="col-md-2">${training.publicScope}</td>
									<td class="col-md-2 text-right"><button title="항목 삭제"
											type="button" class="btn btn-default btn-xs" onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=training&tableNo=${training.regNo}');">삭제</button></td>
							
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
			</div>
			<!--  section END -->

			<!-- 포트폴리오 section  -->
			<div class="panel panel-default">
				<!-- Table Name -->
				<div class="panel-heading">
					<b>포트폴리오</b>
				</div>
				<!-- Table -->
				<table class="table table-hover" ID="s5">
					<tr>
						<th class="col-md-2">기간</th>
						<th class="col-md-3">포트폴리오명</th>
						<th class="col-md-3">링크</th>
						<th class="col-md-2">공개범위</th>
						<th class="col-md-2 text-right"><button title="포트폴리오 추가"
								type="button" class="btn btn-primary btn-xs"
								onclick="addItem_s5()">추가</button></th>
					</tr>
					<c:choose>
						<c:when test="${ empty spec.portfolios}">
							<tr>
								<td align="center" colspan="5">등록된 포트폴리오가 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="portfolio" items="${spec.portfolios}">
								<tr>
									<td class="col-md-2">${portfolio.portfolioPeriod}</td>
									<td class="col-md-3">${portfolio.portfolioName}</td>
									<td class="col-md-3">${portfolio.portfolioLink}</td>
									<td class="col-md-2">${portfolio.publicScope}</td>
									<td class="col-md-2 text-right"><button title="항목 삭제"
											type="button" class="btn btn-default btn-xs" onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=portfolio&tableNo=${portfolio.regNo}');">삭제</button></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
			</div>
			<!--  section END -->

			<!-- 소프트웨어개발능력 section  -->
			<div class="panel panel-default">
				<!-- Table Name -->
				<div class="panel-heading">
					<b>소프트웨어 개발 능력</b>
				</div>
				<!-- Table -->
				<table class="table table-hover" ID="s6">
					<tr>
						<th class="col-md-2">언어(기술)명</th>
						<th class="col-md-2">수준</th>
						<th class="col-md-2"></th>
						<th class="col-md-2"></th>
						<th class="col-md-2">공개범위</th>
						<th class="col-md-2 text-right"><button title="개발능력 추가"
								type="button" class="btn btn-primary btn-xs"
								onclick="addItem_s6()">추가</button></th>
					</tr>
					<c:choose>
						<c:when test="${ empty spec.programmingLanguages }">
							<tr>
								<td align="center" colspan="6">등록된 사항이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="programmingLanguage" items="${spec.programmingLanguages}">
								<tr>
									<td class="col-md-2">${programmingLanguage.languageName}</td>
									<td class="col-md-2">${programmingLanguage.languageLevel}</td>
									<td class="col-md-2"></td>
									<td class="col-md-2"></td>
									<td class="col-md-2">${programmingLanguage.publicScope}</td>
									<td class="col-md-2 text-right"><button title="항목 삭제"
											type="button" class="btn btn-default btn-xs" onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=programming_language&tableNo=${programmingLanguage.regNo}');">삭제</button></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
			</div>
			<!--  section END -->

			<!-- 학력사항 section  -->
			<div class="panel panel-default">
				<!-- Table Name -->
				<div class="panel-heading">
					<b>학력 사항</b>
				</div>
				<!-- Table -->
				<table class="table table-hover" ID="s7">
					<tr>
						<th class="col-md-2">재학기간</th>
						<th class="col-md-2">학교명</th>
						<th class="col-md-2">전공</th>
						<th class="col-md-2">구분</th>
						<th class="col-md-2">공개범위</th>
						<th class="col-md-2 text-right"><button title="학력 추가"
								type="button" class="btn btn-primary btn-xs"
								onclick="addItem_s7()">추가</button></th>
					</tr>
					<c:choose>
						<c:when test="${ empty spec.academics}">
							<tr>
								<td align="center" colspan="6">등록된 학력사항이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="academic" items="${spec.academics}">
								<tr>
									<td class="col-md-2">${academic.academicPeriod}</td>
									<td class="col-md-2">${academic.academicName}</td>
									<td class="col-md-2">${academic.academicMajor}</td>
									<td class="col-md-2">${academic.academicState}</td>
									<td class="col-md-2">${academic.publicScope}</td>
									<td class="col-md-2 text-right"><button title="항목 삭제"
											type="button" class="btn btn-default btn-xs"onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=academic&tableNo=${academic.regNo}');">삭제</button></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
			</div>
			<!-- 학력사항 section END -->
			
			<!-- 병역사항 section  -->
			<div class="panel panel-default">
				<!-- Table Name -->
				<div class="panel-heading">	<b>병역</b>	</div>
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
						<c:when test="${ spec.military.isRegister() }">
							<tr>
								<td class="col-md-2">${spec.military.militaryPeriod}</td>
								<td class="col-md-2">${spec.military.militaryGroup}</td>
								<td class="col-md-2">${spec.military.militaryRank}</td>
								<td class="col-md-2">${spec.military.militaryWork}</td>
								<td class="col-md-2">${spec.military.publicScope}</td>
								<td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs" onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=military&tableNo=${spec.military.regNo}');">삭제</button></td>
							</tr>
						</c:when>
						<c:otherwise>
							<tr>
								<td align="center" colspan="6">등록된 병역사항이 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</table>					
			</div>
			<!--  section END -->

			
			
		</form> <!--  이력영역 끝 -->
	</div>
</div>

<!-- SNS REGISTER Modal -->
<div class="modal fade" id="snsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
     <form action="<%=rootPath%>/register" role="form" method="post">
      <div class="modal-header"  style="background-color:#efefef;">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title text-center" id="myModalLabel">SNS 등록 및 변경</h4>
      </div>
      <div class="modal-body">
      
       		<input type="hidden" name="param" value="sns"/>
       		<table class="table text-right">
       			<tr>
       				<td><h5>페이스북 ( facebook.com /</h5></td>
       				<td><input type="text" class="form-control" name="facebookUrl" placeholder="계정명" value="${profile.profileSnsFacebook}"/></td>
       				<td><h5>)</h5></td>
       			</tr>       				
       			<tr>
       				<td><h5>트위터 ( twitter.com /</h5></td>
       				<td><input type="text" class="form-control" name="twitterUrl" placeholder="계정명" value="${profile.profileSnsTwitter}"/></td>
       				<td><h5>)</h5></td>
       			</tr> 
       			<tr>
       				<td><h5>네이버 블로그 ( blog.naver.com /</h5></td>
       				<td><input type="text" class="form-control" name="nBlogUrl" placeholder="계정명" value="${profile.profileSnsNBlog}"/></td>
       				<td><h5>)</h5></td>
       			</tr> 
       			<tr>
       				<td><h5>인스타그램 ( instagram.com /</h5></td>
       				<td><input type="text" class="form-control" name="instagramUrl" placeholder="계정명" value="${profile.profileSnsInstagram}"/></td>
       				<td><h5>)</h5></td>
       			</tr> 
       			<tr>
       				<td><h5>텀블러 ( tumblr.com /</h5></td>
       				<td><input type="text" class="form-control" name="tumblrUrl" placeholder="계정명" value="${profile.profileSnsTumblr}"/></td>
       				<td><h5>)</h5></td>
       			</tr> 
       			<tr>
       				<td><h5>핀터레스트 ( pinterest.com /</h5></td>
       				<td><input type="text" class="form-control" name="pinterestUrl" placeholder="계정명" value="${profile.profileSnsPinterest}"/></td>
       				<td><h5>)</h5></td>	
       			</tr> 
       		</table>       	
       
      </div>
      <div class="modal-footer">	        
        <button type="button" class="btn btn-warning text-center" onClick="submit();">등록 및 변경 완료</button>
      </div>
      </form>
    </div>
  </div>
</div>
<!-- PHOTO REGISTER Modal -->
<div class="modal fade" id="photoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<form action="FileUploadServlet" role="form"  method="post" enctype="multipart/form-data">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        		<h4 class="modal-title" id="myModalLabel">사진 Upload</h4>
        	</div>
      		
			<div class="modal-body">
		        <div class="form-group">
		    		<label for="exampleInputFile">현재 등록 사진</label><br>
		    		<img src="${profile.profilePhotoURL}" alt="" style="max-width:450px">
		  		</div>  	
				<div class="form-group">
    				<label for="exampleInputFile">사진파일 첨부</label>
    				<input type="file" id="exampleInputFile" name="photo" accept="image/*">
  				</div>  
  				<div class="alert alert-warning alert-dismissible" role="alert">
					  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					   <h4><strong>프로필 사진은 <kbd>증명사진 비율(3:4)</kbd>에 최적화 되어있습니다.</strong></h4>
					  <h5>권장 사이즈는 <strong>300X400</strong> 이며, 자동 리사이징 되어 출력되므로 사진이 깨져 보일시, 사진 편집을 통해 비율을 다시 맞추어 주시고 시도해 보시길 바랍니다.</h5>	
    			</div>
  			</div>      		
      		<div class="modal-footer">	        
        		<button type="button" class="btn btn-primary" onClick="submit();"><span class="glyphicon glyphicon-camera"></span> UPLOAD</button>
      		</div>
    	</div>
  	</div>
  	</form>
</div>
<jsp:include page="/tail.jsp" flush="false" />
