<%-- 
    Document   : menu
    Created on : Mar 10, 2015, 2:33:25 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="refresh" content="67">


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







	

</style>
</head>


<body>
<div class="nav" style="height:200px;width:3000px;position:absolute; top:26%;float:left;">
<ul>
	<li><a href="Home.jsp" style="width:140px">Home</a></li>
        <li><a href="#" style="width:140px">Genres</a>
		<ul>
		<li><a href="fiction.jsp">Fiction</a></li>
		<li><a href="Children.jsp">Children</a></li>
		<li><a href="Love story.jsp">Love story</a></li>
		<li><a href="horror.jsp">Horror</a></li>
                <li><a href="Science.jsp">Science Fiction</a></li>
		</ul>
	 </li>
	<li><a href="contact.jsp" style="width:140px">Contact us</a></li>
	<li><a href="about.jsp" style="width:140px">About us</a></li>
</ul>
</div>

 
</body>
</html>