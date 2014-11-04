<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


<script> 
var noTh = 0; 
var maXnoTh = 20; 

function addItem_s1() { 
        if(maXnoTh <= noTh)        
        { 
                alert('더이상 추가하실수 없습니다.'); 
                return; 
        } 
        noTh = noTh + 1; 


        layer1.innerHTML=layer1.innerHTML 
                +'<table border=0 cellpadding=0 cellspacing=1 bgcolor=#cccccc width=100% height=30>' 
                +'        <tr>' 
                +'                  <td bgcolor=#ffffff class=basic width=16% align=center><input name=rg_ext20[] type=text class=basic size=20></td>' 
                +'                  <td bgcolor=#ffffff class=basic width=16% align=center><input name=rg_ext21[] type=text class=basic size=20></td>' 
                +'                  <td bgcolor=#ffffff class=basic width=16% align=center><input name=rg_ext22[] type=text class=basic size=20></td>' 
+'                  <td bgcolor=#ffffff class=basic width=16% align=center><input name=rg_ext23[] type=text class=basic size=20></td>' 
+'                  <td bgcolor=#ffffff class=basic width=16% align=center><input name=rg_ext24[] type=text class=basic size=20></td>' 
+'                  <td bgcolor=#ffffff class=basic  align=center><input name=rg_ext25[] type=text class=basic size=20></td>' 
                +'        </tr>'; 
                +'</table>'; 
        layer1.style.display = ""; 
} 

</script>



<div id="layer1"> 
<table border="0" cellpadding="0" cellspacing="1" bgcolor="#cccccc" width="100%" height="30"><tr> 
        <td bgcolor="#ffffff" class="basic" width="16%" align="center"><input name="rg_ext20[]" type="text" class="basic" size="20" value='<?=$rg_ext20?>' required itemname='항목'></td> 
        <td bgcolor="#ffffff"  class="basic"  width="16%"  align="center"><input name="rg_ext21[]" type="text" class="basic" size="20" value='<?=$rg_ext21?>' required itemname='항목'></td> 
        <td bgcolor="#ffffff"  class="basic"  width="16%"  align="center"><input name="rg_ext22[]" type="text" class="basic" size="20" value='<?=$rg_ext22?>' required itemname='항목'></td> 
        <td  bgcolor="#ffffff"  class="basic"  width="16%"  align="center"><input name="rg_ext23[]" type="text" class="basic" size="20" value='<?=$rg_ext23?>' required itemname='항목'></td> 
        <td  bgcolor="#ffffff"  class="basic"  width="16%"  align="center"><input name="rg_ext24[]" type="text" class="basic" size="20" value='<?=$rg_ext24?>' required itemname='항목'></td> 
        <td  bgcolor="#ffffff"  class="basic"  align="center"><input name="rg_ext25[]" type="text" class="basic" size="20" value='<?=$rg_ext25?>' required itemname='항목'></td> 
</tr></table> 
</div> 




<input type=button value='항목 추가' onclick="addItem()">


</body>
</html>