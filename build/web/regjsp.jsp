<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
    <title>Registration Successful</title>
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
<body>
    <body style="background-image: url('try7.jpg');">
        <!-- main -->
        
        <%

        String username = (String) request.getParameter("Username");
        String emailID = (String) request.getParameter("Email");
        String password = (String) request.getParameter("Password1");
        String address = (String) request.getParameter("Address");
        Integer postcode =  Integer.parseInt(request.getParameter("Pincode"));

        Connection con = null;
        PreparedStatement stat = null;

        String url = "jdbc:postgresql://john.db.elephantsql.com:5432/vllmgzqg";
        try {
        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection(url, "vllmgzqg", "6kesbi5l9R64eEBbiUptOkk1hkdANbmE");
        stat = con.prepareStatement("insert into seller (sellername, selleremail, password, address, pincode) values (?,?,?,?,?)");

        stat.setString(1, username);
        stat.setString(2, emailID);
        stat.setString(3, password);
        stat.setString(4, address);
        stat.setInt(5, postcode);

        stat.executeUpdate();
        con.close();
        %>
        <div>
            <div class="main-w3layouts wrapper">
                <h1>Easy Essentials</h1>
                <div class="main-agileinfo">
                    <div class="agileits-top">

                        <p>
                            You have been registered successfully!
                        </p>    
                        <br><br>
                        <p>
                            Please <a href="login.jsp">login </a>to continue
                        </p>
                        <br><br>
                    </div>
                </div>
                <!-- copyright -->
                <div class="colorlibcopy-agile">
                    <!-- <p>© 2018 Colorlib Signup Form. All rights reserved | Design by <a href="https://colorlib.com/" target="_blank">Colorlib</a></p> -->
                </div>
            </div>
        </div>
        <%        
    } catch(Exception m){
    System.out.println(m);
}
%>
</body>
</body>
</html>
