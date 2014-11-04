var noTh = 0; 
var maXnoTh = 20; 

function addItem_s1() { 
        if(maXnoTh <= noTh)        
        { 
                alert('더이상 추가하실수 없습니다.'); 
                return; 
        } 
        noTh = noTh + 1; 


        s1.innerHTML=s1.innerHTML 
                +'<table class="table table-hover">' 
                +'	<tr>' 
                +'		<td class="col-md-2"><input type="text" name="certificateDate" /></td>' 
                +'      <td class="col-md-2"><input type="text" name="certificateName" /></td>' 
                +'      <td class="col-md-2"><input type="text" name="certificateGrade" /></td>' 
				+'      <td class="col-md-2"><input type="text" name="certificateOrganization" /></td>' 
				+'      <td class="col-md-2"><select name="publicScope"><option value="1" name="publicScope">전체공개</option><option value="2" name="publicScope">교수공개</option><option value="3" name="publicScope">비공개</option></select></td>' 
				+'      <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>' 
				+'      <input type="hidden" name="param" value="s1"/>' 
                +'	</tr>'; 
                +'</table>'; 
        s1.style.display = ""; 
} 
function addItem_s2() { 
    if(maXnoTh <= noTh)        
    { 
            alert('더이상 추가하실수 없습니다.'); 
            return; 
    } 
    noTh = noTh + 1; 


    s2.innerHTML=s2.innerHTML 
            +'<table class="table table-hover">' 
            +'	<tr>' 
            +'		<td class="col-md-2"><input type="text" name="language" /></td>' 
            +'      <td class="col-md-2"><input type="text" name="languageExamName" /></td>' 
            +'      <td class="col-md-2"><input type="text" name="languageExamGrade" /></td>' 
			+'      <td class="col-md-2"><input type="text" name="languageExamOrganization" /></td>' 
			+'      <td class="col-md-2"><select name="publicScope"><option value="1" name="publicScope">전체공개</option><option value="2" name="publicScope">교수공개</option><option value="3" name="publicScope">비공개</option></select></td>' 
			+'      <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>' 
			+'      <input type="hidden" name="param" value="s2"/>' 
            +'	</tr>'; 
            +'</table>'; 
    s2.style.display = ""; 
} 
function addItem_s3() { 
    if(maXnoTh <= noTh)        
    { 
            alert('더이상 추가하실수 없습니다.'); 
            return; 
    } 
    noTh = noTh + 1; 


    s3.innerHTML=s3.innerHTML 
            +'<table class="table table-hover">' 
            +'	<tr>' 
            +'		' 
            +'      <td class="col-md-2"><input type="text" name="awardDate" /></td>' 
            +'      <td class="col-md-4"><input type="text" name="awardSubject" /></td>' 
			+'      <td class="col-md-2"><input type="text" name="awardOrganization" /></td>' 
			+'      <td class="col-md-2"><select name="publicScope"><option value="1" name="publicScope">전체공개</option><option value="2" name="publicScope">교수공개</option><option value="3" name="publicScope">비공개</option></select></td>' 
			+'      <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>' 
			+'      <input type="hidden" name="param" value="s3"/>' 
            +'	</tr>'; 
            +'</table>'; 
    s3.style.display = ""; 
} 
function addItem_s4() { 
    if(maXnoTh <= noTh)        
    { 
            alert('더이상 추가하실수 없습니다.'); 
            return; 
    } 
    noTh = noTh + 1; 


    s4.innerHTML=s4.innerHTML 
            +'<table class="table table-hover">' 
            +'	<tr>' 
            +'		' 
            +'      <td class="col-md-2"><input type="text" name="trainingPeriod" /></td>' 
            +'      <td class="col-md-4"><input type="text" name="trainingName" /></td>' 
			+'      <td class="col-md-2"><input type="text" name="trainingOrganization" /></td>' 
			+'      <td class="col-md-2"><select name="publicScope"><option value="1" name="publicScope">전체공개</option><option value="2" name="publicScope">교수공개</option><option value="3" name="publicScope">비공개</option></select></td>' 
			+'      <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>'
			+'      <input type="hidden" name="param" value="s4"/>' 
            +'	</tr>'; 
            +'</table>'; 
    s4.style.display = ""; 
}
function addItem_s5() { 
    if(maXnoTh <= noTh)        
    { 
            alert('더이상 추가하실수 없습니다.'); 
            return; 
    } 
    noTh = noTh + 1; 


    s5.innerHTML=s5.innerHTML 
            +'<table class="table table-hover">' 
            +'	<tr>' 
            +'		' 
            +'      <td class="col-md-2"><input type="text" name="portfolioPeriod" /></td>' 
            +'      <td class="col-md-3"><input type="text" name="portfolioName" /></td>' 
			+'      <td class="col-md-3"><input type="text" name="portfolioLink" /></td>' 
			+'      <td class="col-md-2"><select name="publicScope"><option value="1" name="publicScope">전체공개</option><option value="2" name="publicScope">교수공개</option><option value="3" name="publicScope">비공개</option></select></td>' 
			+'      <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>' 
			+'      <input type="hidden" name="param" value="s5"/>' 
            +'	</tr>'; 
            +'</table>'; 
    s5.style.display = ""; 
}
function addItem_s6() { 
    if(maXnoTh <= noTh)        
    { 
            alert('더이상 추가하실수 없습니다.'); 
            return; 
    } 
    noTh = noTh + 1; 


    s6.innerHTML=s6.innerHTML 
            +'<table class="table table-hover">' 
            +'	<tr>' 
            +'		<td class="col-md-2"><input type="text" name="languageName" /></td>' 
            +'      <td class="col-md-2"><select name="languageLevel"><option value="상" name="languageLevel">상</option><option value="중" name="languageLevel">중</option><option value="하" name="languageLevel">하</option></select></td>' 
            +'      <td class="col-md-2"></td>' 
			+'      <td class="col-md-2"></td>' 
			+'      <td class="col-md-2"><select name="publicScope"><option value="1" name="publicScope">전체공개</option><option value="2" name="publicScope">교수공개</option><option value="3" name="publicScope">비공개</option></select></td>' 
			+'      <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>' 
			+'      <input type="hidden" name="param" value="s6"/>' 
            +'	</tr>'; 
            +'</table>'; 
    s6.style.display = ""; 
}
function addItem_s7() { 
    if(maXnoTh <= noTh)        
    { 
            alert('더이상 추가하실수 없습니다.'); 
            return; 
    } 
    noTh = noTh + 1; 


    s7.innerHTML=s7.innerHTML 
            +'<table class="table table-hover">' 
            +'	<tr>' 
            +'		<td class="col-md-2"><input type="text" name="academicPeriod" /></td>' 
            +'      <td class="col-md-2"><input type="text" name="academicName" /></td>' 
            +'      <td class="col-md-2"><input type="text" name="academicMajor" /></td>' 
			+'      <td class="col-md-2"><select name="academicState"><option value="졸업" name="academicState">졸업</option><option value="재학" name="academicState">재학</option><option value="휴학" name="academicState">휴학</option><option value="중퇴" name="academicState">중퇴</option></select></td>' 
			+'      <td class="col-md-2"><select name="publicScope"><option value="1" name="publicScope">전체공개</option><option value="2" name="publicScope">교수공개</option><option value="3" name="publicScope">비공개</option></select></td>' 
			+'      <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>' 
			+'      <input type="hidden" name="param" value="s7"/>' 
            +'	</tr>'; 
            +'</table>'; 
    s7.style.display = ""; 
}
function addItem_s8() { 
    if(maXnoTh <= noTh)        
    { 
            alert('더이상 추가하실수 없습니다.'); 
            return; 
    } 
    noTh = noTh + 1; 


    s8.innerHTML=s8.innerHTML 
            +'<table class="table table-hover">' 
            +'	<tr>' 
            +'		<td class="col-md-2"><input type="text" name="militaryPeriod" /></td>' 
            +'      <td class="col-md-2"><input type="text" name="militaryGroup" /></td>' 
            +'      <td class="col-md-2"><input type="text" name="militaryRank" /></td>' 
			+'      <td class="col-md-2"><input type="text" name="militaryWork" /></td>' 
			+'      <td class="col-md-2"><select name="publicScope"><option value="1" name="publicScope">전체공개</option><option value="2" name="publicScope">교수공개</option><option value="3" name="publicScope">비공개</option></select></td>' 
			+'      <td class="col-md-2 text-right"><button title="항목 삭제" type="button" class="btn btn-primary btn-xs" onClick="submit()">등록</button></td>' 
			+'      <input type="hidden" name="param" value="s8"/>' 
            +'	</tr>'; 
            +'</table>'; 
    s8.style.display = ""; 
}