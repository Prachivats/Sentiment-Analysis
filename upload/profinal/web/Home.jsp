<%-- 
    Document   : Home.jsp
    Created on : 15 Apr, 2015, 9:44:02 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <style>
            .nav ul ul {
	display: none;
}

	.nav ul li:hover > ul {
		display: block;
	}
.nav ul {
	background: #efefef; 
	background: linear-gradient(top, #efefef 0%, #bbbbbb 100%);  
	background: -moz-linear-gradient(top, #efefef 0%, #bbbbbb 100%); 
	background: -webkit-linear-gradient(top, #efefef 0%,#bbbbbb 100%); 
	
	padding: 0 0px;
	border-radius: 10px;  
	list-style: none;
	position: relative;
	display: inline-table;
	top:0;
	
}
	.nav ul:after {
		content: ""; clear: both; display: block;
	}
.nav ul li {
	float: left;
}
	.nav ul li:hover {
		background: #4b545f;
		background: linear-gradient(top, #4f5964 0%, #5f6975 40%);
		background: -moz-linear-gradient(top, #4f5964 0%, #5f6975 40%);
		background: -webkit-linear-gradient(top, #4f5964 0%,#5f6975 40%);
	}
		.nav ul li:hover a {
			color: #fff;
		}
	
	.nav ul li a {
		display: block; padding: 11px 110px;
		color: #757575; text-decoration: none;
	}

.nav ul ul {
	background: #5f6975; border-radius: 0px; padding: 0;
	position: absolute; top: 100%;
}
	.nav ul ul li {
		float: none; 
		border-top: 1px solid #6b727c;
		border-bottom: 1px solid #575f6a;
		position: relative;
	}
		.nav ul ul li a {
			padding: 15px 110px;
			color: #fff;
		}	
			.nav ul ul li a:hover {
				background: #4b545f;
			}
         div.first{
                position:absolute;
                right: 10px;
                background-color: #bbbbbb;
            }
            div.second{
                position:absolute;
                right: 10px;
                background-color: khaki;
            }
            div.third{
                position:absolute;
                right:10px;
                background-color: burlywood;
            }
            
 
       /*
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
        }
       */

        </style>
    </head>
    <body>
        <div id="page" style=" height: 170px; width:1450px; left:0px" >
            <img src="ifinal copy.png" height="170" width="1450">
        </div>
       
        <div class="nav" style="height:200px;width:1355px;position:absolute; top:25%;float:left;">
        <ul>
            <li style="width: 335px"><a href="Home.jsp">Home</a></li>
            <li style="width:335px"><a href="#">Genres</a>
		<ul>
		<li><a href="fiction.jsp">Fiction</a></li>
		<li><a href="Children.jsp">Children</a></li>
		<li><a href="Love story.jsp">Love story</a></li>
		<li><a href="horror.jsp">Horror</a></li>
                <li><a href="Science.jsp">Science Fiction</a></li>
		</ul>
            </li>
            <li style="width:335px"><a href="contact.jsp">Contact us</a></li>
            <li style="width:335px"><a href="about.jsp">About us</a></li>
</ul>
</div>
               <div class="first" style="top:260px; height:200px; width: 360px; float:right">
            <h2>Deciding what to read next?</h2>
            <p><b><font size="4">You’re in the right place. Tell us what titles or 
            genres you’ve enjoyed in the past, and we’ll 
            give you surprisingly insightful 
            recommendations.</font></b></p>
        </div>
        <div class="second" style="top:480px; height:220px; width: 360px; float:right">
            <h2>Books that inspire you.</h2>
            <h2>Handpicked.</h2>
            <p><b><font size="4">Books you'll stay up all night reading; books that will whisk you to far away places and times, books that will expand 
            your mind and inspire you - the kinds of books you just 
            can't wait to tell your friends about. </font></b>
            </p>
        </div>
        <div class="third" style="top:720px; height:200px; width: 360px; float:right">
            <h2>Deciding what to read next?</h2>
            <p><b><font size="4">You’re in the right place. Tell us what titles or
            genres you’ve enjoyed in the past, and we’ll 
            give you surprisingly insightful
            recommendations.</font></b></p>
        </div>
        <br>
            <img src="pride-and-prejudice.jpg" style="height:340px; width:280px">
            <img src="image15.jpg" style="height:340px; width:280px">
              <img src="image5.jpg" style="height:340px; width:280px">
              <br>
              <br>
              <br>
               <img src="image9.jpg" style="height:340px; width:280px">
                <img src="image16.jpg" style="height:340px; width:280px">
                 <img src="image6.jpg" style="height:340px; width:280px">
    </body>
</html>
