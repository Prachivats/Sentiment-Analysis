<%-- 
    Document   : registration
    Created on : Feb 24, 2015, 9:57:13 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("name");    
    String pwd = request.getParameter("pass1");
    
    String email = request.getParameter("email");
    String secques = request.getParameter("secques");
    String secans = request.getParameter("secans");
    session.setAttribute("userid",user);
   session.setAttribute("pass1",pwd);
     Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "tanya");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into student(name,email,pass,secques,secans) values ('" + user + "','" + email + "','" + pwd + "','" + secques + "','" + secans + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
       
        response.sendRedirect("welcome.jsp");
        
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        out.println("Invalid details <a href='main.jsp'>try again</a>");
        
    }
%>