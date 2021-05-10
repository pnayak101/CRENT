<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css"/>
<title>CRent-OWNER'S HOME</title>
</head>
<body>
<marquee><h1>WELCOME TO OWNER'S HOME PAGE</h1></marquee>
<a href='addcr.jsp'>ADD CLASSROOM</a><br>
<a href='removecr.jsp'>REMOVE CLASSROOM</a><br>
<a href='editcr.jsp'>EDIT CLASSROOM DETAILS</a><br>
<a href='bookedcrs.jsp'>SHOW BOOKED CLASSROOM</a><br>
<a href='unbookedcrs.jsp'>SHOW NOT BOOKED CLASSROOM</a><br>

</body>
</html>



<%@ page import="java.sql.*" %>

<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crent","root","root");
	String qr="select * from cr";
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
  out.println("CONTACT NO.");
  out.println("</th>");
  out.println("<th>");
  out.println("BOOKED/NOT-BOOKED");
  out.println("</th>");
  out.println("<th>");
  out.println("CHANGE STATUS");
  out.println("</th>");
  out.println("<th>");
  out.println("SHOW IMAGE");
  out.println("</th>");
  out.println("<th>");
  out.println("IMAGE");
  out.println("</th>");
  out.println("</tr>");
  
    
while(rs.next())
{ 
	String id=rs.getString("id");
	
	
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
	out.println(rs.getString("cno"));
	out.println("</td>");
	out.println("<td>");
	out.println(rs.getString("bornb"));
	out.println("</td>");
	out.println("<td><a href='bookcrs.jsp?id="+id+"'>BOOK</a>  <a href='unbookcrs.jsp?id="+id+"'>VACANT</a></td>");
	String img=rs.getString("img");
	out.println("<td><a href='imgshow.jsp?img="+img+"'>SHOW IMAGE</a></td>");    
	out.println("<td><a href='addimg.jsp?id="+id+"'>ADD IMAGE</a></td>");
	
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