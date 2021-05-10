<%@ page import="java.sql.*" %>
<%
	String addr=request.getParameter("addr");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crent","root","root");
		String qr="delete from cr where address=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1,addr);
		int i=ps.executeUpdate();
		RequestDispatcher rd=request.getRequestDispatcher("removecr.jsp");
		rd.include(request, response);
		if(i>0)
		{
			out.println(" Classroom Deleted");
		}
		else
		{
			out.println("Classroom Not Deleted");
		}
		}catch (Exception e) {
		
		out.println(e);
	}
	
%>