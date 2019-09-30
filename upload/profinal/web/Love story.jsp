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
	/*#logout a{
         position:absolute;
        left:1200px;
         top:130px;
         width: 100px;
         height: 35px ; 
         border-radius: 10px;
         size: 100px;
         text-decoration: none
        }
       
        a:link{
         position:absolute;
         left:1200px;
         top:50px;
         size: 50px;
         width: 250px;
         height: 95px ; 
         border-radius: 10px;
         size:2000px;
         text-decoration: none
        }
        #logout a:hover
        {
         text-decoration: underline;
        }*/
       

		</style>
		
    </head>
   
<body background="bann.jpg">
    <%@ include file="menu.jsp"%>
    <div id="images" style="top:0%;"><img src="ifinal copy.png" width="1450" height="170"> </div>
    <div id="i1" style="top:40%;position:absolute;left:30px">
        <a href='logout.jsp'><font face="aerial" size="6" color="black"> <b>Log out</b></font></a>

    </div>
    <img src="bann.jpg" style="height: 400px; width: 1450px">
<form name="myform" action="Tweetcoll" method="POST">

    
    <div>
        <Label id="lbl1" style="height:300px"><font face="Viner HAnd ITC" size="5000px" color="white">Love Story</font></label>

    </div>
   

    <div id="id1" align="left" style="top:450px; left:300px;height:500px; width:1000px">
        <h1><font face="Viner HAnd ITC" size="4px" color="black">According to the Romance Writers of America, "Two basic elements comprise every romance novel:<br> a central love story and an emotionally-satisfying and optimistic ending."<br> Both the conflict and the climax of the novel should be directly related to that core theme of developing a romantic <br>relationship, although the novel can also contain subplots that do not specifically relate to the main characters' romantic love.<br> Other definitions of a romance novel may be broader,<br> including other plots and endings or more than two people, or narrower, restricting the types of romances or conflicts.</font></h1>>
    </div>
    
    <div id="img1" style="top:760px; left:300px">
    <table>
        <tr>
            <td><input type="image" name="p3" src="love story/1.jpg" value="FallWithMe" alt="submit button" style="height:250px; width:280px"></td>
            <td><input type="image" name="p3" src="love story/2.png" value="TheStartOfMeAndYou" alt="submit button" style="height:250px; width:280px"></td>
                    </tr>
        <br>
        <tr>
            <td><input type="image" name="p3" src="love story/5.jpg" value="LoveStory" alt="submit button" style="height:250px; width:280px"></td>
            <td><input type="image" name="p3" src="love story/7.jpg" value="TheAgency" alt="submit button" style="height:250px; width:280px"></td>
        </tr>
    </table>
    </div>
    </form>
</body>

</html>

