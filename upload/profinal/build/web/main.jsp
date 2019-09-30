<%-- 
    Document   : home
    Created on : Apr 16, 2015, 8:14:05 PM
    Author     : MTS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sign In</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
            
            #lbl1{
                position:absolute;
                right:500px;
                top:30px;
            }
            #lbl2{
                position:absolute;
                right:270px;
                top:30px;
            }
            #txt1{
                position:absolute;
                right: 410px;
                top: 50px;
            }
            #txt2{
                position:absolute;
                right: 183px;
                top: 50px;
            }
            #btn1{
                position:absolute;
                right:90px;
                top: 50px;
            }
            a:link{
            position:absolute;
            right:167px;
            top:75px;
            width: 190px;
            height: 35px ;
            }
            div.front-card{
                position:absolute;
                right: 120px;
                height:100px;
                width:150px;
                background-color: midnightblue;
            }
            
        
            </style>
            <script type='text/javascript'>
            var imageID=0;
            function changeimage(every_seconds){
            //change the image
            if(!imageID){
            document.getElementById("myimage").src="image1.jpg";
             imageID++;
            }
            else{if(imageID==1){
            document.getElementById("myimage").src="image2.jpg";
            imageID++;
             }else{if(imageID==2){
            document.getElementById("myimage").src="image3.jpg";
            imageID=0;
    }}}
    //call same function again for x of seconds
    setTimeout("changeimage("+every_seconds+")",((every_seconds)*1000));
}
</script>
<script type="text/javascript">
<!--
// Form validation code will come here.
function validate()
{
   var pwd=document.myForm.pass1.value;
   if( document.myForm.name.value == "" || document.myForm.name.value == null )
   {
     alert( "Please provide your name!" );
     document.myForm.name.focus() ;
     return false;
   }
   if( pwd.length<6 )
   {
     alert( "Password must be at least 6 characters long" );
     document.myForm.pass1.focus() ;
     return false;
   }
   var firstpassword=document.myForm.pass1.value;  
   var secondpassword=document.myForm.pass2.value;  
  
   if(firstpassword==secondpassword)
   {  
     return true;  
   }  
   else
   {  
     alert("password must be same!");  
     return false;  
   }  
   if( document.myForm.email.value == "" || document.myForm.email.value == null )
   {
     alert( "Please provide your Email!" );
     document.myForm.email.focus() ;
     return false;
   }
   
        /*var x=document.myform.email.value;  
        var atposition=x.indexOf("@");  
        var dotposition=x.lastIndexOf(".");  
        if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length)
        {  
            alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
            return false;  
        } */
            
    if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.email.value))
    {
      return true;
    }
    else
    {
    alert('You have entered invalid email id');
    return false;
    }
   return( true );
}
//-->
</script>

    </head>
    <body onload='changeimage(2)'>
        <form name="myForm" action="registration.jsp" method="POST" onsubmit="return validate()">
        <div style="position:absolute;width:100%;height:100%;left:0px;top:180px" align='center'><img width="1250" height="800" id='myimage' src="image3.jpg"/></div>
        <div class="front-card" style="top:350px; height:350px; width: 350px">
            <table border="0" width="20" cellspacing="5" cellpadding="3">
           
            
                <tr>
                    <td><label><b><font size="6" color="white">SignUp</font></b></label></td>
                </tr>
                <tr>
                    <td> <label><b><font size="5" color="white">Name</label></td>
                    <td><input type="text" name="name" size="22" required//></td>
                </tr>
                <tr>
                    <td>  <label><font size="5" color="white"><b>Password </b></font></label></td>
                    <td> <input type="password" name="pass1" size="22" required//></td>
                </tr>
               
                <tr>
                    <td>  <label><font size="5" color="white"><b>Confirm Password </b></font></label></td>
                    <td> <input type="password" name="pass2" size="22" required//></td>
                </tr>
                
                <tr>
                    <td><label><font size="5" color="white"><b>E-mail Id </b></font></label></td>
                    <td><input type="text" name="email" size="22" required//></td>
                </tr>
                <tr>
                    <td><label><font size="5" color="white"><b>Security Question</b></font></label></td>
                    <td><input type="text" name="secques" size="22" required//></td>
                </tr>
                <tr>
                    <td><label><font size="5" color="white"><b>Security Answer</b></font></label></td>
                    <td><input type="text" name="secans" size="22" required//></td>
                </tr>
                <tr>
                    <td><input type="submit" style="height:35px; width:90px" onsubmit="return  validate()"><b></b></td>
                </tr>
                
           
        </table>
        </div>
        </form>
        <form method="post" action="login.jsp">
        <div id="page" style=" height: 170px; width:1450px; left:0px" >
            <img src="ifinal copy.png" height="170" width="1450">
            <Label id="lbl1" style="height:15px"><font style="size:30px" color="white">USERNAME</font></label>
            <Label id="lbl2" style="height:15px"><font style="size:30px" color="white">PASSWORD</font></label>  
            <input id="txt1" type="text" name="name" size="23"/> 
            <input id="txt2" type="password" name="pass" size="23"/>
            <input id="btn1" type="submit" value="Log In"/>
          
        </div>
        </form>
    </body>

</html>
