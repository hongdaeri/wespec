<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>    
<%@ include file="/common/common.jsp" %>

<!DOCTYPE html>
<html lang="kr">
  <head>
    <meta charset="euc-kr">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>WESPEC in Software</title>

    <!-- Bootstrap -->
    <link href="<%=skinPath %>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=skinPath %>/css/style.css" rel="stylesheet" media="screen">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- css -->
	<link rel="stylesheet" href="<%=skinPath %>/css/style.css" />
	    
	<!-- js -->
	<script src="<%=skinPath %>/js/wespec.js"></script>
	<script src="<%=skinPath %>/js/jquery-1.9.1.min.js"></script>
	<script src="<%=skinPath %>/js/modernizr.js"></script>
	
	<%-- jquery.circularise --%>
	<script src="<%=skinPath %>/js/jquery.circularise.js"></script>
	
	
	<script>
	//이미지 롤오버 스크립트 
	$(document).ready(function(){
	    if (Modernizr.touch) {
	        // show the close overlay button
	        $(".close-overlay").removeClass("hidden");
	        // handle the adding of hover class when clicked
	        $(".img").click(function(e){
	            if (!$(this).hasClass("hover")) {
	                $(this).addClass("hover");
	            }
	        });
	        // handle the closing of the overlay
	        $(".close-overlay").click(function(e){
	            e.preventDefault();
	            e.stopPropagation();
	            if ($(this).closest(".img").hasClass("hover")) {
	                $(this).closest(".img").removeClass("hover");
	            }
	        });
	    } else {
	        // handle the mouseenter functionality
	        $(".img").mouseenter(function(){
	            $(this).addClass("hover");
	        })
	        // handle the mouseleave functionality
	        .mouseleave(function(){
	            $(this).removeClass("hover");
	        });
	    }
	});
	</script>
	
</head>