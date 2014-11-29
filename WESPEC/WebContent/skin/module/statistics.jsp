<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/common/common.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import ="model.vo.Statistics" %><jsp:include page="/head.jsp" flush="false" />
<%
	Statistics statis = (Statistics)request.getAttribute("statistics");

%>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<script src="<%=skinPath%>/js/chart/Chart.min.js"></script>

<style>
.panel-body2 { padding:20px 10px 0px;}
.panel-body3 { text-align:center;}
.hero-widget { text-align: center; padding-top: 10px; padding-bottom: 10px; }
.hero-widget .icon { display: block; font-size: 60px; line-height: 60px; margin-bottom: 10px; text-align: center; }
.hero-widget var { display: block; height: 64px; font-size: 40px; line-height: 64px; font-style: normal; }
.hero-widget label { font-size: 17px; }
.hero-widget .options { margin-top: 10px; }

.row{
    padding: 0 10px;
}

.clickable{
    cursor: pointer;   
}

.panel-heading span {
	margin-top: -20px;
	font-size: 15px;
}

.rank_table {
	text-align:center; 
	width:100%; 
	padding:0; 
	margin:0;
}
.rank-img { max-height:70px; max-width:70px; }

<!--sortable table -->

table.sortable span.sign {
    display: block;
    position: absolute;
    top: 50%;
    right: 5px;
    font-size: 12px;
    margin-top: -10px;
    color: #bfbfc1;
}

table.sortable span.arrow, span.reversed {
    border-style: solid;
    border-width: 5px;
    font-size: 0;
    border-color: #ccc transparent transparent transparent;
    line-height: 0;
    height: 0;
    width: 0;
    margin-top: -2px;
}

    table.sortable span.arrow.up {
        border-color: transparent transparent #ccc transparent;
        margin-top: -7px;
    }

table.sortable span.reversed {
    border-color: transparent transparent #ccc transparent;
    margin-top: -7px;
}

    table.sortable span.reversed.up {
        border-color: #ccc transparent transparent transparent;
        margin-top: -2px;
    }



table.sortable span.az:before {
    content: "a .. z";
}

table.sortable span.az.up:before {
    content: "z .. a";
}

table.sortable span.AZ:before {
    content: "A .. Z";
}

table.sortable span.AZ.up:before {
    content: "Z .. A";
}

table.sortable span._19:before {
    content: "1 .. 9";
}

table.sortable span._19.up:before {
    content: "9 .. 1";
}

table.sortable span.month:before {
    content: "jan .. dec";
}

table.sortable span.month.up:before {
    content: "dec .. jan";
}

table.sortable thead th:not([data-defaultsort=disabled]) {
    cursor: pointer;
    position: relative;
    top: 0;
    left: 0;
}

table.sortable thead th:hover:not([data-defaultsort=disabled]) {
    background: #efefef;
}

