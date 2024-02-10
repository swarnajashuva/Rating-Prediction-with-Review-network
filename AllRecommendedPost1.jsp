<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Recommended Posts</title>
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
          <li><span><a href="Admin.jsp">Admin</a></span></li>
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
          <h2>Recommended  Posts Based on Service Usage History </h2>
          <div class="clr"></div>
          <p>
            <%@ include file="connect.jsp" %>
			<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%

      	
	String i="",name="",from="",to="",details="",date="";
	int j=0;

      	try 
	{
           String id= request.getParameter("id");
		   String from1= request.getParameter("from");
		   String to1= request.getParameter("to");
		   
		   String str="select * from imagerecommend where imgid='"+id+"' and recommendfrom='"+from1+"' and recommendto='"+to1+"'"; 
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(str);
	while ( rs1.next() )
	   {
	     to=rs1.getString(2);
		 details=rs1.getString(3);
		 date=rs1.getString(5);
	   from=rs1.getString(1);
	   }
           String query="select * from images where id='"+id+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getString(1);
		name=rs.getString(2);
		
		j=rs.getInt(8);
	    
	
%>
          </p>
          
 <table width="574" border="1"  cellpadding="0" cellspacing="0"  >
   <tr>
     <td width="246" rowspan="9" ><div style="margin:10px 13px 10px 13px;" > 
             <div align="center" class="style8"> <a class="#" id="img1" href="#" >
               <input  name="image2" type="image" src="images.jsp?imgid=<%=i%>" style="width:200px; height:200px;"  />
             </a> </div>
     </div></td>
   </tr>
   <tr>
     <td  width="144" valign="middle" height="30" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b >Product ID </b></div></td>
     <td width="176"><span class="style15"> &nbsp;&nbsp;<%=i%></span></td>
   </tr>
   <tr>
     <td  width="144" valign="middle" height="30" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong>Product Name </strong></div></td>
     <td><span class="style15">&nbsp;&nbsp;<%=name%></span></td>
   </tr>
   <tr>
     <td  width="144" valign="middle" height="30" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Recommended From </strong></div></td>
     <td><span class="style15">&nbsp;&nbsp;<%=from%></span></td>
   </tr>
   <tr>
     <td  width="144" valign="middle" height="30" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong>Recommended To </strong></div></td>
     <td><span class="style15">&nbsp;&nbsp;<%=to%></span></td>
   </tr>
   
   <tr>
     <td  width="144" valign="middle" height="30" style="color: #2c83b0;"><div align="left " style="margin-left:20px;"><strong>Date</strong                      ></div></td>
     <td><span class="style15">&nbsp;&nbsp;<%=date%></span></td>
   </tr>
   <tr>
     <td  width="144" valign="middle" height="30" style="color: #2c83b0;"><div align="left " style="margin-left:20px;"><strong>Recommended Details</strong                      ></div></td>
     <td><span class="style15">&nbsp;&nbsp;<%=details%></span></td>
   </tr>
   <tr>
     <td  width="144" valign="middle" height="30" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong>Rating </strong></div></td>
     <td><span class="style15">&nbsp;&nbsp;<%=j%></span></td>
   </tr>
   <tr>
     <td   width="144" align="left" valign="middle" height="62" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Rating of Pro </strong></div                        ></td>
     <td><span class="style8">&nbsp;&nbsp; <% 
    if(j>0 && j<=3)
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
 </p>
 </p>
 <div align="right"><a href="AllRecommendedPost.jsp"></a></div>
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
