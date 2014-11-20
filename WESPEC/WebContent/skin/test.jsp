<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/common/common.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/head.jsp" flush="false" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>툴팁(Tooltip)</title>
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

    <style type="text/css">
        *{
            margin:0;
            padding:0;
            list-style-type:none;
            font-family:'malgun gothic';
}
        body{
            background-color:#222;
            color:#fff;
            padding:30px 20px 20px 30px; /*상 우 하 좌*/
            line-height: 1.4; 
        }
        ul {
            font-size:3em;
            font-weight:bold;
            overflow:hidden; /* clear float*/
            *zoom:1; /* ie clear float */
        }
            ul li{
                padding:5px 12px; /*상하 좌우*/
                float:left;
                margin:0 10px 10px 0;
                background: #777;
                color:#333;
            }
        .balloon {
            background: #fff;
            color: #333;
            padding: 10px;
            position:absolute;
            display:none;
}
    </style>
    <script type="text/javascript">
        $(function(){
            //풍선 도움말의 div 요소를 준비 
            var balloon = $('<div class="balloon"></div>').appendTo('body');

            //풍선 도움말의 위치를 업데이트하는 함수
            function updateBalloonPosition(x, y) {
                balloon.css({ left: x + 15, top: y });
            }

            //풍선 도움말을 표시하는 함수 
            function showBalloon() {
                balloon.stop(); //이미 애니메이션 중인 경우, 중지
                balloon.css('opacity', 0).show(); //투명한 상태로 표시
                balloon.animate({opacity: 1}, 200); //0.2초 후에 투명도를 1로
            }

            //풍선 도움말을 숨기는 함수
            function hideBalloon() {
                balloon.stop(); //이미 애니메이션 중인 경우, 중지 
                balloon.animate (
                    { opacity: 0}, 200, //0.2초 후에 투명하게 
                    function() {balloon.hide();} //끝나면 숨김
                    )
            }

            //클래스 showBalloon가 있는 요소에 대해 풍선 도움말 표시 작업을 수행
            $('.showBalloon').each(function() {
                var element = $(this);

                //title 속성 값으로 지정된 값을 풍선 도움말의 텍스트로 사용
                var text = element.attr('title');

                //title속성값을 비워 브라우저 디폴트 풍선 도움말을 표시하지 않도록 한다. 
                element.attr('title', '');

                //mouseenter, mouseleave 이벤트를 설정
                element.hover(function(event) {
                    
                    //console.log("[x="+event.pageX+",y="+event.pageY+"]");

                    //풍선 도움말의 텍스트 업데이트
                    balloon.text(text);
                    //커서 위치에서 풍선 도움말의 위치를 업데이트
                    updateBalloonPosition(event.pageX, event.pageY);
                    //풍선 도움말을 표시
                    //balloon.show();
                    //showBalloon();
                    balloon.fadeIn();
                }, function() {
                    //풍선 도움말을 숨기기 
                    //balloon.hide();
                    //hideBalloon();
                    balloon.fadeOut();
                    
                })

                //mousemove이벤트를 설정
                element.mousemove(function(event) {
                    //커서 위치에서 풍선 도움말의 위치를 업데이트 
                    updateBalloonPosition(event.pageX, event.pageY);

                    //console.log("[x="+event.pageX+",y="+event.pageY+"]");
                });

            });
        });
    </script>
</head>
<body>
    
    <ul>
        <li class="showBalloon" title="하이퍼텍스트 문서를 기술하기위한 언어입니다.">HTML</li>
        <li class="showBalloon" title="HTML요소를 어떻게 표시할까를 지정하는 사양입니다.">CSS</li>
        <li class="showBalloon" title="웹사이트에서 널리 이용되고 있는 스크립트 언어입니다.">JavaScript</li>
    </ul>

</body>
</html>