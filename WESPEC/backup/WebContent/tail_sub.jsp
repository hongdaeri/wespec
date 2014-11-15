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
	
	 <!-- login Modal -->
	 <form class="form-signin" action="">		
		 <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h4 class="modal-title" id="myModalLabel">Please Login</h4>
		      </div>
		      <div class="modal-body">
		         <input type="text" class="form-control" name="username" placeholder="Student Code" autofocus="autofocus" /><br>
				 <input type="password" class="form-control" name="password" placeholder="Password" /><br>	        
		         
			         <div class="row">
	    				<div class="col-md-4"> <input type="checkbox" name="rememberId" value="rememberId"/> Remember your ID</div>
	    				<div class="col-md-4"> <input type="checkbox" name="rememberId" value="rememberId"/> Auto Login</div>
	   				 </div>   				 
   				
				
		       </div>
		       <div class="modal-footer">	        
		       	<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
		       	<button class="btn btn-lg btn-success btn-block" type="submit">Forgot password</button>
		      </div> 
		    </div>
		  </div>
		</div>
	</form>
	    
	  
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=skinPath %>/js/bootstrap.min.js"></script>
  </body>
</html>