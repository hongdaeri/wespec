var s1_noTh = 0; 
var s2_noTh = 0; 
var s3_noTh = 0; 
var s4_noTh = 0; 
var s5_noTh = 0; 
var s6_noTh = 0; 
var s7_noTh = 0; 
var s8_noTh = 0; 
var maXnoTh = 1; 

//각 분류에 대한 배열
Cats=new Array(4);
Cats[0]="------";	//기본값
Cats[1]=new Array(5);	//영어
Cats[2]=new Array(2);	//일어
Cats[3]=new Array(3);	//중국어


//영어
Cats[1][0]="토익";
Cats[1][1]="토플";
Cats[1][2]="텝스";
Cats[1][3]="오픽";	//급
Cats[1][4]="아이엘츠";

//일어
Cats[2][0]="JPT";	// 점
Cats[2][1]="JLPT";	// 급

//중국어
Cats[3][0]="HSK";	// 급
Cats[3][1]="BCT";	// 점
Cats[3][2]="CPT";	// 급


//특정 채널을 선택하면 해당 카테고리를 생성
function BuildCats(num,form)
{

	//해당 채널의 서브 카테고리 배열 길이만큼 반복
	for(i=0;i<Cats[num].length;i++)
	{
		//카테고리에 해당하는 콤보박스의 값을 채움
		form.languageExamName.options[i]=new Option(Cats[num][i],Cats[num][i]);
		
	}
	//select 리스트 길이 지정
	form.languageExamName.length=Cats[num].length;
}