table.sortable thead th div.mozilla {
    position: relative;
}
</style>
<div class="row">
	<div class="col-md-12">
		<div class="well">
			<h2>위스펙 통계 서비스</h2>
			<p>
		      	본 서비스는 위스펙에 이력등록 이력이 있는 학생의 자료를 토대로 산출됩니다.
		      	어학능력의 경우, 토익에 한정되며 
	      	</p>
	      	<div class="row">
		      	<div class="col-md-2 col-sm-4 col-xs-4">
			   		<div class="hero-widget well well-sm">
						<div class="icon"><i class="glyphicon glyphicon-user"></i></div>
	               		<div class="text">
	                   		<var>${statistics.totalStudentCount}</var>
	                   		<h4><span class="label label-success">전체 가입 학생수</span></h4>
	               		</div>	               		
			        </div>
				</div>
			    <div class="col-md-2 col-sm-4 col-xs-4">
			   		<div class="hero-widget well well-sm">
						<div class="icon"><i class="glyphicon glyphicon-plus"></i></div>
	               		<div class="text">
	                   		<var>${statistics.totalSpecRegCount}</var>
	                   		<h4><span class="label label-primary">이력 등록 학생수</span></h4>
	               		</div>	               		
			        </div>
				</div>
			    <div class="col-md-2 col-sm-4 col-xs-4">
			   		<div class="hero-widget well well-sm">
						<div class="icon"><i class="glyphicon glyphicon-cog"></i></div>
	               		<div class="text">
	                   		<var>${statistics.totalRegRatio}%</var>
	                   		<h4><span class="label label-danger">이력 등록률</span></h4>
	               		</div>	               		
			        </div>
				</div>
			    <div class="col-md-2 col-sm-4 col-xs-4">
			   		<div class="hero-widget well well-sm">
						<div class="icon"><i class="glyphicon glyphicon-heart-empty"></i></div>
	               		<div class="text">
	                   		<var>${statistics.totalStudentCount}</var>
	                   		<h4><span class="label label-warning">전체 이력 항목수</span></h4>
	               		</div>	               		
			        </div>
				</div>
			    <div class="col-md-2 col-sm-4 col-xs-4">
			   		<div class="hero-widget well well-sm">
						<div class="icon"><i class="glyphicon glyphicon-heart-empty"></i></div>
	               		<div class="text">
	                   		<var>${statistics.totalStudentCount}</var>
	                   		<h4><span class="label label-default">전체 이력 항목수</span></h4>
	               		</div>	               		
			        </div>
				</div>
			    <div class="col-md-2 col-sm-4 col-xs-4">
			   		<div class="hero-widget well well-sm">
						<div class="icon"><i class="glyphicon glyphicon-heart-empty"></i></div>
	               		<div class="text">
	                   		<var>${statistics.totalStudentCount}</var>
	                   		<h4><span class="label label-info">전체 이력 항목수</span></h4>
	               		</div>	               		
			        </div>
				</div>				
			</div>
   		</div> 
   	</div> 
</div>
<div class="row">
	<div class="col-md-12"> <!--  어학능력 통계 PANEL BEGIN -->
		<div class="panel panel-primary">
			<div class="panel-heading progress-bar-striped">
				<h2 class="panel-title">어학능력 통계</h2>
				<span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
			</div>
			<div class="panel-body">
				<p align="right">토익 등록 학생수 : ${statistics.totalRegStudentCount_toeic}</p>	
           		<div class="row">
                	<div class="col-md-4">
                  		<div class="row">
		                    <div class="col-md-12">
		                    	<div class="panel panel-default">
								  <div class="panel-heading">평균 토익점수</div>
								  <div class="panel-body2">						    	 
									<div class="progress">
									  	<div class="progress-bar progress-bar-primary progress-bar-striped" role="progressbar" aria-valuenow="${statistics.avgToeicScore}" aria-valuemin="0" aria-valuemax="990" style="width: <%=(int)(statis.getAvgToeicScore() / 990.0 * 100.0)%>%;">
									    	${statistics.avgToeicScore}점 
									  </div>
									</div>								
								  </div>
								</div>														
							</div>
							
							 <div class="col-md-12">
		                    	<div class="panel panel-default">
								  <div class="panel-heading">최고 토익점수</div>
								  <div class="panel-body2">						    	 
									<div class="progress">
									  	<div class="progress-bar progress-bar-primary progress-bar-striped" role="progressbar" aria-valuenow="${statistics.topmostToeicScore}" aria-valuemin="0" aria-valuemax="990" style="width: <%=(int)(statis.getTopmostToeicScore() / 990.0 * 100.0)%>%;">
									    ${statistics.topmostToeicScore}점 
									  </div>
									</div>									
								  </div>
								</div>														
							</div>           
                  		</div>
                  		<div class="row">
                    		<div class="col-md-12">
	                   			<div class="panel panel-default">
									<div class="panel-heading">토익점수 우수학생</div>							
							    	<ul class="list-group">
<%
									for(int i=0; i<statis.getToeicKingId().size(); i++)
									{
%>
			                        	<li class="list-group-item">
			                        		<table class="rank_table">
			                        			<tr>
			                        				<td id="rank" class="col-xs-2"><%=rankName[i]%></td>
			                        				<td id="img"><img class="rank-img img-circle" src="<%=request.getContextPath()%>/<%=statis.getToeicKingPhoto().get(i)%>"></td>
			                        				<td id="name"><%=statis.getToeicKingName().get(i)%></td>
			                        				<td id="score"><%=statis.getToeicKingScore().get(i)%>점</td>
			                        			</tr>
			                        		</table>			                        		
			                        	</li>
<%
									}
