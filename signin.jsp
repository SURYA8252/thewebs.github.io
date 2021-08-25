<%-- 
    Document   : signin
    Created on : 28 Feb, 2021, 3:27:15 PM
    Author     : Surya Jyoti
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="StyleSheet.css" />
        <title>Sign In</title>
    </head>
    <body style="background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12); background-repeat: no-repeat; background-attachment:fixed; background-size: cover;">
        <section id="nav-bar">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand" href="#"><img src="picture/logo.png" /></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Home.html">HOME</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Home.html">ABOUT US</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Home.html">SERVICES</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Home.html">TEAM</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">PRICE PLANS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#testimonials">TESTIMONIALS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#contact">CONTACT US</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="SignUp">SIGN UP</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">SIGN IN</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </section>
        
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-header text-center c-head text-white">
                            <i class="fa fa-user-o fa-2x"></i>
                            <h5>SIGN IN</h5>
                        </div>
                        <%
                            String logoutMSG=(String)session.getAttribute("logout-msg");
                            if(logoutMSG!=null)
                        {%>
                        
                        <div class="alert alert-success" role="alert"><%= logoutMSG %></div>  
                        
                        <% session.removeAttribute("logout-msg");}
                              
                        %>
                        <div class="card-body">
                            <form action="servletlogin" method="post">

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Enter Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Enter Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" name="password">
                                </div>

                                <button type="submit" class="btn btn-primary btn-block badge-pill">Sign In</button>
                            </form>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <section id="footer">
            <div class="container text-center">
                <p>Made With<i class="fa fa-heart-o"></i>By LogicoItech</p>
            </div>
        </section>
    </body>
</html>
