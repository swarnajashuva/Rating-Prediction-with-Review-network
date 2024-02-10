<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Main</title>
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
.style7 {color: #FF00FF}
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
          <li class="active"><a href="AdminMain.jsp">Admin</a></li>
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
          <h2><span class="style7">All Request and Response Details... </span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#99FF99">
					  <td  width="142" height="0" valign="baseline" style="color: #2c83b0;"><div align="center"><b>Username</b></div></td>
					  <td  width="141" height="0" valign="baseline" style="color: #2c83b0;"><div align="center"><strong>Request Sent To </strong></div></td>
  					
					  <td   width="115" height="0" valign="baseline" style="color: #2c83b0;"><div align="center"><strong>Status</strong></div></td>
					  <td  width="188" height="0" valign="baseline" style="color: #2c83b0;"><div align="center"><b>Date &amp; Time </b></div></td>
					</tr>
					<%@ include file="connect.jsp" %>
					<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
	String query="select * from req_res"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		
					%>
							<tr bgcolor="#33FFCC">
								<td  width="142" height="0" valign="baseline" ">&nbsp;&nbsp;
							  <%out.println(s1);%></td>	
								<td  width="141" height="0" valign="baseline">&nbsp;&nbsp;
							  <%out.println(s2);%></td>
								<td  width="115" height="0" valign="baseline">&nbsp;&nbsp;
							  <%out.println(s3);%></td>
							  <td  width="188" height="0" valign="baseline">&nbsp;&nbsp;
						      <%out.println(s4);%></td>
					
						
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
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						
			  </tr>
		</table>
          <p><a href="AdminMain.jsp">Back</a></p>
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
          <div class="clr"></div>
          <ul class="sb_menu"><li></li>
            <li><a href="ViewAllUsers.jsp">View All  Users</a></li>
            <li><a href="AddImage.jsp">Add Posts</a></li>
            <li><a href="allpostswithrank.jsp">View All Posts with ranks</a></li>
            <li><a href="AllRecommendedPost.jsp">View All Recommended Posts</a></li>
            <li><a href="AllReviewedPost.jsp">View All Service usage reviewed Posts</a></li>
            <li><a href="AllUserSearchHistory.jsp">View All Search History</a></li>
            <li><a href="DiversityRecommendetion.jsp">Find Diversity recommendations</a></li>
			<li><a href="TopK_Results.jsp">Find Top k Hit Rate in Chart</a></li>
			<li><a href="Index.jsp">Log out</a></li>
			
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
