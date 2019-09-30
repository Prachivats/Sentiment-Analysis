<%-- 
    Document   : logout
    Created on : Feb 24, 2015, 9:59:42 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="menu.jsp" %>
<!DOCTYPE html>
<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("main.jsp");
%>