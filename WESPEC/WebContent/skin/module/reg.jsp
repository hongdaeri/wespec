<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/common/common.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/head.jsp" flush="false" />

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
							<input type="text" name="engName" value="${profile.profileEngName}" placeholder="영문이름" /> /
							<input type="text" name="chiName" value="${profile.profileChiName}" placeholder="한자이름"/>
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
								<td align="center" colspan="6">등록된 자격증이 없습니다.</td>
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
	                			<input type="text" id="tooltip" class="form-control" name="certificateDate_year" size="5" maxlength="4" title="예)2014">
	                			<span style="vertical-align:bottom" >&nbsp;.&nbsp;</span>
	                			<input type="text" id="tooltip" class="form-control" name="certificateDate_month" size="3" maxlength="2" title="예)09">
                			</td>
                     		<td class="col-md-2"><input type="text" class="form-control" name="certificateName" title="예) 컴퓨터활용능력"/></td>
                      		<td class="col-md-2"><input type="text" class="form-control" name="certificateGrade" title="예) 1급"/></td>
				      		<td class="col-md-3"><input type="text" class="form-control" name="certificateOrg" title="예) 대한상공회의소"/></td>
				      		<td class="col-md-2"><select name="publicScope" class="form-control"><option value="전체공개">전체공개</option><option value="교수공개">교수공개</option><option value="비공개">비공개</option></select></td>
				      		<td class="col-md-1 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>
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
								<td align="center" colspan="6">등록된 어학능력이 없습니다.</td>
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
                			<td class="col-md-2"><SELECT class="form-control " Name="languageName" onChange="BuildCats(this.selectedIndex,language_exam);"><OPTION Value="">------<OPTION Value="영어">영어<OPTION Value="일어">일어<OPTION Value="중국어">중국어</Select></td>
			                <td class="col-md-2"><SELECT class="form-control" Name="languageExamName"><OPTION Value="">-------</Select></td>
			                <td class="col-md-2"><div class="input-group"><input type="text" class="form-control" name="languageExamGrade" /><div class="input-group-btn"><SELECT class="form-control" Name="languageExamGradeOption"><OPTION Value="점">점<OPTION Value="급">급</Select></div></div></td>
						    <td class="col-md-3"><input type="text" class="form-control" name="languageExamOrg" title="예) 한국토익위원회" /></td>
						    <td class="col-md-2"><select class="form-control" name="publicScope"><option value="전체공개">전체공개</option><option value="교수공개">교수공개</option><option value="비공개" >비공개</option></select></td>
						    <td class="col-md-1 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>
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
								<td align="center" colspan="5">등록된 수상내역이 없습니다.</td>
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
                			<td class="col-md-2"><input type="text" class="form-control" name="awardDate_year" size="5" maxlength="4" title="예)2014"><span style="vertical-align:bottom" >&nbsp;.&nbsp;</span><input type="text" class="form-control" name="awardDate_month" size="3" maxlength="2"></td>
               				<td class="col-md-4"><input type="text" class="form-control" name="awardSubject" style="width:100%;" title="예) 2014 상상실현창의공모전 최우수상" /></td>
			      			<td class="col-md-3"><input type="text" class="form-control" name="awardOrg" title="예) KT&G"/></td>
			      			<td class="col-md-2"><select name="publicScope" class="form-control"><option value="전체공개">전체공개</option><option value="교수공개">교수공개</option><option value="비공개">비공개</option></select></td>
			      			<td class="col-md-1 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>
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
								<td align="center" colspan="5">등록된 교육/연수 내용이 없습니다.</td>
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
                			<td class="col-md-3"><input type="text" class="form-control" name="trainingPeriod_year1" size="4" maxlength="4" title="예)2014"><span style="vertical-align:bottom" >&nbsp;.&nbsp;</span><input type="text" class="form-control" name="trainingPeriod_month1" size="2" maxlength="2"> <span style="vertical-align:middle" >&nbsp;~&nbsp;</span><input type="text" class="form-control" name="trainingPeriod_year2" size="4" maxlength="4" title="예)2014"><span style="vertical-align:bottom" >&nbsp;.&nbsp;</span><input type="text" class="form-control" name="trainingPeriod_month2" size="2" maxlength="2"></td> 
			                <td class="col-md-4"><input type="text" class="form-control" name="trainingName" style="width:100%;" title="예) 청년취업아카데미 빅데이터 분석 전문가 과정"/></td>
						    <td class="col-md-2"><input type="text" class="form-control" name="trainingOrg" title="예) 고용노동부"/></td>
						    <td class="col-md-2"><select name="publicScope"  class="form-control"><option value="전체공개">전체공개</option><option value="교수공개">교수공개</option><option value="비공개">비공개</option></select></td>
						    <td class="col-md-1 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>
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
								<td align="center" colspan="5">등록된 포트폴리오가 없습니다.</td>
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
                			<td class="col-md-3"><input type="text" class="form-control" name="portfolioPeriod_year1" size="4" maxlength="4" title="예)2014"><span style="vertical-align:bottom" >&nbsp;.&nbsp;</span><input type="text" class="form-control" name="portfolioPeriod_month1" size="2" maxlength="2"> <span style="vertical-align:middle" >&nbsp;~&nbsp;</span><input type="text" class="form-control" name="portfolioPeriod_year2" size="4" maxlength="4" title="예)2014"><span style="vertical-align:bottom" >&nbsp;.&nbsp;</span><input type="text" class="form-control" name="portfolioPeriod_month2" size="2" maxlength="2"></td>
			                <td class="col-md-3"><input type="text" class="form-control" name="portfolioName" style="width:100%" title="예) 개방형 이력관리 시스템 위스펙"/></td>
						    <td class="col-md-3"><input type="text" class="form-control" name="portfolioLink" style="width:100%" title="예) http://wespec.co.kr"/></td>
						    <td class="col-md-2"><select name="publicScope" class="form-control"><option value="전체공개">전체공개</option><option value="교수공개">교수공개</option><option value="비공개">비공개</option></select></td>
						    <td class="col-md-1 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>
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
						<th class="col-md-2">언어(기술)명</th>
						<th class="col-md-2">수준</th>
						<th class="col-md-2"></th>
						<th class="col-md-3"></th>
						<th class="col-md-2">공개범위</th>
						<th class="col-md-1 text-right">
							<label class="btn btn-primary btn-xs" onClick="javascript:$('#add_programming_language').toggle()" title="소프트웨어 개발능력">추가</label>
						</th>
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
									<td class="col-md-3"></td>
									<td class="col-md-2">${programmingLanguage.publicScope}</td>
									<td class="col-md-1 text-right"><button title="항목 삭제"
											type="button" class="btn btn-default btn-xs" onClick="javascript:delete_confirm('<%=rootPath%>/delete?tableName=programming_language&tableNo=${programmingLanguage.regNo}');">삭제</button></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
				<div class="collapse" id="add_programming_language">
					<form action="<%=rootPath%>/register?param=s6" class="form-inline" role="form" name="programming_language" method="post">
					<table class="table table-hover">
                		<tr>                			
                			<td class="col-md-2"><input type="text" class="form-control" name="languageName" class="form-control"/></td>
		                  	<td class="col-md-2"><select name="languageLevel" class="form-control"><option value="상">상</option><option value="중">중</option><option value="하">하</option></select></td>
		                  	<td class="col-md-2"></td>
					      	<td class="col-md-3"></td>
					      	<td class="col-md-2"><select name="publicScope" class="form-control"><option value="전체공개">전체공개</option><option value="교수공개" >교수공개</option><option value="비공개">비공개</option></select></td>
					      	<td class="col-md-1 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>
			     		</tr> 
                	</table>
                	</form>
				</div>
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
								<td align="center" colspan="6">등록된 학력사항이 없습니다.</td>
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
                			<td class="col-md-3"><input type="text" class="form-control" name="academicPeriod_year1" size="4" maxlength="4" title="예)2014"><span style="vertical-align:bottom" >.&nbsp;</span><input type="text" class="form-control" name="academicPeriod_month1" size="2" maxlength="2"><span style="vertical-align:middle" >&nbsp;~&nbsp;</span><input type="text" class="form-control" name="academicPeriod_year2" size="4" maxlength="4" title="예)2014"><span style="vertical-align:bottom" >.&nbsp;</span><input type="text" class="form-control" name="academicPeriod_month2" size="2" maxlength="2"></td>
          					<td class="col-md-2"><input type="text" class="form-control" name="academicName" style="width:100%" title="예) 음성고등학교"/></td>
               				<td class="col-md-2"><input type="text" class="form-control" name="academicMajor" style="width:100%" title="예) 인문계"/></td>
			     			<td class="col-md-2"><select name="academicState" class="form-control"><option value="졸업">졸업</option><option value="재학">재학</option><option value="중퇴" >중퇴</option><option value="휴학">휴학</option></select></td>
			    			<td class="col-md-2"><select name="publicScope" class="form-control"><option value="전체공개">전체공개</option><option value="교수공개">교수공개</option><option value="비공개">비공개</option></select></td>
			  				<td class="col-md-1 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>
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
									<td align="center" colspan="6">등록된 병역사항이 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</table>
					<div class="collapse" id="add_military">
					<form action="<%=rootPath%>/register?param=s8" class="form-inline" role="form" name="military" method="post">
					<table class="table table-hover">
                		<tr>  
                			<td class="col-md-3">
                				<input type="text" class="form-control" name="militaryPeriod_year1" size="4" maxlength="4" title="예)2014">
                				<span style="vertical-align:bottom" >&nbsp;.&nbsp;</span>
                				<input type="text" class="form-control" name="militaryPeriod_month1" size="2" maxlength="2">
                				<span style="vertical-align:middle" >&nbsp;~&nbsp;</span>
                				<input type="text" class="form-control" name="militaryPeriod_year2" size="4" maxlength="4" title="예)2014">
                				<span style="vertical-align:bottom" >&nbsp;.&nbsp;</span>
                				<input type="text" class="form-control" name="militaryPeriod_month2" size="2" maxlength="2">
                			</td>
							<td class="col-md-2"><input type="text" class="form-control" name="militaryGroup" title="예) 육군"/></td>
							<td class="col-md-2"><input type="text" class="form-control" name="militaryRank" title="예) 병장"/></td>
							<td class="col-md-2"><input type="text" class="form-control" name="militaryWork" title="예) 보병"/></td>
							<td class="col-md-2"><select name="publicScope" class="form-control"><option value="전체공개">전체공개</option><option value="교수공개">교수공개</option><option value="비공개">비공개</option></select></td>
							<td class="col-md-1 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>              			
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

<script>
$('#tooltip').poshytip({
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

<jsp:include page="/tail.jsp" flush="false" />
