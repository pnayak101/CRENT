<%@ page import="java.sql.*" %>
<%


String name=request.getParameter("name");
String cno=request.getParameter("cno");
String email=request.getParameter("email");
String pwd=request.getParameter("pwd");


try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crent","root","root");
	String qr="insert into user values(?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(qr);
	
	ps.setString(1, name);
	ps.setString(2, cno);
	ps.setString(3, email);
	ps.setString(4, pwd);
	
	int i=ps.executeUpdate();
		
	if(i>0)
	{
		
		RequestDispatcher rd=request.getRequestDispatcher("ulogin.jsp");
		rd.include(request,response);
		out.println("User SignUp Sucessfull");
		
	}
	else
	{
		RequestDispatcher rd=request.getRequestDispatcher("ureg.jsp");
		rd.include(request,response);
		out.println("SignUp Not Sucessfull");
	}
	
} catch (Exception e) {
	
	out.println(e);
}

%>