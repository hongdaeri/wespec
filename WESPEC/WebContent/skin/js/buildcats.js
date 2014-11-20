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





