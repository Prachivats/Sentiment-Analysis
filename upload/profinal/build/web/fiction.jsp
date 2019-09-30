<%-- 
    Document   : pp2
    Created on : Apr 15, 2015, 7:56:28 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <style>
            #lbl1{
                position:absolute;
                right:500px;
                
                top:100px;
            }
            #lbl2{
                position:absolute;
                
                top:250px;
            }
               #tx1{
                        
                        
			border-top:thin solid  #000000;
			border-right:thin solid #000000;
			border-bottom:0;
			border-left:thin solid  #000000;
			box-shadow:0px 1px 1px 1px #000000;
			float:left;
			height:17px;
			margin-top:300px;
                        margin-right:.10px;
			outline:0;
			padding:.4em 0 .4em .6em; 
			width:183px; 
		}
		#button-holder{
			background-color:#000000;
                       
			border-top:thin solid #e5e5e5;
			box-shadow:1px 1px 1px 1px #e5e5e5;
			cursor:pointer;
			float:left;
			height:30px;
			margin-top:300px;
                        margin-right:.10px;
			text-align:center;
			width:50px;
		}
		
		
		#button-holder img{
			margin:500px;
			width:20px; 
		}
                #id1{
                    position: absolute;
                    top:450px;
                }
                #img1{
                    position: absolute;
                    left: 300px;
                    
                }
                
	
        /*a:link{
         position:absolute;
         right:100px;
        top:20px;
         size:50px;
         width: 250px;
         height: 95px ; 
         border-radius: 10px;
         size:2000px;
         text-decoration: none
        }
        a:hover
        {
         text-decoration: underline;
        }*/
       
		</style>
		
    </head>
   
<body background="bann.jpg">
   <%@ include file="menu.jsp"%>
    <div id="images" style="top:0%;"><img src="ifinal copy.png" width="1450" height="170"> 
         </div>
    <div id="i1" style="top:40%;position:absolute;left:30px">
        <a href='logout.jsp'><font face="aerial" size="6" color="black"> <b>Log out</b></font></a>

    </div>
<form name="myform" action="Tweetcoll" method="POST">

    
    <div>
        <Label id="lbl1" style="height:300px"><font face="Viner HAnd ITC" size="5000px" color="white">Fiction</font></label>
           
    </div>
    

    <div id="id1" align="left" style="top:450px; left:300px;height:500px; width:1000px">
        <h1><font face="Viner HAnd ITC" size="4px" color="black">Fiction is the telling of stories which are not real.<br> More specifically, fiction is an imaginative form of narrative. <br> Although the word fiction is derived from the Latin fingo, fingere, finxi, fictum, "to form, create", works of fiction need not be entirely imaginary and may include real people, places, and events.<br>Although not all fiction is necessarily artistic, fiction is largely perceived as a form of art or entertainment.<br> The ability to create fiction and other artistic works is considered to be a fundamental aspect of human culture, one of the defining characteristics of humanity.</font></h1>>
    </div>
    
       <div id="img1" style="top:760px; left:300px">
    <table>
        <tr>
            <td><input type="image" name="p3" src="fiction/pic3.jpg" value="TheDaVinciCode" alt="submit button" style="height:250px; width:280px" ></td>
            <td><input type="image" name="p3" src="fiction/pic4.jpg" value="PrideAndPrejudice" alt="submit button" style="height:250px; width:280px"></td>
            <td><input type="image" name="p3" src="fiction/pic9.jpg" value="RedMoon" alt="submit button" style="height:250px; width:280px"></td>
        </tr>
        <br>
        <tr>
            <td><input type="image" name="p3" src="fiction/pic2.jpg" value="HarryPotterAndTheGobletOfFire" alt="submit button" style="height:250px; width:280px"></td>
            <td><input type="image" name="p3" src="fiction/pic10.jpg" value="TheHungerGames" alt="submit button" style="height:250px; width:280px"></td>
            <td><input type="image" name="p3" src="fiction/pic7.jpg" value="TheKiteRunner" alt="submit button" style="height:250px; width:280px"></td>
        </tr>
    </table>
    </div>
    </form>
</body>

</html>
