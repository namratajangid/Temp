<!--
Author: Colorlib
Author URL: https://colorlib.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
    <title>Sign In to Easy Essentials</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Custom Theme files -->
    <link href="style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //Custom Theme files -->
    <!-- web font -->
    <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
    <!-- //web font -->
</head>
<body style="background-image: url('try7.jpg');">
  <!-- main -->
  <div>
      <div class="main-w3layouts wrapper">
        <h1>Easy Essentials</h1>
        <div class="main-agileinfo">
          <div class="agileits-top">
            <form action="loginprocessing.jsp" method="post">
              <input class="text email" type="email" name="emailLogin" placeholder="Email" required="">
              <input class="text" type="password" name="passwordLogin" placeholder="Password" required="">
              <input type="submit" value="SIGNIN">
              <!-- onclick="C:\Users\Sheetal\Downloads\vegetableSelection.html" -->
          </form>
          <p>Don't have an Account? <a href="reg.jsp"> SignUp Now!</a></p>
      </div>
  </div>
  <!-- copyright -->
  <div class="colorlibcopy-agile">
      <p></p>
  </div>

</div>
</div>
<%
//request.getSession().setAttribute("passwordLogin", passwordLogin);
%>
</body>
</html>