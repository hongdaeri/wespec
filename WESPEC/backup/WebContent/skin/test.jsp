<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<SCRIPT language="JavaScript">


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
function BuildCats(num)
{

	//해당 채널의 서브 카테고리 배열 길이만큼 반복
	for(i=0;i<Cats[num].length;i++)
	{
		//카테고리에 해당하는 콤보박스의 값을 채움
		this.form.languageExamName.options[i]=new Option(Cats[num][i],Cats[num][i]);
		
	}
	//select 리스트 길이 지정
	this.form.languageExamName.length=Cats[num].length;
}
<div class="form-group"><div class="input-group"><span><SELECT class="form-control" Name="languageExamGradeOption"><OPTION Value="점">점<OPTION Value="급">급</Select></span></div>
<div class="row">
	<div class="col-lg-6">
  		<div class="input-group">
  			<input type="text" class="form-control" name="languageExamGrade" />
    		<div class="input-group-btn">
	      		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Action <span class="caret"></span></button>
	      		<ul class="dropdown-menu dropdown-menu-right" role="menu">
	        		<li><a href="#">Action</a></li>
	       			<li><a href="#">Another action</a></li>
			        <li><a href="#">Something else here</a></li>
			        <li class="divider"></li>
			        <li><a href="#">Separated link</a></li>
	      		</ul>
    		</div>
  		</div>
	</div>
</div>