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
    <link href="<%=skinPath%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=skinPath%>/css/login.css" rel="stylesheet" media="screen">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
      <div class="wrapper">
        <form class="form-signin">       
          <h2 class="form-signin-heading">Please login</h2>
          <input type="text" class="form-control" name="username" placeholder="Student Code" required="" autofocus="" />
          <input type="password" class="form-control" name="password" placeholder="Password" required=""/>      
          <label class="checkbox">
            <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
          </label>
          <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
          <button class="btn btn-lg btn-danger btn-block" type="submit">Sign up</button>     
        </form>
      </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=skinPath%>/js/bootstrap.min.js"></script>
  </body>
</html>