<%-- 
    Document   : about.jsp
    Created on : Mar 30, 2014, 3:29:48 PM
    Author     : admin
--%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us </title>
        
            
        
    </head>
    <body bgcolor="grey">
        
        <div style="position:absolute;top:70%;height:225px;width:850px;">
            <img src="about_us.jpg" width="570" height="510" alt="about_us"/>
        </div>
    
    <div id="page" style=" height: 170px; width:1450px; left:0px" >
            <img src="ifinal copy.png" height="170" width="1450">
        </div>
    
    <%@include file="menu.jsp" %>
    
        <div style="position:absolute;top:75%;">
                    <%
                        try
                        {
                        String a=session.getAttribute("x1").toString();
                        int y=Integer.parseInt(a);
                                                 
                        if(y==1)
                      {
                            %>
                        <jsp:include page="logout.jsp"/>
                        <div style="position:absolute;left:600px;top:40%;height:120px;width:550px;">
                            <h4> We're a group of dedicated novel analysts who've been working for reviewing the novels.
                       Our site was founded in 2015.<br><br>We love novels, and are not biased towards a type of novel. While the most expensive
                       units offer the most features, we understand that our readers have all sorts of budgets and hence we review models in all price
                       ranges and will never tell you that you've got to buy the most expensive model out there.<br><br>
                       We also know that some of you are great readers while others are novices, so we provide detailed reviews that are written in an
                       accessible fashion that are given by you.<br><br>
                       We are not owned by a parent corporation but we extract the tweets from twitter. We like it this way: it ensures that our site will offer you unbiased reviews and opinions of the products you're considering purchasing.</h3> </div>
            <%
                        }
                        }
                        catch(Exception e)
                        { %>
                       <div style=" position:absolute;left:600px;top:75%;height:120px;width:550px;">
                           <h3>We're a group of dedicated novel analysts who've been working for reviewing the novels.
                       Our site was founded in 2015.<br><br>We love novels, and are not biased towards a type of novel. While the most expensive
                       units offer the most features, we understand that our readers have all sorts of budgets and hence we review models in all price
                       ranges and will never tell you that you've got to buy the most expensive model out there.<br><br>
                       We also know that some of you are great readers while others are novices, so we provide detailed reviews that are written in an
                       accessible fashion that are given by you.<br><br>
                       We are not owned by a parent corporation but we extract the tweets from twitter. We like it this way: it ensures that our site will offer you unbiased reviews and opinions of the products you're considering purchasing.</h3> </div>
          
                        </div> 
            <%}
                                    
                       %>
                </div>
                <br><br>
    
    </body>
    
</html>