%>			                        	
			                      	</ul>
								</div>								
                    		</div>
                  		</div>
                	</div>
           
               		<div class="col-md-8"><!--  right row -->        
               			<div class="panel panel-default">
							<div class="panel-heading">토익 점수대별 학생 도표</div>
							<div class="panel-body">
						    	<div style="margin-top:10px">
									<p class="text-left">(학생수)</p>
									<canvas id="canvas" height="450" width="600"></canvas>
								</div>
								<script type="text/javascript">															
									$(function() {
										var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
										var months = ["100점대","200점대","300점대","400점대","500점대","600점대","700점대", "800점대", "900점대"];
										var barChart = null;
										var barChartData = {
											labels : ["100점대","200점대","300점대","400점대","500점대","600점대","700점대", "800점대", "900점대"],
											datasets : [								
												{
													fillColor : "rgba(66,139,202,0.8)",
													strokeColor : "rgba(151,187,205,0.8)",
													highlightFill : "rgba(94,156,210,0.4)",
													highlightStroke : "rgba(151,187,205,1)",
													data : [<%=statis.getDistributionMap_toeic().get(0) %>,<%=statis.getDistributionMap_toeic().get(1) %>,<%=statis.getDistributionMap_toeic().get(2) %>,<%=statis.getDistributionMap_toeic().get(3) %>,<%=statis.getDistributionMap_toeic().get(4) %>,<%=statis.getDistributionMap_toeic().get(5) %>,<%=statis.getDistributionMap_toeic().get(6) %>,<%=statis.getDistributionMap_toeic().get(7) %>,<%=statis.getDistributionMap_toeic().get(8)%>]
												}
											]
								
										};	
										var ctx = document.getElementById("canvas").getContext("2d");
										barChart = new Chart(ctx).Bar(barChartData, {
											//Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
											scaleBeginAtZero : true,
											//Boolean - Whether grid lines are shown across the chart
											scaleShowGridLines : true,
											//String - Colour of the grid lines
											scaleGridLineColor : "rgba(0,0,0,0.05)",
											//Number - Width of the grid lines
											scaleGridLineWidth : 1,
											//Boolean - If there is a stroke on each bar
											barShowStroke : false,
											//Number - Pixel width of the bar stroke
											barStrokeWidth : 2,
											//Number - Spacing between each of the X value sets
											barValueSpacing : 5,
											//Number - Spacing between data sets within X values
											barDatasetSpacing : 1,
											onAnimationProgress: function() {
												console.log("onAnimationProgress");
											},
											onAnimationComplete: function() {
												console.log("onAnimationComplete");
											}
										});
									});								
							
									$("canvas").on("click", function(e) {
										var activeBars = barChart.getBarsAtEvent(e);
										console.log(activeBars);
							
										for(var i in activeBars) {
											console.log(activeBars[i].value);
										}
									});							
								</script>									
							</div>
						</div>
					</div>
				</div>  <!--  right_graph_end -->
			</div>
    	</div>
	</div>  <!--  어학능력 통계 PANEL END -->
	
	<div class="col-md-12"> <!--  자격증 통계 PANEL BEGIN -->
		<div class="panel panel-success">
			<div class="panel-heading progress-bar-striped">
				<h2 class="panel-title">자격증 통계</h2>
				<span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
			</div>
			<div class="panel-body">				
           		<div class="row">
                	<div class="col-md-4">
                  		<div class="row">
		                    <div class="col-md-12">
		                    	<div class="panel panel-default">
								  <div class="panel-heading">평균 자격증 갯수</div>
								  <div class="panel-body3">						    	 
									<h3>${statistics.avgCertificateCount}개</h3>								
								  </div>
								</div>														
							</div>
							
							 <div class="col-md-12">
		                    	<div class="panel panel-default">
								  <div class="panel-heading">자격증 보유 학생수</div>
								  <div class="panel-body2">						    	 
									<div class="progress">
									  	<div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="${statistics.topmostToeicScore}" aria-valuemin="0" aria-valuemax="${statistics.totalSpecRegCount}" style="width: <%=(int)(statis.getTotalRegStudentCount_certificate() / statis.getTotalSpecRegCount() * 100.0)%>%;">
									    ${statistics.totalRegStudentCount_certificate}명 (<%=(int)(statis.getTotalRegStudentCount_certificate() / statis.getTotalSpecRegCount() * 100.0)%>%)
									  </div>
									</div>								
								  </div>
								</div>														
							</div>           
                  		</div>
                  		<div class="row">
                    		<div class="col-md-12">
	                   			<div class="panel panel-default">
									<div class="panel-heading">자격증 보유 우수학생</div>							
							    	<ul class="list-group">
