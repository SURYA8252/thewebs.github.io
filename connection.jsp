<%-- 
    Document   : connection
    Created on : 1 Mar, 2021, 5:43:19 PM
    Author     : Surya Jyoti
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
        <%
            String name=request.getParameter("fullname");
            String email=request.getParameter("email");
            String password=request.getParameter("pass");
            try
            {
                Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sign","sign","sign");
                out.println("successful");
                Statement st=con.createStatement();
                String sql="insert into signup(name,email,password) values('"+name+"','"+email+"','"+password+"')";
                st.executeUpdate(sql);
                out.println("Data insert successful");
            }
            catch(Exception e)
            {
                out.println("unsuccessful");
            }
        %>
    </body>
</html>
