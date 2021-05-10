<%@ page import="java.sql.*" %>
<%


String email=request.getParameter("email");
String name=request.getParameter("name");
String pwd=request.getParameter("pwd");


try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crent","root","root");
	String qr="insert into owner values(?,?,?)";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, email);
	ps.setString(2, name);
	ps.setString(3, pwd);
	
	int i=ps.executeUpdate();
		
	if(i>0)
	{
		
		RequestDispatcher rd=request.getRequestDispatcher("ologin.jsp");
		rd.include(request,response);
		out.println("User SignUp Sucessfull");
		
	}
	else
	{
		RequestDispatcher rd=request.getRequestDispatcher("oreg.jsp");
		rd.include(request,response);
		out.println("SignUp Not Sucessfull");
	}
	
} catch (Exception e) {
	
	out.println(e);
}

%>