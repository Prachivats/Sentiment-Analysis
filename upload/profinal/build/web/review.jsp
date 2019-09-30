<%-- 
    Document   : review
    Created on : Apr 20, 2015, 2:54:37 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.lang.*" %>
<%@page import="java.sql.*" %>


<jsp:useBean id="u" class="Tweet.Tweetana"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Review</title>
    </head>
    <body background="bann.jpg">
         <%@ include file="menu.jsp"%>
    <div id="images" style="top:0%;"><img src="ifinal copy.png" width="1450" height="170"> </div>
    <div id="i1" style="top:40%;position:absolute;left:30px">
        <a href='logout.jsp'><font face="aerial" size="6" color="black"> <b>Log out</b></font></a>

    </div>
        
        <%
             String a=u.insert();
             float f=Float.valueOf(a);
            // out.println(f);
             %>
             
         <%
             try
                        {
                            
                   
                    if(f<-3.0)
                    {
                           
            %>
            
            <img src="stars/StarHalf.png" width="150" height="40" alt="StarHalf"/>
            <img src="stars/redthumb.png" style=" width:200; height:100 " alt="StarHalf"/>
            <br>
            <br>
            <br>
            <%}
                          else if(f<-3.0&&f>-2.0)
                    {
                         
            %>
            <img src="stars/one star.png" width="150" height="40" alt="StarHalf"/>
            <img src="stars/redthumb.png" style=" width:200; height:100 " alt="StarHalf"/>
            <br>
            <br>
            <br>
           <%}
                          else if(f>=-2.0&&f<-1.0)
                    {
                           
            %>
            <img src="stars/one_half-stars_0.png" width="150" height="40" alt="StarHalf"/>
            <img src="stars/redthumb.png" style=" width:200; height:100 " alt="StarHalf"/>
            <br>
            <br>
            <br>
            <%}
                      else if(f>=-1.0&&f<0.0)
                    {
                           
            %>
            <img src="stars/two stars.png" width="150" height="40" alt="StarHalf"/>
            <img src="stars/redthumb.png" style=" width:200; height:100 " alt="StarHalf"/>
            <br>
            <br>
            <br>
            <%}
                      else if(f>=0.0&&f<1.0)
                    {
                           
            %>
            <img src="stars/two_half-stars_0.png" width="150" height="40" alt="StarHalf"/>
            <img src="stars/greenthumb.png" style=" width:150; height:50 " alt="StarHalf"/>
            <br>
            <br>
            <br>
            <%}
                      else if(f>=1.0&&f<2.0)
                    {
                           
            %>
            <img src="stars/three stars.png" width="150" height="40" alt="StarHalf"/>
            <img src="stars/greemthumb.png" style=" width:150; height:50 " alt="StarHalf"/>
            <br>
            <br>
            <br>
            <%}
                     else if(f>=2.0&&f<3.0)
                    {
                           
            %>
            <img src="stars/three_half-stars_0.png" width="150" height="40" alt="StarHalf"/>
            <img src="stars/greenthumb.png" style=" width:150; height:50 " alt="StarHalf"/>
            <br>
            <br>
            <br>
            <%}
                        else if(f>=3.0&&f<=4.0)
                    {
                        
            %>
            <img src="stars/four stars.png" width="150" height="40" alt="StarHalf"/>
            <img src="stars/greenthumb.png" style=" width:150; height:50 " alt="StarHalf"/>
            <br>
            <br>
            <br>
            <%}  
                    
                  else if(f>4.0)
                    {
                           
            %>
            <img src="stars/five stars.png" width="150" height="40" alt="StarHalf"/>
            <img src="stars/greenthumb.png" style=" width:150; height:50 " alt="StarHalf"/>
            <br>
            <br>
            <br>
            <%}
                    else
                  {    
                      out.println("No Review available");
                       %><br><br><br><%
                  }
                
                
                
                }
            
            catch(Exception e)
            {out.println(e);}
            %>
    
    </body>
   
</html>

