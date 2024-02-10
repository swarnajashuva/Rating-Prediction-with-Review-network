<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Posts With Rank </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium600w.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style5 {font-size: 36px}
.style6 {font-size: 22px}
.style8 {font-size: 12px}
.style11 {color: #FFFFFF; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style5"><a href="index.html" class="style6">Rating Prediction With Review Network Feedback: A New Direction in Recommendation</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide2.jpg"  width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide3.jpg"  width="960" height="314" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="rss">
        <p>&nbsp;</p>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home</span></a></li>
          <li class="active"><span><a href="Admin.jsp">Admin</a></span></li>
          <li><span><a href="User.html">User</a></span></li>
          <li><span><a href="Register.html">Register</a></span></li>
          <li><a href="contact.html"><span></span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>All Posts With Rank </h2>
          <div class="clr"></div>
          <p>
            <%@ include file="connect.jsp" %>
			<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s9="",s8,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
        
           String query="select * from images order by count DESC"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		
		j=rs.getInt(8);
	    s9=rs.getString(9);
	
%>
          </p>
          
 <table width="574" border="1"  cellpadding="0" cellspacing="0"  >
   <tr>
     <td width="246" rowspan="8" ><div style="margin:10px 13px 10px 13px;" > 
             <div align="center" class="style8"> <a class="#" id="img1" href="#" >
               <input  name="image2" type="image" src="images.jsp?imgid=<%=i%>" style="width:200px; height:200px;"  />
             </a> </div>
     </div></td>
   </tr>
   <tr>
     <td  width="134" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style11" style="margin-left:20px;">Product Name </div></td>
     <td width="186"><span class="style15"> &nbsp;&nbsp;<%=s2%></span></td>
   </tr>
   <tr>
     <td  width="134" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style11" style="margin-left:20px;">Color </div></td>
     <td><span class="style15">&nbsp;&nbsp;<%=s3%></span></td>
   </tr>
   <tr>
     <td  width="134" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style11" style="margin-left:20px;">Discription</div></td>
     <td><span class="style15">&nbsp;&nbsp;<%=s4%></span></td>
   </tr>
   <tr>
     <td  width="134" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style11" style="margin-left:20px;">Uses</div></td>
     <td><span class="style15">&nbsp;&nbsp;<%=s5%></span></td>
   </tr>
   <tr>
     <td  width="134" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style11" style="margin-left:20px;">Location</div></td>
     <td><span class="style15">&nbsp;&nbsp;<%=s6%></span></td>
   </tr>
    <tr>
     <td  width="134" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style11" style="margin-left:20px;">Total Rank</div></td>
     <td><span class="style15">&nbsp;&nbsp;<%=j%></span></td>
   </tr>
   <tr>
     <td   width="134" height="62" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style11" style="margin-left:20px;">Rating of Pro </div                        ></td>
     <td><span class="style8">&nbsp;&nbsp; <% 
    if(j==3)
    {
    	%>
      <input  name="image" type="image" src="Gallery/1.png" width="140" height="30" >
      <%
    }
    if(j>3 && j<=6)
    {
    	%>
      <input  name="image" type="image" src="Gallery/2.png" width="80" height="30" >
      <%
    }
    if(j>6 && j<=9)
    {
    	%>
      <input  name="image" type="image" src="Gallery/3.png" width="100" height="30" >
      <%
    }
    if(j>9 && j<=12)
    {
    	%>
      <input  name="image" type="image" src="Gallery/4.png" width="120" height="30" >
      <%
    }
    if(j>12 && j<=15)
    {
    	%>
      <input  name="image" type="image" src="Gallery/5.png" width="140" height="30" >
      <%
    }
    if(j>15 && j<=300)
    {
    	%>
      <input  name="image" type="image" src="Gallery/6.png" width="170" height="30" >
      <%
    }
    %>
    
     </span></td>
   </tr>

    <%
       	
       	out.println("");
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
 </table>
 <p>&nbsp;</p>
 <p align="right"><a href="AdminMain.jsp">Back</a></p>
 <p></p>
</div>

      </div>
      <p>&nbsp;</p>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li></li>
            <li><a href="AdminMain.jsp">Admin Main </a></li>
            <li><a href="Admin.jsp">Log Out </a></li>
            <li></li>
            <li></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <ul class="ex_menu"><li></li>
          </ul>
        </div>
      </div>
	 
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&nbsp;</p>
   
      <div style="clear:both;"></div>
    </div>
  </div>
</div>

</body>
</html>
