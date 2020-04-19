<!--
Author: Colorlib
Author URL: https://colorlib.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
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
  <%
  String emailLogin = (String) request.getParameter("emailLogin");
  String passwordLogin = (String) request.getParameter("passwordLogin");
  String storedLogin = "";
  int userID = 0;
  //check with db
  boolean flag = false;
  Connection con = null;
  Statement st = null;
  //PreparedStatement stat;
  ResultSet rs = null;
  String url = "jdbc:postgresql://john.db.elephantsql.com:5432/vllmgzqg";
  try {
  Class.forName("org.postgresql.Driver");
  con = DriverManager.getConnection(url, "vllmgzqg", "6kesbi5l9R64eEBbiUptOkk1hkdANbmE");
  st = con.createStatement();
  String SQL = "select * from seller where selleremail='"+emailLogin+"'";
  st = con.createStatement();
  rs = st.executeQuery(SQL);
  while (rs.next()) 
  {
    userID = Integer.parseInt(rs.getString(1));
    storedLogin = rs.getString(4);
  }

  if(!storedLogin.equals("")){
  if(passwordLogin.equals(storedLogin))
  {
    flag=true;
  }
  if(flag == true)
  {
    request.getSession().setAttribute("userID", userID);
    String redirectURL = "vegetableselection.jsp";
    response.sendRedirect(redirectURL);
  }
  else
  {
    %><script>

      alert("Incorrect email ID or password. Please try again.");
      window.location = "login.jsp";
    </script><%
  }
  //if true -> go to dashboard
  //if false -> error and login again btn
}
con.close();
}catch(Exception m){}
%>
</body>
<p><%=flag%></body>
  </html>