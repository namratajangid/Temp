<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
Author: Colorlib
Author URL: https://colorlib.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Register to Easy Essentials</title>
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
                        <form action="regjsp.jsp" method="post">
                            <input class="text" type="text" name="Username" placeholder="Username" required="">
                            <input class="text email" type="email" name="Email" placeholder="Email" id="emailid" required="">
                            <input class="text" type="password" name="Password1" placeholder="Password" required="">
                            <input class="text w3lpass" type="password" name="Password2" placeholder="Confirm Password" required="">
                            <!--ADD CHECK FOR PASSWORDS-->
                            <input class="text" type="text" name="Address" placeholder="Address" required=""><br>
                            <input class="text" type="text" name="Pincode" placeholder="Pincode" required=""><br>
                            <div class="wthree-text">
                                <label class="anim">
                                    <input type="checkbox" class="checkbox" required="">
                                    <span>I Agree To The Terms & Conditions</span>
                                </label>
                                <div class="clear"> </div>
                            </div>

                            <input type="submit" value="SIGNUP">
                            <p>Already have an Account? <a href="C:\Users\Sheetal\Downloads\login.html"> Sign In Now!</a></p>
                        </form>
                        <!-- <p>Don't have an Account? <a href="#"> Login Now!</a></p> -->
                    </div>
                </div>
                <!-- copyright -->
                <div class="colorlibcopy-agile">
                    <!-- <p>© 2018 Colorlib Signup Form. All rights reserved | Design by <a href="https://colorlib.com/" target="_blank">Colorlib</a></p> -->
                </div>

            </div>
        </div>

        <!-- //main -->
    </body>
</html>