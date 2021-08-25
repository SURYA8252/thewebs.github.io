<%-- 
    Document   : index
    Created on : 6 Mar, 2021, 3:49:23 PM
    Author     : Surya Jyoti
--%>

<%@page import="com.entities.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    user user=(user)session.getAttribute("user-ob");
    if(user==null)
    {
        session.setAttribute("login-msg", "Plese Sign In First....");
        response.sendRedirect("index.jsp");
    }
%>
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
        <title>Welcome</title>
    </head>
    <body>
        <section id="nav-bar">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand" href="#"><img src="picture/logo.png" /></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#top">HOME</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#about">ABOUT US</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#services">SERVICES</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#team">TEAM</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#price">PRICE PLANS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#testimonials">TESTIMONIALS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#contact">CONTACT US</a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="servletlogout">SIGN OUT</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </section>
        <div class="container">
            <div class="row d-flex justify-content-center align-items-center mt-4">
                <div class="col-md-6">
                    <div class="card">
                        <%
                            user user1=(user)session.getAttribute("user-ob");
                        %>
                        <%
                            if(user!=null)
                        {%>
                                    <div class="card-body">
                            <h1>Name:<%= user1.getName() %></h1>
                            <h1>Email:<%= user1.getEmail() %></h1>
                        </div>    
                       <%}%>
                        
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
