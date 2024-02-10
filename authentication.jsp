
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
   	String username=request.getParameter("userid");      
   	String Password=request.getParameter("pass");
	
    try{
		if(username.equalsIgnoreCase("admin")){
			application.setAttribute("user",username);
			String sql="SELECT * FROM admin where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			String utype="";
			if(rs.next()){
				
				response.sendRedirect("AdminMain.jsp");
			}
			else
			{
				response.sendRedirect("WrongLogin.jsp");
			}
		}
		else{
			application.setAttribute("uname",username);
			String sql="SELECT * FROM user where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			String utype="";
			if(rs.next()){
				
				int i = rs.getInt(1);
				application.setAttribute("uid",i); 
				response.sendRedirect("UserMain.jsp");
			}
			else
			{
				response.sendRedirect("WrongLogin.jsp");
			}
		}
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>