function addItem_s1() { 
        if(maXnoTh <= s1_noTh)        
        { 
                alert('자격증은 한번에 한 항목씩만 등록할 수 있습니다.'); 
                return; 
        } 
        s1_noTh = s1_noTh + 1; 


        s1.innerHTML=s1.innerHTML 
                +'<table class="table table-hover">' 
                +'	<tr>' 
                +'		<td class="col-md-2"><input type="date" class="form-control" name="certificateDate" title="예) 2014.11.15"  /></td>' 
                +'      <td class="col-md-2"><input type="text" class="form-control" name="certificateName" title="예) 컴퓨터활용능력"/></td>' 
                +'      <td class="col-md-2"><input type="text" class="form-control" name="certificateGrade" title="예) 1급"/></td>' 
				+'      <td class="col-md-2"><input type="text" class="form-control" name="certificateOrg" title="예) 대한상공회의소"/></td>' 
				+'      <td class="col-md-2"><select name="publicScope" class="form-control"><option value="전체공개" name="publicScope">전체공개</option><option value="교수공개" name="publicScope">교수공개</option><option value="비공개" name="publicScope">비공개</option></select></td>' 
				+'      <td class="col-md-2 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>' 
				+'      <input type="hidden" name="param" value="s1"/>' 
                +'	</tr>'; 
                +'</table>'; 
        s1.style.display = ""; 
} 
function addItem_s2() { 
    if(maXnoTh <= s2_noTh)        
    { 
            alert('어학능력은 한번에 한 항목씩만 등록할 수 있습니다.'); 
            return; 
    } 
    s2_noTh = s2_noTh + 1; 
    

    s2.innerHTML=s2.innerHTML 
            +'<table class="table table-hover">' 
            +'	<tr>' 
            +'		<td class="col-md-2"><SELECT class="form-control" Name="languageName" onChange="BuildCats(this.selectedIndex,spec);"><OPTION Value="">------<OPTION Value="영어">영어<OPTION Value="일어">일어<OPTION Value="중국어">중국어</Select></td>' 
            +'      <td class="col-md-2"><SELECT class="form-control" Name="languageExamName"><OPTION Value="">-------</Select></td>' 
            +'      <td class="col-md-2"><div class="input-group"><input type="text" class="form-control" name="languageExamGrade" /><div class="input-group-btn"><SELECT class="form-control" Name="languageExamGradeOption"><OPTION Value="점">점<OPTION Value="급">급</Select></div></div></td>' 
			+'      <td class="col-md-2"><input type="text" class="form-control" name="languageExamOrg" title="예) 한국토익위원회" /></td>' 
			+'      <td class="col-md-2"><select class="form-control" name="publicScope"><option value="전체공개" name="publicScope">전체공개</option><option value="교수공개" name="publicScope">교수공개</option><option value="비공개" name="publicScope">비공개</option></select></td>' 
			+'      <td class="col-md-2 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>' 
			+'      <input type="hidden" name="param" value="s2"/>' 
            +'	</tr>'; 
            +'</table>'; 
    s2.style.display = ""; 
} 
function addItem_s3() { 
    if(maXnoTh <= s3_noTh)        
    { 
            alert('수상실적은 한번에 한 항목씩만 등록할 수 있습니다.'); 
            return; 
    } 
    s3_noTh = s3_noTh + 1; 

     
    s3.innerHTML=s3.innerHTML 
            +'<table class="table table-hover">' 
            +'	<tr>' 
            +'		' 
            +'      <td class="col-md-2"><input type="date" class="form-control" name="awardDate" title="예) 2014.11.15"/></td>' 
            +'      <td class="col-md-4"><input type="text" class="form-control" name="awardSubject" style="width:100%;" title="예) 2014 상상실현창의공모전 최우수상" /></td>' 
			+'      <td class="col-md-2"><input type="text" class="form-control" name="awardOrg" title="예) KT&G"/></td>' 
			+'      <td class="col-md-2"><select name="publicScope" class="form-control"><option value="전체공개" name="publicScope">전체공개</option><option value="교수공개" name="publicScope">교수공개</option><option value="비공개" name="publicScope">비공개</option></select></td>' 
			+'      <td class="col-md-2 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>' 
			+'      <input type="hidden" name="param" value="s3"/>' 
            +'	</tr>'; 
            +'</table>'; 
    s3.style.display = ""; 
} 
function addItem_s4() { 
    if(maXnoTh <= s4_noTh)        
    { 
            alert('교육/연수는 한번에 한 항목씩만 등록할 수 있습니다.'); 
            return; 
    } 
    s4_noTh = s4_noTh + 1; 


    s4.innerHTML=s4.innerHTML 
            +'<table class="table table-hover">' 
            +'	<tr>' 
            +'		' 
            +'      <td class="col-md-2"><input type="text" class="form-control" name="trainingPeriod" title="예) 2014.06 - 2014.09"/></td>' 
            +'      <td class="col-md-4"><input type="text" class="form-control" name="trainingName" style="width:100%;" title="예) 청년취업아카데미 빅데이터 분석 전문가 과정"/></td>' 
			+'      <td class="col-md-2"><input type="text" class="form-control" name="trainingOrg" title="예) 고용노동부"/></td>' 
			+'      <td class="col-md-2"><select name="publicScope"  class="form-control"><option value="전체공개" name="publicScope">전체공개</option><option value="교수공개" name="publicScope">교수공개</option><option value="비공개" name="publicScope">비공개</option></select></td>' 
			+'      <td class="col-md-2 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>'
			+'      <input type="hidden" name="param" value="s4"/>' 
            +'	</tr>'; 
            +'</table>'; 
    s4.style.display = ""; 
}
function addItem_s5() { 
    if(maXnoTh <= s5_noTh)        
    { 
            alert('포트폴리오는 한번에 한 항목씩만 등록할 수 있습니다.'); 
            return; 
    } 
    s5_noTh = s5_noTh + 1; 


    s5.innerHTML=s5.innerHTML 
            +'<table class="table table-hover">' 
            +'	<tr>' 
            +'		' 
            +'      <td class="col-md-2"><input type="text" class="form-control" name="portfolioPeriod" style="width:100%" title="예) 2014.06 - 2014.09"/></td>' 
            +'      <td class="col-md-3"><input type="text" class="form-control" name="portfolioName" style="width:100%" title="예) 개방형 이력관리 시스템 위스펙"/></td>' 
			+'      <td class="col-md-3"><input type="text" class="form-control" name="portfolioLink" style="width:100%" title="예) http://wespec.co.kr"/></td>' 
			+'      <td class="col-md-2"><select name="publicScope" class="form-control"><option value="전체공개" name="publicScope">전체공개</option><option value="교수공개" name="publicScope">교수공개</option><option value="비공개" name="publicScope">비공개</option></select></td>' 
			+'      <td class="col-md-2 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>' 
			+'      <input type="hidden" name="param" value="s5"/>' 
            +'	</tr>'; 
            +'</table>'; 
    s5.style.display = ""; 
}
function addItem_s6() { 
    if(maXnoTh <= s6_noTh)        
    { 
            alert('소프트웨어개발능력은 한번에 한 항목씩만 등록할 수 있습니다.'); 
            return; 
    } 
    s6_noTh = s6_noTh + 1; 


    s6.innerHTML=s6.innerHTML 
            +'<table class="table table-hover">' 
            +'	<tr>' 
            +'		<td class="col-md-2"><input type="text" class="form-control" name="languageName" class="form-control"/></td>' 
            +'      <td class="col-md-2"><select name="languageLevel" class="form-control"><option value="상" name="languageLevel">상</option><option value="중" name="languageLevel">중</option><option value="하" name="languageLevel">하</option></select></td>' 
            +'      <td class="col-md-2"></td>' 
			+'      <td class="col-md-2"></td>' 
			+'      <td class="col-md-2"><select name="publicScope" class="form-control"><option value="전체공개" name="publicScope">전체공개</option><option value="교수공개" name="publicScope">교수공개</option><option value="비공개" name="publicScope">비공개</option></select></td>' 
			+'      <td class="col-md-2 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>' 
			+'      <input type="hidden" name="param" value="s6"/>' 
            +'	</tr>'; 
            +'</table>'; 
    s6.style.display = ""; 
}
function addItem_s7() { 
    if(maXnoTh <= s7_noTh)        
    { 
            alert('학력사항은 한번에 한 항목씩만 등록할 수 있습니다.'); 
            return; 
    } 
    s7_noTh = s7_noTh + 1; 

    
    s7.innerHTML=s7.innerHTML 
            +'<table class="table table-hover">' 
            +'	<tr>' 
            +'		<td class="col-md-2"><input type="text" class="form-control" name="academicPeriod" style="width:100%" title="예) 2011.03 - 2014.02"/></td>' 
            +'      <td class="col-md-2"><input type="text" class="form-control" name="academicName" style="width:100%" title="예) 음성고등학교"/></td>' 
            +'      <td class="col-md-2"><input type="text" class="form-control" name="academicMajor" style="width:100%" title="예) 인문계"/></td>' 
			+'      <td class="col-md-2"><select name="academicState" class="form-control"><option value="졸업" name="academicState">졸업</option><option value="재학" name="academicState">재학</option><option value="중퇴" name="academicState">중퇴</option><option value="휴학" name="academicState">휴학</option></select></td>' 
			+'      <td class="col-md-2"><select name="publicScope" class="form-control"><option value="전체공개" name="publicScope">전체공개</option><option value="교수공개" name="publicScope">교수공개</option><option value="비공개" name="publicScope">비공개</option></select></td>' 
			+'      <td class="col-md-2 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>' 
			+'      <input type="hidden" name="param" value="s7"/>' 
            +'	</tr>'; 
            +'</table>'; 
    s7.style.display = ""; 
}
function addItem_s8() { 
    if(maXnoTh <= s8_noTh)        
    { 
            alert('병역 항목은 한번에 한 항목씩만 등록할 수 있습니다.'); 
            return; 
    } 
    s8_noTh = s8_noTh + 1; 


    s8.innerHTML=s8.innerHTML 
            +'<table class="table table-hover">' 
            +'	<tr>' 
            +'		<td class="col-md-2"><input type="text" class="form-control" name="militaryPeriod" style="width:100%" title="예) 2012.06.22 - 2014.06.21"/></td>' 
            +'      <td class="col-md-2"><input type="text" class="form-control" name="militaryGroup" title="예) 육군"/></td>' 
            +'      <td class="col-md-2"><input type="text" class="form-control" name="militaryRank" title="예) 병장"/></td>' 
			+'      <td class="col-md-2"><input type="text" class="form-control" name="militaryWork" title="예) 보병"/></td>' 
			+'      <td class="col-md-2"><select name="publicScope" class="form-control"><option value="전체공개" name="publicScope">전체공개</option><option value="교수공개" name="publicScope">교수공개</option><option value="비공개" name="publicScope">비공개</option></select></td>' 
			+'      <td class="col-md-2 text-right"><button title="항목삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>' 
			+'      <input type="hidden" name="param" value="s8"/>' 
            +'	</tr>'; 
            +'</table>'; 
    s8.style.display = ""; 
}

