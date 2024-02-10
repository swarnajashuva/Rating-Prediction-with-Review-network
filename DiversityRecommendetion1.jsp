<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Diversity Recommendation </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style4 {padding:0; margin:0; width:100%; line-height:0; clear: both;}
.style5 {font-size: 36px}
.style6 {font-size: 22px}
.style8 {font-size: 12px}
.style9 {
	color: #FF0000;
	font-weight: bold;
}
.style10 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main style3">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style5"><a href="index.html" class="style6">Rating Prediction With Review Network Feedback: A New Direction in Recommendation</a></h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
        </form>
      </div>
      <div class="style4"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide2.jpg"  width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide3.jpg"  width="960" height="314" alt="" /></a> </div>
        <div class="style4"></div>
      </div>
      <div class="style4"></div>
      <div class="rss"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home</a></li>
          <li class="active"><a href="Admin.jsp">Admin</a> </li>
          <li><a href="User.html">User</a></li>
          <li><a href="Register.html">Rgister</a></li>
          <li><a href="contact.html"></a></li>
        </ul>
      </div>
      <div class="style4"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>Diversity Recommendation </h2>
          
          <div class="style4"></div>
          <div class="style4"></div>
        </div>
        <p >       <%@ include file="connect.jsp" %>
			<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%

      	
	String i="",name="",from="",to="",details="",date="";
	int j=0;

      	try 
	{
           String id= request.getParameter("id");
	
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
     <td width="246" rowspan="5" ><div style="margin:10px 13px 10px 13px;" > 
             <div align="center" class="style8"> <a class="#" id="img1" href="#" >
               <input  name="image2" type="image" src="images.jsp?imgid=<%=i%>" style="width:200px; height:200px;"  />
             </a> </div>
     </div></td>
   </tr>
   <tr>
     <td  width="144" height="30" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left" class="style9" style="margin-left:20px;">Product ID </div></td>
     <td width="176"><span class="style15"> &nbsp;&nbsp;<%=i%></span></td>
   </tr>
   <tr>
     <td  width="144" height="30" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left" class="style9" style="margin-left:20px;">Product Name </div></td>
     <td><span class="style15">&nbsp;&nbsp;<%=name%></span></td>
   </tr>
 
     <tr>
     <td  width="144" height="30" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left " class="style9" style="margin-left:20px;">Rank</div></td>
     <td><span class="style15">&nbsp;&nbsp;<%=j%></span></td>
   </tr>
   <tr>
     <td   width="144" height="62" align="left" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left" class="style9" style="margin-left:20px;">Rating of Pro </div                        ></td>
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
    <tr>
      <td  width="144" height="30" colspan="1" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style9">Recommended By</div></td>
      <td  width="144" height="30" colspan="1" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style9">Recommended Details </div></td>
      <td  width="144" height="30" colspan="1" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left" class="style10" style="margin-left:20px;">
	   <div align="center"><strong>Date</strong></div>
	 </div></td> 
   </tr>
   <%
   
   
   	   String str="select * from imagerecommend where imgid='"+i+"'"; 
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(str);
	while ( rs1.next() )
	   {
	     from=rs1.getString(1);
		 details=rs1.getString(3);
		 date=rs1.getString(5);
	   
	 %>  
	 <tr>
   <td height="36"><div align="center"><span class="style15">&nbsp;&nbsp;<%=from%></span></div></td>
   <td><div align="center"><span class="style15">&nbsp;&nbsp;<%=details%></span></div></td>
   <td><div align="center"><span class="style15">&nbsp;&nbsp;<%=date%></span></div></td>
   <tr>   </tr>
  
   

    <%
       	
       	out.println("");
						}}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
               <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>					
        </table>
 </p>
            <div align="right">
              <p>&nbsp;</p>
              <p><a href="DiversityRecommendetion.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Sidebar Menu</h2>
          <div class="style4"></div>
          <ul class="sb_menu">
            <li><a href="#"><br />
            Home</a></li>
            <li><a href="Admin.jsp">Admin</a></li>
            <li><a href="User.html">User</a></li>
            <li><a href="Register.html">Register</a></li>
            <li></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="style4"></div>
    </div>
  </div>
  <div class="fbg">
    
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