<%
									for(int i=0; i<statis.getCertificateKingId().size(); i++)
									{
%>
			                        	<li class="list-group-item">
			                        		<table class="rank_table">
			                        			<tr>
			                        				<td id="rank" class="col-xs-2"><%=rankName[i]%></td>
			                        				<td id="img"><img class="rank-img img-circle" src="<%=request.getContextPath()%>/<%=statis.getCertificateKingPhoto().get(i)%>"></td>
			                        				<td id="name"><%=statis.getCertificateKingName().get(i)%></td>
			                        				<td id="score"><%=statis.getCertificateKingCount().get(i)%>개</td>
			                        			</tr>
			                        		</table>			                        		
			                        	</li>
<%
									}
%>			                        	
			                      	</ul>
								</div>								
                    		</div>
                  		</div>
                	</div>
               		<div class="col-md-8"><!--  right row -->        
               			<div class="panel panel-default">
							<div class="panel-heading">자격증 보유 갯수별 학생 도표</div>
							<div class="panel-body">
						    	<div style="margin-top:10px">
									<p class="text-left">(학생수)</p>
									<canvas id="canvas2" height="450" width="650"></canvas>
								</div>
								<script type="text/javascript">														
									$(function() {
										var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
										var months = ["1개보유","2개보유","3개보유","4개보유","5개보유","6개보유","7개보유","8개보유","9개보유","10개이상"];
										var barChart = null;
										var barChartData = {
											labels : ["1개보유","2개보유","3개보유","4개보유","5개보유","6개보유","7개보유","8개보유","9개보유","10개이상"],
											datasets : [								
												{
													fillColor : "rgba(223,240,216,0.9)",
													strokeColor : "rgba(151,187,205,0.8)",
													highlightFill : "rgba(123,240,216,0.4)",
													highlightStroke : "rgba(151,187,205,1)",
													data : [
													        <%
													        	for(int i=0; i<statis.getDistributionMap_certi().size()-1; i++)
													        	{
													        		out.println(statis.getDistributionMap_certi().get(i) + ",");
													        	}
													        	out.println(statis.getDistributionMap_certi().get(9));
													        %>
													]
												}
											]
								
										};
										var ctx = document.getElementById("canvas2").getContext("2d");
										barChart = new Chart(ctx).Bar(barChartData, {
											//Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
											scaleBeginAtZero : false,
											//Boolean - Whether grid lines are shown across the chart
											scaleShowGridLines : true,
											//String - Colour of the grid lines
											scaleGridLineColor : "rgba(0,0,0,0.05)",
											//Number - Width of the grid lines
											scaleGridLineWidth : 1,
											//Boolean - If there is a stroke on each bar
											barShowStroke : false,
											//Number - Pixel width of the bar stroke
											barStrokeWidth : 2,
											//Number - Spacing between each of the X value sets
											barValueSpacing : 5,
											//Number - Spacing between data sets within X values
											barDatasetSpacing : 1,
											onAnimationProgress: function() {
												console.log("onAnimationProgress");
											},
											onAnimationComplete: function() {
												console.log("onAnimationComplete");
											}
										});
									});								
							
									$("canvas2").on("click", function(e) {
										var activeBars = barChart.getBarsAtEvent(e);
										console.log(activeBars);
							
										for(var i in activeBars) {
											console.log(activeBars[i].value);
										}
									});							
								</script>							
							</div>
						</div>
					</div>
				</div>  <!--  right_graph_end -->
			</div>
    	</div>
	</div>  <!--  자격증 통계 PANEL END -->
	
	<div class="col-md-12"> <!--  수상실적 통계 PANEL BEGIN -->
		<div class="panel panel-info">
			<div class="panel-heading progress-bar-striped">
				<h2 class="panel-title">수상실적 통계</h2>
				<span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
			</div>
			<div class="panel-body">				
           		<div class="row">
                	<div class="col-md-4">
                  		<div class="row">
		                    <div class="col-md-12">
		                    	<div class="panel panel-default">
								  <div class="panel-heading">평균 수상 횟수</div>
								  <div class="panel-body3">						    	 
									<h3>${statistics.avgAwardCount}회</h3>								
								  </div>
								</div>														
							</div>
							
							 <div class="col-md-12">
		                    	<div class="panel panel-default">
								  <div class="panel-heading">수상실적 보유 학생수</div>
								  <div class="panel-body2">						    	 
									<div class="progress">
									  	<div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="200" aria-valuemin="0" aria-valuemax="${statistics.totalSpecRegCount}" style="width: <%=(int)(statis.getTotalRegStudentCount_award() / (double)statis.getTotalSpecRegCount() * 100.0)%>%;">
									    ${statistics.totalRegStudentCount_award}명 (<%=(int)(statis.getTotalRegStudentCount_award() / (double)statis.getTotalSpecRegCount() * 100.0)%>%)
									  </div>
									</div>								
								  </div>
								</div>														
							</div>           
                  		</div>
                  		<div class="row">
                    		<div class="col-md-12">
	                   			<div class="panel panel-default">
									<div class="panel-heading">수상실적 보유 우수학생</div>							
							    	<ul class="list-group">
