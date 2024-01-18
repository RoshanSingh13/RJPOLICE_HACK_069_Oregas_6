<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.Statement, java.sql.*, java.io.IOException, javax.servlet.ServletException, javax.servlet.annotation.WebServlet, 
javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse" %>

<%
    String u = request.getParameter("username");
    String p = request.getParameter("password");
    if(u.equals("RPH2024") && p.equals("2024"))
    	response.sendRedirect("index.html");
    try{
    	Class.forName("oracle.jdbc.driver.OracleDriver");  
    	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","suyash");  
    	Statement stmt=con.createStatement();  
    	ResultSet rs=stmt.executeQuery("select UNAME,PASS from LOGIN where UNAME='"+u+"'");  
    	String pass="";
    	session.setAttribute("user",u);  
    	if(rs.next())
    	{
    		pass = rs.getString(2);
    		if(pass.equals(p))
        	{
    			response.sendRedirect("dashboard.jsp");
        	}
        	else
        	{
        		response.sendRedirect("invalidlogin.html");
        	}
    	}
    	else
    	{
    		response.sendRedirect("invalidlogin.html");
    	}
    	
    	con.close();  
    	  
    	}catch(Exception e)
            { System.out.println(e);}  
    	  
%>
</body>
</html>