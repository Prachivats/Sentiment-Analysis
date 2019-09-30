<%-- 
    Document   : contact.jsp
    Created on : Mar 30, 2014, 3:28:01 PM
    Author     : admin
--%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
    </head>
   <body bgcolor="grey">
        <div style="position:absolute;top:70%;height:225px;width:650px;">
            <img src="contact_us.jpg" width="610" height="370" alt="contact_us"/>

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
                            <div style="position:absolute;left:650px;top:40%;height:500px;width:400px;">
                                <h3>We do appreciate your feedback<br>We will be glad to hear from you if:<br>
                                    - You have found a mistake in our novel specifications.<br>
                                    - You have info about a novel which we don't have in our database.<br>
                                    - You have found a broken link.<br>
                                    - You have a suggestion for improving NovelWorld.com or you want to request a feature.<br><br>

                                    Before sending us an email, please keep in mind:<br>
                                    - We do not sell novels.<br>
                                    - We do not know the price of any novel in your country.<br>
                                    - We don't answer any "Which novel should I buy?" questions.<br><br> 
                                    You can always contact us about your queries and give us your feedbacks at <i>NovelWorld@gmail.com<i></h3>
                        </div>
                    <%
                        }
                    
                        
                        }
                        catch(Exception e)
                        { %>
                        <div style="position:absolute;left:650px;top:75%;height:500px;width:400px">
                        
                                We do appreciate your feedback<br>We will be glad to hear from you if:<br>
                                    - You have found a mistake in our novel specifications.<br>
                                    - You have info about a novel which we don't have in our database.<br>
                                    - You have found a broken link.<br>
                                    - You have a suggestion for improving NovelWorld.com or you want to request a feature.<br><br>

                                    Before sending us an email, please keep in mind:<br>
                                    - We do not sell novels.<br>
                                    - We do not know the price of any novel in your country.<br>
                                    - We don't answer any "Which novel should I buy?" questions.<br><br> 
                                    You can always contact us about your queries and give us your feedbacks at <b><i>NovelWorld@gmail.com </i></b>
            </div>
                        <%}                               
                       %>
                </div>
          
                <br><br>
                
    </body>
   
</html>
