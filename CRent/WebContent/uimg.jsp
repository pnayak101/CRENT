<%@ page import="java.sql.*" %>
<% 
String img=request.getParameter("img");
String id=request.getParameter("id");


try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crent","root","root");
    String qr="update cr set img=? where id=?";
    PreparedStatement ps=con.prepareStatement(qr);
  
    ps.setString(1,img);
    ps.setString(2,id);
    
    int i=ps.executeUpdate();
    
    if(i>0)
    {
    	RequestDispatcher rd=request.getRequestDispatcher("ohome.jsp");
    	rd.include(request, response);
    	out.println("Image Added");
    }
    else
    {
    	out.println("Image No Added");
    }
    con.close();
} catch (Exception e) {
	out.println(e);
}
%>