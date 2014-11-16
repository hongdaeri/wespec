<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>    
<%@ include file="/common/common.jsp" %>

     <!-- Search Modal -->
	<div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="myModalLabel">Detail Search</h4>
	      </div>
	      <div class="modal-body">
	        <p>자세한 검색 yo</p>
	      </div>
	      <div class="modal-footer">	        
	        <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-filter"></span> RUN</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- PHOTO REGISTER Modal -->
	<div class="modal fade" id="photoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<form action="<%=request.getContextPath()%>/FileUploadServlet" role="form"  method="post" enctype="multipart/form-data">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
	        		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        		<h4 class="modal-title" id="myModalLabel">사진 Upload</h4>
	        	</div>
	      		
				<div class="modal-body">
			        <div class="form-group">
			    		<label for="exampleInputFile">현재 등록 사진</label><br>
			    		<img src="${profile.profilePhotoURL}" alt="" style="max-height:400px">
			  		</div>  	
					<div class="form-group">
	    				<label for="exampleInputFile">사진파일 첨부</label>
	    				<input type="file" id="exampleInputFile" name="photo" accept="image/*">
	  				</div>  
	  				<div class="alert alert-warning alert-dismissible" role="alert">
						  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
						   <h4><strong>프로필 사진은 <kbd>증명사진 비율(3:4)</kbd>에 최적화 되어있습니다.</strong></h4>
						  <h5>권장 사이즈는 <strong>300X400</strong> 이며, 자동 리사이징 되어 출력되므로 사진이 깨져 보일시, 사진 편집을 통해 비율을 다시 맞추어 주시고 시도해 보시길 바랍니다.</h5>	
	    			</div>
	  			</div>      		
	      		<div class="modal-footer">	        
	        		<button type="button" class="btn btn-primary" onClick="submit();"><span class="glyphicon glyphicon-camera"></span> UPLOAD</button>
	      		</div>
	    	</div>
	  	</div>
	  	</form>
	</div>
	  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=skinPath %>/js/bootstrap.min.js"></script>
  </body>
</html>