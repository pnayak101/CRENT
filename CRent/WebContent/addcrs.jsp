<%@ page import="java.sql.*" %>
<%
	
	String loc=request.getParameter("loc");
	String addr=request.getParameter("addr");
	String cap=request.getParameter("cap");
	String rent=request.getParameter("rent");
	String tin=request.getParameter("tin");
	String tout=request.getParameter("tout");
	String oname=request.getParameter("oname");
	String cno=request.getParameter("cno");
	String bornb=request.getParameter("bornb");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crent","root","root");
		String qr="insert into cr (location,address,capacity,rent,time_in,time_out,oname,cno,bornb) values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(qr);
		
		ps.setString(1, loc);
		ps.setString(2, addr);
		ps.setString(3, cap);
		ps.setString(4, rent);
		ps.setString(5, tin);
		ps.setString(6, tout);
		ps.setString(7, oname);
		ps.setString(8, cno);
		ps.setString(9, bornb);
		int i=ps.executeUpdate();
		
			RequestDispatcher rd=request.getRequestDispatcher("addcr.jsp");
			rd.include(request, response);
	
		if(i>0)
		{
			out.println("Classroom Added");
		}
		else{
			out.println("Classroom Not Added");
		}
		con.close();
	} catch(Exception e)
	{
		out.println(e);
	}
	
%>