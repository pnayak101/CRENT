<%@ page import="java.sql.*" %>
<%
String addr=request.getParameter("addr");
String loc=request.getParameter("loc");
String cap=request.getParameter("cap");
String rent=request.getParameter("rent");
String tin=request.getParameter("tin");
String tout=request.getParameter("tout");
String oname=request.getParameter("oname");
String cno=request.getParameter("cno");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/web","root","root");
    String qr="update cr set location=?,capacity=?,rent=?,time_in=?,time_out=?,oname=?,cno=? where address=?";
    PreparedStatement ps=con.prepareStatement(qr);
    ps.setString(8,addr);
    ps.setString(1,loc);
    ps.setString(2,cap);
    ps.setString(3,rent);
    ps.setString(4,tin);
    ps.setString(5,tout);
    ps.setString(6,oname);
    ps.setString(7,cno);
    int i=ps.executeUpdate();
    RequestDispatcher rd=request.getRequestDispatcher("editcr.jsp");
	rd.include(request, response);
    if(i>0)
    {
    	out.println("Details Updated");
    }
    else
    {
    	out.println("Details Not Updated");
    }
    con.close();
} catch (Exception e) {
	out.println(e);
}

%>