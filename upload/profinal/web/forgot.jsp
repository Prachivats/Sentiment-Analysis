<%-- 
    Document   : forgot.jsp
    Created on : 15 Apr, 2015, 8:20:45 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
    </head>
    <body>
        <div align="center" style="height:800px; width:1225px">
        <h2>Find your Novel World account</h2>
        <table>
            <tr>     
       
                <td> <label align="center"><font size="5">Enter your security question</font></label></td>
            </tr>
            <tr>
                <td><input type="text" name="sq" size="25" align="center"/></td>
            </tr>
            <tr>
                <td><label align="center"><font size="5">Enter your security answer</font></label></td>
            </tr>
            <tr>
                <td> <input type="text" name="sq" size="25" align="center"/></td>
            </tr>
            <form method="post" action="Submit">
            <tr>
                <td><button align="center" style="height:60x; width:80px" onclick="myfunction()">Submit</button></td>
            </tr>
            </form>
            <tr>
                <td><label><font size="5">Your password is:</font></label></td>
            </tr>
            <tr>
                <td><input type="text" id="td1" name="fin" size="25" /></td>
            </tr>
        </table>
            
        </div>
        
    
    </body>
    
</html>
