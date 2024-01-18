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
 String fn = request.getParameter("fname");
 String ln = fn + request.getParameter("lname");
 String dob = (String)request.getParameter("date");
 String ml = request.getParameter("email");
 String un = request.getParameter("username");
 String p = request.getParameter("cpassword");
 try{
 	Class.forName("oracle.jdbc.driver.OracleDriver");  
 	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","suyash");  
 	PreparedStatement myStmt=con.prepareStatement("insert into login values(?,?,?,?,?)");
 	myStmt.setString(1,ln);
 	myStmt.setString(2,dob);
 	myStmt.setString(3,ml);
 	myStmt.setString(4,un);
 	myStmt.setString(5,p);
 	myStmt.execute();  
 	response.sendRedirect("SignInForm.html");        	
 	
 	con.close();  
 	  
 	}catch(Exception e)
         { System.out.println(e);}  
%>
</body>
</html>