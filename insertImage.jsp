<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 
	Template 2047 Brown Field
	by www.tooplate.com 
-->
<title>Structured Learning: Image Insertion page</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />


</head>
<body>

<div id="#"><!-- end of forever header -->
  <!-- end of middle -->
  <div id="#">
    	
       
        
        <div class="#">
       	  <div class="#">
            	<h2>Image Uploading.</h2>
            	<p>&nbsp;</p>
            	<p>&nbsp;</p>
            	<p>&nbsp;</p>
            	<p>&nbsp;</p>
            	<p>&nbsp;</p>
            	<p>&nbsp;</p>
            	<p>&nbsp;</p>
            	<p>&nbsp;</p>
            	<p><a href="AdminMain.jsp">Back</a></p>
            	<div style="width:380px; margin:0 0 0 0px;">
			  	<%
				try {
					String imguname = (String )application.getAttribute("uname");
					
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery/");
					String paramname=null;
					String file=null;
					String a=null,b=null,c=" ",d=null,image=null;
					String ee=null;
					String checkBok=" ";
					int ff=0;
					String bin = "";
					FileInputStream fs=null;
					File file1 = null;	
					
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("tag"))
							{
								a=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("color"))
							{
								b=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("desc"))
							{
								c=c+" "+multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("uses"))
							{
								d=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("location"))
							{
								ee=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("pic"))
							{
								image=multi.getParameter(paramname);
							}
							}
					
							
							int f = 0;
							Enumeration files = multi.getFileNames();	
							while (files.hasMoreElements()) 
							{
								paramname = (String) files.nextElement();
								if(paramname.equals("d1"))
								{
									paramname = null;
								}
								
								if(paramname != null)
								{
									f = 1;
									image = multi.getFilesystemName(paramname);
									String fPath = context.getRealPath("Gallery\\"+image);
									file1 = new File(fPath);
									fs = new FileInputStream(file1);
									list.add(fs);
								
									String ss=fPath;
									FileInputStream fis = new FileInputStream(ss);
									StringBuffer sb1=new StringBuffer();
									int i = 0;
									while ((i = fis.read()) != -1) {
										if (i != -1) {
											//System.out.println(i);
											String hex = Integer.toHexString(i);
											// session.put("hex",hex);
											sb1.append(hex);
											// sb1.append(",");
										
											String binFragment = "";
											int iHex;
				 
											for(int i1= 0; i1 < hex.length(); i1++){
												iHex = Integer.parseInt(""+hex.charAt(i1),16);
												binFragment = Integer.toBinaryString(iHex);
				
												while(binFragment.length() < 4){
													binFragment = "0" + binFragment;
												}
												bin += binFragment;
												//System.out.print(bin);
											}
										}	
									}
								}
								}		
							
							FileInputStream fs1 = null;
							//name=dirName+"\\Gallery\\"+image;
							int lyke=0;
							//String as="0";
							//image = image.replace(".", "_b.");
							
							PreparedStatement ps=connection.prepareStatement("insert into images(tag,color,description,uses,location,imagess,count,binaryimage,imagetitle,uname) values(?,?,?,?,?,?,?,?,?,?)");
							ps.setString(1,a);
							ps.setString(2,b);
							ps.setString(3,c);	
							ps.setString(4,d);
							ps.setString(5,ee);
							ps.setBinaryStream(6, (InputStream)fs, (int)(file1.length()));
							ps.setInt(7,lyke);
							ps.setString(8,bin);				
								
							if(f == 0)
								ps.setObject(6,null);
							else if(f == 8)
							{
								fs1 = (FileInputStream)list.get(0);
								ps.setBinaryStream(6,fs1,fs1.available());
							}	
								ps.setString(9, image);
								ps.setString(10, imguname);
							int x=ps.executeUpdate();
							String imgmsg="";
							if(x>0){
								request.setAttribute("imgmsg","successful");
								
								%>
								<jsp:forward page="AddImage1.jsp" />
								<%
							}
							else{
								
								request.setAttribute("imgmsg","Failure");
								%>
								<jsp:forward page="AddImage.jsp" />
								<%
							}
						} 
						catch (Exception e) 
						{
							out.println(e.getMessage());
						}
					%>
			</div>
					
					
				   
		  </div>
		  </div>    	
	
			<div class="cleaner"></div>
	  </div> <!-- end of main -->
		<div id="tooplate_main_bottom"></div>
	
	</div> <!-- wrapper -->
	</body>
	</html>