<%
									for(int i=0; i<statis.getAwardKingId().size(); i++)
									{
%>
			                        	<li class="list-group-item">
			                        		<table class="rank_table">
			                        			<tr>
			                        				<td id="rank" class="col-xs-2"><%=rankName[i]%></td>
			                        				<td id="img"><img class="rank-img img-circle" src="<%=request.getContextPath()%>/<%=statis.getAwardKingPhoto().get(i)%>"></td>
			                        				<td id="name"><%=statis.getAwardKingName().get(i)%></td>
			                        				<td id="score"><%=statis.getAwardKingCount().get(i)%>회</td>
			                        			</tr>
			                        		</table>			                        		
			                        	</li>
<%
									}
%>			                        	
			                      	</ul>
								</div>								
                    		</div>
                  		</div>
                	</div>
               		<div class="col-md-8"><!--  right row -->        
               			<div class="panel panel-default">
							<div class="panel-heading">자격증 보유 갯수별 학생 도표</div>
							<div class="panel-body">
						    	<div style="margin-top:10px">
									<p class="text-left">(학생수)</p>
									<canvas id="canvas_award" height="450" width="650"></canvas>
								</div>
								<script type="text/javascript">														
									$(function() {
										var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
										var months = ["1회수상","2회수상","3회수상","4회수상","5회수상","6회수상","7회수상","8회수상","9회수상","10회이상"];
										var barChart = null;
										var barChartData = {
											labels : ["1회수상","2회수상","3회수상","4회수상","5회수상","6회수상","7회수상","8회수상","9회수상","10회이상"],
											datasets : [								
												{
													fillColor : "rgba(91,192,222,0.9)",
													strokeColor : "rgba(151,187,205,0.8)",
													highlightFill : "rgba(115,201,227,0.8)",
													highlightStroke : "rgba(151,187,205,1)",
													data : [
													        <%
													        	for(int i=0; i<statis.getDistributionMap_award().size()-1; i++)
													        	{
													        		out.println(statis.getDistributionMap_award().get(i) + ",");
													        	}
													        	out.println(statis.getDistributionMap_award().get(9));
													        %>
													]
												}
											]
								
										};
										var ctx = document.getElementById("canvas_award").getContext("2d");
										barChart = new Chart(ctx).Bar(barChartData, {
											//Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
											scaleBeginAtZero : false,
											//Boolean - Whether grid lines are shown across the chart
											scaleShowGridLines : true,
											//String - Colour of the grid lines
											scaleGridLineColor : "rgba(0,0,0,0.05)",
											//Number - Width of the grid lines
											scaleGridLineWidth : 1,
											//Boolean - If there is a stroke on each bar
											barShowStroke : false,
											//Number - Pixel width of the bar stroke
											barStrokeWidth : 2,
											//Number - Spacing between each of the X value sets
											barValueSpacing : 5,
											//Number - Spacing between data sets within X values
											barDatasetSpacing : 1,
											onAnimationProgress: function() {
												console.log("onAnimationProgress");
											},
											onAnimationComplete: function() {
												console.log("onAnimationComplete");
											}
										});
									});								
							
									$("canvas_award").on("click", function(e) {
										var activeBars = barChart.getBarsAtEvent(e);
										console.log(activeBars);
							
										for(var i in activeBars) {
											console.log(activeBars[i].value);
										}
									});							
								</script>							
							</div>
						</div>
					</div>
				</div>  <!--  right_graph_end -->
			</div>
    	</div>
	</div>  <!--  수상실적 통계 PANEL END -->
	
	<div class="col-md-12"> <!--  포트폴리오 통계 PANEL BEGIN -->
		<div class="panel panel-warning">
			<div class="panel-heading progress-bar-striped">
				<h2 class="panel-title">포트폴리오 통계</h2>
				<span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
			</div>
			<div class="panel-body">				
           		<div class="row">
                	<div class="col-md-4">
                  		<div class="row">
		                    <div class="col-md-12">
		                    	<div class="panel panel-default">
								  <div class="panel-heading">평균 포트폴리오 갯수</div>
								  <div class="panel-body3">						    	 
									<h3>${statistics.avgPortfolioCount}개</h3>								
								  </div>
								</div>														
							</div>
							
							 <div class="col-md-12">
		                    	<div class="panel panel-default">
								  <div class="panel-heading">포트폴리오 보유 학생수</div>
								  <div class="panel-body2">						    	 
									<div class="progress">
									  	<div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="${statistics.totalSpecRegCount}" aria-valuemin="0" aria-valuemax="${statistics.totalSpecRegCount}" style="width:<%=(statis.getTotalRegStudentCount_portfolio() / (double)statis.getTotalSpecRegCount() * 100.0)%>%;">
									    ${statistics.totalRegStudentCount_portfolio}명 (<%=(statis.getTotalRegStudentCount_portfolio() / (double)statis.getTotalSpecRegCount() * 100.0)%>%)
									  </div>
									</div>								
								  </div>
								</div>														
							</div>     
                  		</div>
                  		<div class="row">
                    		<div class="col-md-12">
	                   			<div class="panel panel-default">
									<div class="panel-heading">포트폴리오 부문 우수학생</div>							
							    	<ul class="list-group">
