<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css"/>
<title>CRent-HOME</title>
</head>
<body>
<marquee><h1>WELCOME TO CLASSROOM RENTAL SERVICE</h1></marquee>
<br>
<br>
<div align="left">
<a href='ologin.jsp'>Owner's Login</a><br>
<a href='oreg.jsp'>Owner's Registration</a><br>
</div>
<div align="right">
<a href='ulogin.jsp'>User's Login</a><br>
<a href='ureg.jsp'>User's Registration</a><br>
</div>
<br>
<br>
<hr>
Available Classrooms are :



</body>
</html>




<%@ page import="java.sql.*" %>

<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crent","root","root");
	String qr="select id,location,address,capacity,rent,time_in,time_out,oname,bornb from cr where bornb='not booked'";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qr);
	
	  out.println("<center>");
	  out.println("<table border=1px>");
	  out.println("<tr>");
	  out.println("<th>");
	  out.println("ID");
	  out.println("</th>");
	  out.println("<th>");
	  out.println("LOCATION");
	  out.println("</th>");
	  out.println("<th>");
	  out.println("ADDRESS");
	  out.println("</th>");
	  out.println("<th>");
	  out.println("CAPACITY");
	  out.println("</th>");
	  out.println("<th>");
	  out.println("RENT");
	  out.println("</th>");
	  out.println("<th>");
	  out.println("TIME IN");
	  out.println("</th>");
	  out.println("<th>");
	  out.println("TIME OUT");
	  out.println("</th>");
	  out.println("<th>");
	  out.println("OWNER'S NAME");
	  out.println("</th>");
	  out.println("<th>");
	  out.println("BOOKED/NOT-BOOKED");
	  out.println("</th>");
	  out.println("</tr>");
	  
	    
	while(rs.next())
	{ 
		
	   out.println("<tr>");
		out.println("<td>");
		out.println(rs.getString("id"));
		out.println("</td>");
		out.println("<td>");
		out.println(rs.getString("location"));
		out.println("</td>");
		out.println("<td>");
		out.println(rs.getString("address"));
		out.println("</td>");
		out.println("<td>");
		out.println(rs.getString("capacity"));
		out.println("</td>");
		out.println("<td>");
		out.println(rs.getString("rent"));
		out.println("</td>");
		out.println("<td>");
		out.println(rs.getString("time_in"));
		out.println("</td>");
		out.println("<td>");
		out.println(rs.getString("time_out"));
		out.println("</td>");
		out.println("<td>");
		out.println(rs.getString("oname"));
		out.println("</td>");
		out.println("<td>");
		out.println(rs.getString("bornb"));
		out.println("</td>");
	
		out.println("</tr>");
		
	}
	out.println("</table>");
	out.println("</center>");
	con.close();
} catch (Exception e) {
	
	out.println(e);
}

 %>

