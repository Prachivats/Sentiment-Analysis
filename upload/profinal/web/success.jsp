<%-- 
    Document   : success
    Created on : Feb 24, 2015, 9:59:07 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%@include file="menu.jsp" %>
 <div id ="success" style="position:absolute;top:90%;width:800px;height:320px;left:500px">
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>

<a href="index.jsp">Please Login</a>
<%} else {
%>
<font face="aerial" size="15">Welcome <%=session.getAttribute("userid")%></font>
<br>
<br>
<br>
<br>
<br>
<a href='logout.jsp'><font face="aerial" size="10" color="brown"> Log out</font></a>
<%
    }
%>
 </div>