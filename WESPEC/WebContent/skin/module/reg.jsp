<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/common/common.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/head.jsp" flush="false" />
<%
	String tooltip_year ="<strong>년도를 입력하세요 (숫자 4자리)</strong><br>예) 2014";
	String tooltip_month ="<strong>월을 입력하세요 (숫자 2자리)</strong><br>예) 05";
	
%>


<div class="row">
	<div class="col-md-12">
		<div class="row">
			<form action="<%=rootPath%>/register" method="post" class="form-inline" name="profile">
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
							<input type="text" name="engName" value="${profile.profileEngName}" placeholder="영문이름" class="tooltip_bottom" title="<strong>영문이름을 입력하세요</strong><br>예) Hong Gildong"/> /
							<input type="text" name="chiName" value="${profile.profileChiName}" placeholder="한자이름" class="tooltip_bottom" title="<strong>한문이름 입력하세요 (한문명이 없는경우 한글로 작성)</strong><br>예) 金 佶洞 , 洪 바울"/>
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
							<td><input type="text" name="birth" value="${profile.profileBirth}" readonly /></td>
							<td class="active">거주지</td>
							<td><input type="text" name="address" value="${profile.profileAddress}" class="tooltip_bottom" title="<strong>거주지는 구 또는 읍까지만 입력하세요</strong><br>예) 서울시 마포구, 평택시 팽성읍"/></td>
						</tr>
						<tr>
							<td class="active">연락처</td>
							<td class=""><input type="text" name="phone" value="${profile.profilePhone}" maxlength="13" class="tooltip_bottom" title="<strong>다음과 같이 하이픈(-)을 꼭 포함하세요</strong><br>010-1234-4567 - O<br> 01012344567  - X" /></td>
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
						<th class="col-md-3">발행기관</th>
						<th class="col-md-2">공개범위</th>
						<th class="col-md-1 text-right">
							<label class="btn btn-primary btn-xs" onClick="javascript:$('#add_certificate').toggle()" title="자격증 추가">추가</label>
						</th>
					</tr>
					<c:choose>
						<c:when test="${ empty spec.certificates}">
							<tr>
								<td align="center" colspan="6">현재 등록된 자격증이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="certificate" items="${spec.certificates}">
								<tr>
									<td class="col-md-2">${certificate.certificateDate}</td>
									<td class="col-md-2">${certificate.certificateName}</td>
									<td class="col-md-2">${certificate.certificateGrade}</td>
									<td class="col-md-3">${certificate.certificateOrg}</td>
									<td class="col-md-2">${certificate.publicScope}</td>
									<td class="col-md-1 text-right"><button title="항목 삭제"
											type="button" class="btn btn-default btn-xs" onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=certificate&tableNo=${certificate.regNo}');">삭제</button></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
				<div class="collapse" id="add_certificate">
					<form action="<%=rootPath%>/register?param=s1" class="form-inline" role="form" name="certificate" method="post">
					<table class="table table-hover">
                		<tr>
                			<td class="col-md-2">
	                			<input type="text" class="tooltip_bottom form-control" name="certificateDate_year" size="5" maxlength="4" id="tooltip" title="<%=tooltip_year%>">
	                			<span style="vertical-align:bottom" >&nbsp;.&nbsp;</span>
	                			<input type="text" class="tooltip_bottom form-control" name="certificateDate_month" size="3" maxlength="2" id="tooltip" title="<%=tooltip_month%>">
                			</td>
                     		<td class="col-md-2"><input type="text" class="tooltip_bottom form-control" name="certificateName" maxlength="30" title="<strong>자격증명을 입력하세요</strong><br>예) 컴퓨터활용능력"/></td>
                      		<td class="col-md-2"><input type="text" class="tooltip_bottom form-control" name="certificateGrade" maxlength="10" title="<strong>급수가 없는 자격증의 경우 공란으로 남겨주세요</strong><br>예) 1급"/></td>
				      		<td class="col-md-3"><input type="text" class="tooltip_bottom form-control" name="certificateOrg" maxlength="20" title="<strong>자격증에 표기되어있는 발행처/발행기관을 입력하세요</strong><br>예) 한국산업인력공단, 대한상공회의소"/></td>
				      		<td class="col-md-2"><select name="publicScope" class="tooltip_bottom form-control"><option value="전체공개">전체공개</option><option value="교수공개">교수공개</option><option value="비공개">비공개</option></select></td>
				      		<td class="col-md-1 text-right"><button title="등록" type="button" class="btn btn-primary btn-xs" onClick="javascript:Check_Certificate(certificate)">등록</button></td>
                		</tr> 
                	</table>
                	</form>
				</div>
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
						<th class="col-md-3">증빙기관</th>
						<th class="col-md-2">공개범위</th>
						<th class="col-md-1 text-right">
							<label class="btn btn-primary btn-xs" onClick="javascript:$('#add_language_exam').toggle()" title="어학능력 추가">추가</label>
						</th>
					</tr>
					<c:choose>
						<c:when test="${ empty spec.languages }">
							<tr>
								<td align="center" colspan="6">현재 등록된 어학능력이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="language" items="${spec.languages}">
								<tr>
									<td class="col-md-2">${language.languageName}</td>
									<td class="col-md-2">${language.languageExamName}</td>
									<td class="col-md-2">${language.languageExamGrade}</td>
									<td class="col-md-3">${language.languageExamOrg}</td>
									<td class="col-md-2">${language.publicScope}</td>
									<td class="col-md-1 text-right"><button title="항목 삭제"
											type="button" class="btn btn-default btn-xs" onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=language_exam&tableNo=${language.regNo}');">삭제</button></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
				<div class="collapse" id="add_language_exam">
					<form action="<%=rootPath%>/register?param=s2" class="form-inline" role="form" name="language_exam" method="post">
					<table class="table table-hover">
                		<tr>                			
                			<td class="col-md-2"><SELECT class="tooltip_bottom form-control " Name="languageName" onChange="BuildCats(this.selectedIndex,language_exam);"><OPTION Value="">------<OPTION Value="영어">영어<OPTION Value="일어">일어<OPTION Value="중국어">중국어</Select></td>
			                <td class="col-md-2"><SELECT class="tooltip_bottom form-control" Name="languageExamName"><OPTION Value="">-------</Select></td>
			                <td class="col-md-2"><div class="input-group"><input type="text" class="tooltip_bottom form-control" name="languageExamGrade" maxlength="8" title="<strong>점수 또는 급수를 입력하세요. 취득의 경우 PASS 라고 입력하세요</strong><br>예) 750, 3, PASS"/><div class="input-group-btn"><SELECT class="tooltip_bottom form-control" Name="languageExamGradeOption"><OPTION Value="점">점<OPTION Value="급">급</Select></div></div></td>
						    <td class="col-md-3"><input type="text" class="tooltip_bottom form-control" name="languageExamOrg" maxlength="20" title="<strong>증빙 기관을 입력하세요. (토익의 경우 ETS)</strong><br>예) ETS" /></td>
						    <td class="col-md-2"><select class="tooltip_bottom form-control" name="publicScope"><option value="전체공개">전체공개</option><option value="교수공개">교수공개</option><option value="비공개" >비공개</option></select></td>
						    <td class="col-md-1 text-right"><button title="등록" type="button" class="btn btn-primary btn-xs" onClick="javascript:Check_LanguageExam(language_exam)">등록</button></td>
                		</tr> 
                	</table>
                	</form>
				</div>
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
						<th class="col-md-3">수여기관</th>
						<th class="col-md-2">공개범위</th>
						<th class="col-md-1 text-right">
							<label class="btn btn-primary btn-xs" onClick="javascript:$('#add_award').toggle()" title="수상실적 추가">추가</label>
						</th>
					</tr>
					<c:choose>
						<c:when test="${ empty spec.awards}">
							<tr>
								<td align="center" colspan="5">현재 등록된 수상내역이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="award" items="${spec.awards}">
								<tr>
									<td class="col-md-2">${award.awardDate}</td>
									<td class="col-md-4">${award.awardSubject}</td>
									<td class="col-md-3">${award.awardOrg}</td>
									<td class="col-md-2">${award.publicScope}</td>
									<td class="col-md-1 text-right"><button title="항목 삭제"
											type="button" class="btn btn-default btn-xs" onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=award&tableNo=${award.regNo}');">삭제</button></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
				<div class="collapse" id="add_award">
					<form action="<%=rootPath%>/register?param=s3" class="form-inline" role="form" name="award" method="post">
					<table class="table table-hover">
                		<tr>                			
                			<td class="col-md-2"><input type="text" class="tooltip_bottom form-control" name="awardDate_year" maxlength="20" size="5" maxlength="4" id="tooltip" title="<%=tooltip_year%>"><span style="vertical-align:bottom" >&nbsp;.&nbsp;</span><input type="text" class="tooltip_bottom form-control" name="awardDate_month" size="3" maxlength="2" id="tooltip" title="<%=tooltip_month%>"></td>
               				<td class="col-md-4"><input type="text" class="tooltip_bottom form-control" name="awardSubject" maxlength="20" style="width:100%;" title="<strong>수상명은 정확하고, 구체적으로 최종 결과까지 표현해주세요</strong><br>2014 상상실현창의공모전 최우수상<br>청룡기 육상선수권대회 은메달<br>청주시장배 아마추어 풋살대회 준우승" /></td>
			      			<td class="col-md-3"><input type="text" class="tooltip_bottom form-control" name="awardOrg" maxlength="20" title="<strong>수여기관은 정확한 기관명을 입력하세요</strong><br>예) 충청북도교육청, SKT, KT&G"/></td>
			      			<td class="col-md-2"><select name="publicScope" class="tooltip_bottom form-control"><option value="전체공개">전체공개</option><option value="교수공개">교수공개</option><option value="비공개">비공개</option></select></td>
			      			<td class="col-md-1 text-right"><button title="등록" type="button" class="btn btn-primary btn-xs" onClick="javascript:Check_Award(award)">등록</button></td>
						</tr> 
                	</table>
                	</form>
				</div>
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
						<th class="col-md-3">기간</th>
						<th class="col-md-4">과정명</th>
						<th class="col-md-2">기관</th>
						<th class="col-md-2">공개범위</th>
						<th class="col-md-1 text-right">
							<label class="btn btn-primary btn-xs" onClick="javascript:$('#add_training').toggle()" title="교육/연수 추가">추가</label>
						</th>
					</tr>
					<c:choose>
						<c:when test="${ empty spec.trainings}">
							<tr>
								<td align="center" colspan="5">현재 등록된 교육/연수 내용이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="training" items="${spec.trainings}">
								<tr>
									<td class="col-md-3">${training.trainingPeriod}</td>
									<td class="col-md-4">${training.trainingName}</td>
									<td class="col-md-2">${training.trainingOrg}</td>
									<td class="col-md-2">${training.publicScope}</td>
									<td class="col-md-1 text-right"><button title="항목 삭제"
											type="button" class="btn btn-default btn-xs" onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=training&tableNo=${training.regNo}');">삭제</button></td>
							
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
				<div class="collapse" id="add_training">
					<form action="<%=rootPath%>/register?param=s4" class="form-inline" role="form" name="training" method="post">
					<table class="table table-hover">
                		<tr>                			
                			<td class="col-md-3"><input type="text" class="tooltip_bottom form-control" name="trainingPeriod_year1" size="4" maxlength="4" id="tooltip" title="<%=tooltip_year%>"><span style="vertical-align:bottom" >&nbsp;.&nbsp;</span><input type="text" class="tooltip_bottom form-control" name="trainingPeriod_month1" size="2" maxlength="2" id="tooltip" title="<%=tooltip_month%>"> <span style="vertical-align:middle" >&nbsp;~&nbsp;</span><input type="text" class="tooltip_bottom form-control" name="trainingPeriod_year2" size="4" maxlength="4" id="tooltip" title="<%=tooltip_year%>"><span style="vertical-align:bottom" >&nbsp;.&nbsp;</span><input type="text" class="tooltip_bottom form-control" name="trainingPeriod_month2" size="2" maxlength="2" id="tooltip" title="<%=tooltip_month%>"></td> 
			                <td class="col-md-4"><input type="text" class="tooltip_bottom form-control" name="trainingName" maxlength="20" style="width:100%;" title="<strong>교육/연수명을 입력하세요</strong><br>예) 청년취업아카데미 빅데이터 분석전문가 과정"/></td>
						    <td class="col-md-2"><input type="text" class="tooltip_bottom form-control" name="trainingOrg" maxlength="20" title="<strong>교육/연수 기관명을 입력하세요</strong><br>예) 고용노동부, OO정보원"/></td>
						    <td class="col-md-2"><select name="publicScope"  class="tooltip_bottom form-control"><option value="전체공개">전체공개</option><option value="교수공개">교수공개</option><option value="비공개">비공개</option></select></td>
						    <td class="col-md-1 text-right"><button title="등록" type="button" class="btn btn-primary btn-xs" onClick="javascript:Check_Training(training)">등록</button></td>
                		</tr> 
                	</table>
                	</form>
				</div>
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
						<th class="col-md-3">기간</th>
						<th class="col-md-3">프로젝트명</th>
						<th class="col-md-3">관련링크</th>
						<th class="col-md-2">공개범위</th>
						<th class="col-md-1 text-right">
							<label class="btn btn-primary btn-xs" onClick="javascript:$('#add_portfolio').toggle()" title="포트폴리오 추가">추가</label>
						</th>
					</tr>
					<c:choose>
						<c:when test="${ empty spec.portfolios}">
							<tr>
								<td align="center" colspan="5">현재 등록된 포트폴리오가 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="portfolio" items="${spec.portfolios}">
								<tr>
									<td class="col-md-3">${portfolio.portfolioPeriod}</td>
									<td class="col-md-3">${portfolio.portfolioName}</td>
									<td class="col-md-3">${portfolio.portfolioLink}</td>
									<td class="col-md-2">${portfolio.publicScope}</td>
									<td class="col-md-1 text-right"><button title="항목 삭제"
											type="button" class="btn btn-default btn-xs" onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=portfolio&tableNo=${portfolio.regNo}');">삭제</button></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
				<div class="collapse" id="add_portfolio">
					<form action="<%=rootPath%>/register?param=s5" class="form-inline" role="form" name="portfolio" method="post">
					<table class="table table-hover">
                		<tr>                			
                			<td class="col-md-3"><input type="text" class="tooltip_bottom form-control" name="portfolioPeriod_year1" size="4" maxlength="4" title="<%=tooltip_year%>"><span style="vertical-align:bottom" >&nbsp;.&nbsp;</span><input type="text" class="tooltip_bottom form-control" name="portfolioPeriod_month1" size="2" maxlength="2" title="<%=tooltip_month%>"> <span style="vertical-align:middle" >&nbsp;~&nbsp;</span><input type="text" class="tooltip_bottom form-control" name="portfolioPeriod_year2" size="4" maxlength="4" title="<%=tooltip_year%>"><span style="vertical-align:bottom" >&nbsp;.&nbsp;</span><input type="text" class="tooltip_bottom form-control" name="portfolioPeriod_month2" size="2" maxlength="2" title="<%=tooltip_month%>"></td>
			                <td class="col-md-3"><input type="text" class="tooltip_bottom form-control" name="portfolioName" maxlength="30" style="width:100%" title="<strong>프로젝트의 정식명칭을 입력하세요</strong><br>예) 개방형 오픈 이력 시스템 - 위스펙"/></td>
						    <td class="col-md-3"><input type="text" class="tooltip_bottom form-control" name="portfolioLink" maxlength="300" style="width:100%" title="<strong>프로젝트와 관련된 링크를 입력하세요 <br>(없으면 공란으로 남겨주세요)</strong><br>예) http://wespec.co.kr"/></td>
						    <td class="col-md-2"><select name="publicScope" class="tooltip_bottom form-control"><option value="전체공개">전체공개</option><option value="교수공개">교수공개</option><option value="비공개">비공개</option></select></td>
						    <td class="col-md-1 text-right"><button title="등록" type="button" class="btn btn-primary btn-xs" onClick="javascript:Check_Portfolio(portfolio)">등록</button></td>
						</tr> 
                	</table>
                	</form>
				</div>
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
						<td class="col-md-11">
							<form action="<%=rootPath%>/register?param=s6" class="form-inline" role="form" name="programming_language" method="post">
								<div class="row">
				    			   	<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl1" class="css-checkbox" type="checkbox" name="ability" value="Certificate" /><label for="abl1" class="css-label">C</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl2" class="css-checkbox" type="checkbox" name="ability" value="Award" /><label for="abl2" class="css-label">C++</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl3" class="css-checkbox" type="checkbox" name="ability" value="Portfoilo" /><label for="abl3" class="css-label">Python</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl4" class="css-checkbox" type="checkbox" name="ability" value="Training" /><label for="abl4" class="css-label">Java</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl5" class="css-checkbox" type="checkbox" name="ability" value="Service" /><label for="abl5" class="css-label">Visual Basic</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl6" class="css-checkbox" type="checkbox" name="ability" value="Club" /><label for="abl6" class="css-label">LISP</label>
							   		</div>					   	
							  	</div>
							  	<!--  row1 END -->
							  	<!--  row2 -->
							  	<div class="row">
				    			   	<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl7" class="css-checkbox" type="checkbox" name="ability" value="Certificate" /><label for="abl7" class="css-label">PHP</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl8" class="css-checkbox" type="checkbox" name="ability" value="Award" /><label for="abl8" class="css-label">ASP</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl9" class="css-checkbox" type="checkbox" name="ability" value="Portfoilo" /><label for="abl9" class="css-label">JSP</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl10" class="css-checkbox" type="checkbox" name="ability" value="Training" /><label for="abl10" class="css-label">C#</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl11" class="css-checkbox" type="checkbox" name="ability" value="Service" /><label for="abl11" class="css-label">Ruby</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl12" class="css-checkbox" type="checkbox" name="ability" value="Club" /><label for="abl12" class="css-label">HTML</label>
							   		</div>					   	
							  	</div>
							  	<!--  row2 END -->
							  	<!--  row3 -->
							  	<div class="row">
				    			   	<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl13" class="css-checkbox" type="checkbox" name="ability" value="Certificate" /><label for="abl13" class="css-label">Javascript</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl14" class="css-checkbox" type="checkbox" name="ability" value="Award" /><label for="abl14" class="css-label">Node.js</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl15" class="css-checkbox" type="checkbox" name="ability" value="Portfoilo" /><label for="abl15" class="css-label">Android</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl16" class="css-checkbox" type="checkbox" name="ability" value="Training" /><label for="abl16" class="css-label">Oracle</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl17" class="css-checkbox" type="checkbox" name="ability" value="Service" /><label for="abl17" class="css-label">Swift</label>
							   		</div>
							   		<div class="col-md-2 col-sm-4 col-xs-6">
							   			<input id="abl18" class="css-checkbox" type="checkbox" name="ability" value="Club" /><label for="abl18" class="css-label">Objective-C</label>
							   		</div>					   	
							  	</div>
							  	<!--  row3 END -->                 
                			</form>						
						</td>
						<td class="col-md-1 text-right" style="vertical-align:middle;"><button title="등록" type="button" class="btn btn-primary btn-xs" onClick="">등록</button></td>
					</tr>				
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
						<th class="col-md-3">재학기간</th>
						<th class="col-md-2">학교명</th>
						<th class="col-md-2">전공</th>
						<th class="col-md-2">구분</th>
						<th class="col-md-2">공개범위</th>
						<th class="col-md-1 text-right">
							<label class="btn btn-primary btn-xs" onClick="javascript:$('#add_academic').toggle()" title="학력사항 추가">추가</label>
						</th>
					</tr>
					<c:choose>
						<c:when test="${ empty spec.academics}">
							<tr>
								<td align="center" colspan="6">현재 등록된 학력사항이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="academic" items="${spec.academics}">
								<tr>
									<td class="col-md-3">${academic.academicPeriod}</td>
									<td class="col-md-2">${academic.academicName}</td>
									<td class="col-md-2">${academic.academicMajor}</td>
									<td class="col-md-2">${academic.academicState}</td>
									<td class="col-md-2">${academic.publicScope}</td>
									<td class="col-md-1 text-right"><button title="항목 삭제"
											type="button" class="btn btn-default btn-xs"onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=academic&tableNo=${academic.regNo}');">삭제</button></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
				<div class="collapse" id="add_academic">
					<form action="<%=rootPath%>/register?param=s7" class="form-inline" role="form" name="academic" method="post">
					<table class="table table-hover">
                		<tr>                			
                			<td class="col-md-3"><input type="text" class="tooltip_bottom form-control" name="academicPeriod_year1" size="4" maxlength="4" title="<%=tooltip_year%>"><span style="vertical-align:bottom" >.&nbsp;</span><input type="text" class="tooltip_bottom form-control" name="academicPeriod_month1" size="2" maxlength="2" title="<%=tooltip_month%>"><span style="vertical-align:middle" >&nbsp;~&nbsp;</span><input type="text" class="tooltip_bottom form-control" name="academicPeriod_year2" size="4" maxlength="4" title="<%=tooltip_year%>"><span style="vertical-align:bottom" >.&nbsp;</span><input type="text" class="tooltip_bottom form-control" name="academicPeriod_month2" size="2" maxlength="2" title="<%=tooltip_month%>"></td>
          					<td class="col-md-2"><input type="text" class="tooltip_bottom form-control" name="academicName" style="width:100%" maxlength="20" title="<strong>학교명을 입력하세요</strong><br>예) 음성고등학교, 한국교통대학교"/></td>
               				<td class="col-md-2"><input type="text" class="tooltip_bottom form-control" name="academicMajor" style="width:100%" maxlength="10" title="<strong>전공을 입력하세요 (없으면 공란으로 남겨주세요)</strong><br>예) 소프트웨어학과"/></td>
			     			<td class="col-md-2"><select name="academicState" class="tooltip_bottom form-control"><option value="졸업">졸업</option><option value="재학">재학</option><option value="중퇴" >중퇴</option><option value="휴학">휴학</option></select></td>
			    			<td class="col-md-2"><select name="publicScope" class="tooltip_bottom form-control"><option value="전체공개">전체공개</option><option value="교수공개">교수공개</option><option value="비공개">비공개</option></select></td>
			  				<td class="col-md-1 text-right"><button title="등록" type="button" class="btn btn-primary btn-xs" onClick="javascript:Check_Academic(academic)">등록</button></td>
                		</tr> 
                	</table>
                	</form>
				</div>
			</div>
			<!-- 학력사항 section END -->
			
			<c:if test="${profile.profileGender eq 'M' }">
				<!-- 병역사항 section  -->
				<div class="panel panel-default">
					<!-- Table Name -->
					<div class="panel-heading">	<b>병역</b>	</div>
					<!-- Table -->
					<table class="table table-hover" ID="s8">
						<tr>
							<th class="col-md-3">복무기간</th>
							<th class="col-md-2">군별</th>
							<th class="col-md-2">계급</th>
							<th class="col-md-2">병과</th>
							<th class="col-md-2">공개범위</th>
							<th class="col-md-1 text-right">
								<label class="btn btn-primary btn-xs" onClick="javascript:$('#add_military').toggle()" title="병역사항 등록">추가</label>
							</th>
						</tr>
						<c:choose>
							<c:when test="${ spec.military.isRegister() }">
								<tr>
									<td class="col-md-3">${spec.military.militaryPeriod}</td>
									<td class="col-md-2">${spec.military.militaryGroup}</td>
									<td class="col-md-2">${spec.military.militaryRank}</td>
									<td class="col-md-2">${spec.military.militaryWork}</td>
									<td class="col-md-2">${spec.military.publicScope}</td>
									<td class="col-md-1 text-right"><button title="항목 삭제" type="button" class="btn btn-default btn-xs" onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=military&tableNo=${spec.military.regNo}');">삭제</button></td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr>
									<td align="center" colspan="6">현재 등록된 병역사항이 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</table>
					<div class="collapse" id="add_military">
					<form action="<%=rootPath%>/register?param=s8" class="form-inline" role="form" name="military" method="post">
					<table class="table table-hover">
                		<tr>  
                			<td class="col-md-3">
                				<input type="text" class="tooltip_bottom form-control" name="militaryPeriod_year1" size="4" maxlength="4" title="<%=tooltip_year%>">
                				<span style="vertical-align:bottom" >&nbsp;.&nbsp;</span>
                				<input type="text" class="tooltip_bottom form-control" name="militaryPeriod_month1" size="2" maxlength="2" title="<%=tooltip_month%>">
                				<span style="vertical-align:middle" >&nbsp;~&nbsp;</span>
                				<input type="text" class="tooltip_bottom form-control" name="militaryPeriod_year2" size="4" maxlength="4" title="<%=tooltip_year%>">
                				<span style="vertical-align:bottom" >&nbsp;.&nbsp;</span>
                				<input type="text" class="tooltip_bottom form-control" name="militaryPeriod_month2" size="2" maxlength="2" title="<%=tooltip_month%>">
                			</td>
							<td class="col-md-2"><input type="text" class="tooltip_bottom form-control" name="militaryGroup" maxlength="4" title="<strong>군별을 입력하세요</strong><br>예) 육군, 공군, 해군, 의경, 공익"/></td>
							<td class="col-md-2"><input type="text" class="tooltip_bottom form-control" name="militaryRank" maxlength="4" title="<strong>계급을 입력하세요</strong><br>예) 병장, 이병, 중위, 소위, 대위"/></td>
							<td class="col-md-2"><input type="text" class="tooltip_bottom form-control" name="militaryWork" maxlength="8" title="<strong>병과를 입력하세요</strong><br>예) 보병, 의무병, 공병, 포병"/></td>
							<td class="col-md-2"><select name="publicScope" class="tooltip_bottom form-control"><option value="전체공개">전체공개</option><option value="교수공개">교수공개</option><option value="비공개">비공개</option></select></td>
							<td class="col-md-1 text-right"><button title="등록" type="button" class="btn btn-primary btn-xs" onClick="avascript:Check_Military(military)">등록</button></td>              			
						</tr> 
                	</table>
                	</form>
				</div>					
			</div>
			<!--  section END -->
			</c:if>					
		<!--  이력영역 끝 -->
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

<!-- 툴팁 스크립트 -->
<script>
$('.tooltip_bottom').poshytip({
	className: 'tip-yellowsimple',
	showOn: 'focus',
	alignTo: 'target',
	alignX: 'center',
	alignY: 'bottom',
	offsetX: 0,
	offsetY: 5,
	showTimeout: 100
});
</script>

<!--  이력등록 폼 체크 JS -->
<script src="<%=skinPath %>/js/checkForm.js" ></script>

<jsp:include page="/tail.jsp" flush="false" />
