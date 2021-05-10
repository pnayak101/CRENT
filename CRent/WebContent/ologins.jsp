<%@ page import="java.sql.*" %>

<% 

		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crent","root","root");
			String qr="select * from owner where email=? and pwd=?";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setString(1, email);
			ps.setString(2, pwd);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{ 
				session.setAttribute("uemail",email);
				%><center>
				<%
					out.println("Welcome :"+email);
				%></center>
				<%	
				RequestDispatcher rd=request.getRequestDispatcher("ohome.jsp");
				rd.include(request, response);
			
			}
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("ologin.jsp");
				rd.include(request, response);
				out.println("Invalid Email or Password,Try again");
			}
			
			
			} catch (Exception e) {
			out.println(e);
		}
%>
