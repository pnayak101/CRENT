<% String id=request.getParameter("id");
%>
<html>
   <head>
      <title>CRent-ADD IMAGE</title>
   
   <link rel="stylesheet" type="text/css" href="design.css"/>
   </head>
   
   <body>
   <marquee><h1>WELCOME TO CLASSROOM IMAGE ADDING PAGE</h1></marquee>
      Select a Image to upload: <br />
      <form action = "addimgs.jsp?id=<%=id%>" method = "post" enctype = "multipart/form-data">
         <input type = "file" name = "file" size = "50" /><br/>
         <input type = "submit" value = "Upload Image" />
      </form>
   </body>
   
</html>