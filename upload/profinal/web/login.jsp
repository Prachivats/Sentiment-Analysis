<%-- 
    Document   : login
    Created on : Feb 24, 2015, 9:58:42 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("name"); 
    userid.trim();
    String pwd = request.getParameter("pass");
    pwd.trim();
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "tanya");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from student where name='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid",userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("Home.jsp");
    } else 
    {
        out.println("Invalid password <a href='main.jsp'>try again</a>");
    }
%>