<%
									for(int i=0; i<statis.getPortfolioKingId().size(); i++)
									{
%>
			                        	<li class="list-group-item">
			                        		<table class="rank_table">
			                        			<tr>
			                        				<td id="rank" class="col-xs-2"><%=rankName[i]%></td>
			                        				<td id="img"><img class="rank-img img-circle" src="<%=request.getContextPath()%>/<%=statis.getPortfolioKingPhoto().get(i)%>"></td>
			                        				<td id="name"><%=statis.getPortfolioKingName().get(i)%></td>
			                        				<td id="score"><%=statis.getPortfolioKingCount().get(i)%>개</td>
			                        			</tr>
			                        		</table>			                        		
			                        	</li>
<%
									}
%>			                        	
			                      	</ul>
								</div>								
                    		</div>
                  		</div>
                	</div>
               		<div class="col-md-8"><!--  right row -->        
               			<div class="panel panel-default">
							<div class="panel-heading">포트폴리오 보유 갯수별 학생 도표</div>
							<div class="panel-body">
						    	<div style="margin-top:10px">
									<p class="text-left">(학생수)</p>
									<canvas id="canvas_portfolio" height="450" width="650"></canvas>
								</div>
								<script type="text/javascript">														
									$(function() {
										var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
										var months = ["1개보유","2개보유","3개보유","4개보유","5개보유","6개보유","7개보유","8개보유","9개보유","10개이상"];
										var barChart = null;
										var barChartData = {
											labels : ["1개보유","2개보유","3개보유","4개보유","5개보유","6개보유","7개보유","8개보유","9개보유","10개이상"],
											datasets : [								
												{
													fillColor : "rgba(240,173,78,0.9)",
													strokeColor : "rgba(151,187,205,0.8)",
													highlightFill : "rgba(242,185,104,0.8)",
													highlightStroke : "rgba(151,187,205,1)",
													data : [
													        <%
													        	for(int i=0; i<statis.getDistributionMap_portfolio().size()-1; i++)
													        	{
													        		out.println(statis.getDistributionMap_portfolio().get(i) + ",");
													        	}
													        	out.println(statis.getDistributionMap_portfolio().get(9));
													        %>
													]
												}
											]
								
										};
										var ctx = document.getElementById("canvas_portfolio").getContext("2d");
										barChart = new Chart(ctx).Bar(barChartData, {
											//Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
											scaleBeginAtZero : false,
											//Boolean - Whether grid lines are shown across the chart
											scaleShowGridLines : true,
											//String - Colour of the grid lines
											scaleGridLineColor : "rgba(0,0,0,0.05)",
											//Number - Width of the grid lines
											scaleGridLineWidth : 1,
											//Boolean - If there is a stroke on each bar
											barShowStroke : false,
											//Number - Pixel width of the bar stroke
											barStrokeWidth : 2,
											//Number - Spacing between each of the X value sets
											barValueSpacing : 5,
											//Number - Spacing between data sets within X values
											barDatasetSpacing : 1,
											onAnimationProgress: function() {
												console.log("onAnimationProgress");
											},
											onAnimationComplete: function() {
												console.log("onAnimationComplete");
											}
										});
									});								
							
									$("canvas_portfolio").on("click", function(e) {
										var activeBars = barChart.getBarsAtEvent(e);
										console.log(activeBars);
							
										for(var i in activeBars) {
											console.log(activeBars[i].value);
										}
									});							
								</script>							
							</div>
						</div>
					</div>
				</div>  <!--  right_graph_end -->
			</div>
    	</div>
	</div>  <!--  포트폴리오 통계 PANEL END -->
	
	<div class="col-md-12"> <!--  소프트웨어개발능력 통계 PANEL BEGIN -->
		<div class="panel panel-danger">
			<div class="panel-heading progress-bar-striped">
				<h2 class="panel-title">소프트웨어 개발능력 통계</h2>
				<span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
			</div>
			<div class="panel-body">				
           		<div class="row">           			
                	<div class="col-md-4">
                  		<div class="row">
		                    <div class="col-md-12">
		                    	<div class="panel panel-default">
								  <div class="panel-heading">평균 보유 개발능력 갯수</div>
								   <div class="panel-body3">						    	 
									<h3>${statistics.avgSwAbilityCount}개</h3>								
								  </div>
								</div>														
							</div>							           
                  		</div> 
                  		<div class="row">
                    		<div class="col-md-12">
	                   			<div class="panel panel-default">
									<div class="panel-heading">선호 소프트웨어 개발능력 순위 (1위~8위)</div>							
						    		<table class="rank_table" style=" text-align:left;">						    	
								 	<c:forEach var="SwAbilityMap" items="${statistics.swAbilityRank}" varStatus="status">
		                        		<tr style="border-top:1px solid #eee;">
		                        			<td id="rank" class="col-xs-3">${status.index+1}위</td>			                        				
		                        			<td id="key"><h4>${SwAbilityMap.key}</h4></td>
		                        			<td id="value">${SwAbilityMap.value}명</td>
		                        		</tr>
		                        	    									
								 	</c:forEach>
		                      		</table>
								</div>								
                    		</div>
                  		</div>                 		
                	</div>
               		<div class="col-md-8"><!--  right row -->        
               			<div class="panel panel-default">
							<div class="panel-heading">소프트웨어 개발능력 가능 갯수별 학생 도표</div>
							<div class="panel-body">
						    	<div style="margin-top:10px">
									<p class="text-left">(학생수)</p>
									<canvas id="canvas_swAbility" height="450" width="650"></canvas>
								</div>
								<script type="text/javascript">														
									$(function() {
										var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
										var months = ["1개가능","2개가능","3개가능","4개가능","5개가능","6개가능","7개가능","8개가능","9개가능","10개이상"];
										var barChart = null;
										var barChartData = {
											labels : ["1개가능","2개가능","3개가능","4개가능","5개가능","6개가능","7개가능","8개가능","9개가능","10개이상"],
											datasets : [								
												{
													fillColor : "rgba(240,173,78,0.9)",
													strokeColor : "rgba(151,187,205,0.8)",
													highlightFill : "rgba(242,185,104,0.8)",
													highlightStroke : "rgba(151,187,205,1)",
													data : [
													        <%
													        	for(int i=0; i<statis.getDistributionMap_swAbility().size()-1; i++)
													        	{
													        		out.println(statis.getDistributionMap_swAbility().get(i) + ",");
													        	}
													        	out.println(statis.getDistributionMap_swAbility().get(9));
													        %>
													]
												}
											]
								
										};
										var ctx = document.getElementById("canvas_swAbility").getContext("2d");
										barChart = new Chart(ctx).Bar(barChartData, {
											//Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
											scaleBeginAtZero : false,
											//Boolean - Whether grid lines are shown across the chart
											scaleShowGridLines : true,
											//String - Colour of the grid lines
											scaleGridLineColor : "rgba(0,0,0,0.05)",
											//Number - Width of the grid lines
											scaleGridLineWidth : 1,
											//Boolean - If there is a stroke on each bar
											barShowStroke : false,
											//Number - Pixel width of the bar stroke
											barStrokeWidth : 2,
											//Number - Spacing between each of the X value sets
											barValueSpacing : 5,
											//Number - Spacing between data sets within X values
											barDatasetSpacing : 1,
											onAnimationProgress: function() {
												console.log("onAnimationProgress");
											},
											onAnimationComplete: function() {
												console.log("onAnimationComplete");
											}
										});
									});								
							
									$("canvas_swAbility").on("click", function(e) {
										var activeBars = barChart.getBarsAtEvent(e);
										console.log(activeBars);
							
										for(var i in activeBars) {
											console.log(activeBars[i].value);
										}
									});							
								</script>									
							</div>
						</div>
					</div>															
				</div>  <!--  right_graph_end -->	
				<div class="col-md-12">
						<div class="panel panel-default filterable">
				            <div class="panel-heading">
				                <h3 class="panel-title">소프트웨어 개발 능력 도표</h3>
				            </div>	            
				            <table class='table table-bordered table-striped sortable'>
					            <thead>					                
					                <tr>
					                    <th data-defaultsort="asc">#</th>
					                    <th data-firstsort="desc">언어/기술 명</th>
					                    <th data-firstsort="desc">가능학생 수</th>
					                </tr>
					            </thead>
					            <tbody>
				            	 <c:forEach var="SwAbilityMap" items="${statistics.totalRegStudentCountMap_SWAbility}" varStatus="status">
						    		<tr>
						    			<td>${status.index+1}</td>
						    			<td>${SwAbilityMap.key}</td>
						    			<td>${SwAbilityMap.value}</td>
						    		</tr>								
								</c:forEach>					            
					            </tbody>
					        </table>
				        </div>						
					</div>			   
			</div>
    	</div>
	</div>  <!--  소프트웨어개발능력 통계 PANEL END -->
	
		

</div>


<!--  pannel dropdown -->
<script>
	$(document).on('click', '.panel-heading span.clickable', function(e){
	    var $this = $(this);
		if(!$this.hasClass('panel-collapsed')) {
			$this.parents('.panel').find('.panel-body').slideUp();
			$this.addClass('panel-collapsed');
			$this.find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
		} else {
			$this.parents('.panel').find('.panel-body').slideDown();
			$this.removeClass('panel-collapsed');
			$this.find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
		}
	})
</script>	

<!--  table sortable -->
<script src='<%=skinPath%>/js/moment.min.js'></script>
<script src='<%=skinPath%>/js/bootstrap-sortable.js'></script>



<jsp:include page="/tail.jsp" flush="false" />