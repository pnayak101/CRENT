 <html>
<head>
<link rel="stylesheet" type="text/css" href="design.css"/>
<title>CRent-IMAGE SHOW</title>
</head>
<body>

<%
String img=request.getParameter("img");
%>
<%=img %><br>
<img src="<%=img %>" height="100%" width="100%">
</body>
</html>
