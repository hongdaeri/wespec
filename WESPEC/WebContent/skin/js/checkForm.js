/**
 *  이력등록 폼체크
 */

function Check_Certificate(form)
{
	if(!form.certificateDate_year.value)
	{
		alert('자격증 취득 년도를 입력하세요.');
		form.certificateDate_year.focus();
		return true;
	}
	if(!form.certificateDate_month.value)
	{
		alert('자격증 취득 월을 입력하세요.');
		form.certificateDate_month.focus();
		return true;
	}
	if(!form.certificateName.value)
	{
		alert('자격증명을 입력하세요.');
		form.certificateName.focus();
		return true;
	}		
	if(!form.certificateOrg.value)
	{
		alert('자격증 발행기관을 입력하세요.');
		form.certificateOrg.focus();
		return true;
	}			
	form.submit();
}

function Check_LanguageExam(form)
{
	if(!form.languageName.value)
	{
		alert('언어를 선택하세요.');
		form.languageName.focus();
		return true;
	}
	if(!form.languageExamName.value)
	{
		alert('시험명을 선택하세요.');
		form.languageExamName.focus();
		return true;
	}	
	if(!form.languageExamGrade.value)
	{
		alert('시험점수(등급)를 입력하세요.');
		form.languageExamGrade.focus();
		return true;
	}	
	if(!form.languageExamOrg.value)
	{
		alert('증빙기관을 입력하세요.');
		form.languageExamOrg.focus();
		return true;
	}	
	form.submit();
}
function Check_Award(form)
{
	if(!form.awardDate_year.value)
	{
		alert('수상년도를 입력하세요');
		form.awardDate_year.focus();
		return true;
	}
	if(!form.awardDate_month.value)
	{
		alert('수상 월을 입력하세요');
		form.awardDate_month.focus();
		return true;
	}	
	if(!form.awardSubject.value)
	{
		alert('수상내용을 입력하세요');
		form.awardSubject.focus();
		return true;
	}
	if(!form.awardOrg.value)
	{
		alert('수여기관을 입력하세요');
		form.awardOrg.focus();
		return true;
	}				
	form.submit();
}
function Check_Training(form)
{
	if(!form.trainingPeriod_year1.value) 
	{
		alert('교육/연수 기간을 정확히 입력하세요.');
		form.trainingPeriod_year1.focus();
		return true;
	}
	if(!form.trainingPeriod_month1.value) 
	{
		alert('교육/연수 기간을 정확히 입력하세요.');
		form.trainingPeriod_month1.focus();
		return true;
	}
	if(!form.trainingPeriod_year2.value) 
	{
		alert('교육/연수 기간을 정확히 입력하세요.');
		form.trainingPeriod_year2.focus();
		return true;
	}
	if(!form.trainingPeriod_month2.value) 
	{
		alert('교육/연수 기간을 정확히 입력하세요.');
		form.trainingPeriod_month2.focus();
		return true;
	}
	if(!form.trainingName.value)
	{
		alert('교육/연수 명을 정확히 입력하세요.');
		form.trainingName.focus();
		return true;
	}	
	if(!form.trainingOrg.value)
	{
		alert('교육/연수 기관을 정확히 입력하세요.');
		form.trainingOrg.focus();
		return true;
	}	
	form.submit();
}
function Check_Portfolio(form)
{
	if(!form.portfolioPeriod_year1.value)
	{
		alert('프로젝트 기간을 정확히 입력하세요.');
		form.portfolioPeriod_year1.focus();
		return true;
	}
	if(!form.portfolioPeriod_month1.value)
	{
		alert('프로젝트 기간을 정확히 입력하세요.');
		form.portfolioPeriod_month1.focus();
		return true;
	}
	if(!form.portfolioPeriod_year2.value)
	{
		alert('프로젝트 기간을 정확히 입력하세요.');
		form.portfolioPeriod_year2.focus();
		return true;
	}
	if(!form.portfolioPeriod_month2.value)
	{
		alert('프로젝트 기간을 정확히 입력하세요.');
		form.portfolioPeriod_month2.focus();
		return true;
	}
	if(!form.portfolioName.value)
	{
		alert('프로젝트 이름을 입력하세요.');
		form.portfolioName.focus();
		return true;
	}	
	form.submit();
}
function Check_Academic(form)
{
	if(!form.academicPeriod_year1.value)
	{
		alert('재학기간을 정확히 입력하세요.');
		form.academicPeriod_year1.focus();
		return true;
	}
	if(!form.academicPeriod_month1.value)
	{
		alert('재학기간을 정확히 입력하세요.');
		form.academicPeriod_month1.focus();
		return true;
	}
	if(!form.academicPeriod_year2.value)
	{
		alert('재학기간을 정확히 입력하세요.');
		form.academicPeriod_year2.focus();
		return true;
	}
	if(!form.academicPeriod_month2.value)
	{
		alert('재학기간을 정확히 입력하세요.');
		form.academicPeriod_month2.focus();
		return true;
	}
	if(!form.academicName.value)
	{
		alert('학교명을 입력하세요.');
		form.academicName.focus();
		return true;
	}	
	form.submit();
}

function Check_Military(form)
{
	if(!form.militaryPeriod_year1.value)
	{
		alert('복무기간을 정확히 입력하세요.');
		form.militaryPeriod_year1.focus();
		return true;
	}
	if(!form.militaryPeriod_month1.value)
	{
		alert('복무기간을 정확히 입력하세요.');
		form.militaryPeriod_month1.focus();
		return true;
	}
	if(!form.militaryPeriod_year2.value)
	{
		alert('복무기간을 정확히 입력하세요.');
		form.militaryPeriod_year2.focus();
		return true;
	}
	if(!form.militaryPeriod_month2.value)
	{
		alert('복무기간을 정확히 입력하세요.');
		form.militaryPeriod_month2.focus();
		return true;
	}
	if(!form.militaryGroup.value)
	{
		alert('군별을 정확히 입력하세요.');
		form.militaryGroup.focus();
		return true;
	}	
	if(!form.militaryRank.value)
	{
		alert('계급을 입력하세요.');
		form.militaryRank.focus();
		return true;
	}	
	if(!form.militmilitaryWorkaryRank.value)
	{
		alert('병과를 입력하세요.');
		form.militaryWork.focus();
		return true;
	}	
	form.submit();
}