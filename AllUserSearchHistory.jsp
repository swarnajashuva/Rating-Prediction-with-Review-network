<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Users Search History </title>
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
.style9 {color: #00aeff; font-size: 14px; }
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
          <li class="active"><a href="Admin.html"><span>Admin</span></a></li>
          <li ><span><a href="User.html">User</a></span></li>
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
          <h2><span>All Users Search History </span></h2>
          <div class="clr"></div>
		  
 
        
           <p>&nbsp;</p>
           <table width="552" border="1" align="center"  cellpadding="0" cellspacing="0"  >
            <tr>
              <th width="51" scope="col"><span class="style9">SI NO </span></th>
              <th width="174" scope="col"><span class="style9">UserName</span></th>
              <th width="172" scope="col"><span class="style9">Keyword</span></th>
              <th width="145" scope="col"><span class="style9">Date &amp; Time </span></th>
            </tr>
			           <%@ include file="connect.jsp" %>
			<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%

      	
	String s1="",s2="",s3="",s4="",s5="";
    int i=0;

      	try 
	{
        
           String query="select * from search "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		
		
	
%>
            <tr>
              <td height="47"><div align="center"><span class="style15"><%=i%></span></div></td>
              <td><div align="center"><span class="style15"><%=s2%></span></div></td>
              <td><div align="center"><span class="style15"><%=s3%></span></div></td>
              <td><div align="center"><span class="style15"><%=s4%></span></div></td>
            </tr>
					 <%

		}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            <tr>
              <td height="20">&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
          </table>
          <p align="right"><a href="AdminMain.jsp">Back</a></p>
          <p>
          </p>
<p>&nbsp;</p>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <ul class="sb_menu"><li></li>
            <li><a href="AdminMain.jsp">Admin Main</a></li>
            <li><a href="Admin.jsp">Log Out </a></li>
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
