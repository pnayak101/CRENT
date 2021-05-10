<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css"/>
<title>CRent-EDIT CLASSROOM</title>
</head>
<body>
<marquee><h1>WELCOME TO CLASSROOM DETAILS UPDATION PAGE</h1></marquee>
<form action="editcrs.jsp" method="post">
Enter Address<input type="text" name="addr" required><br>
<hr>
Enter The Details To Update:<br>
Enter Locality:<input type="text" name="loc" ><br>
Enter Capacity:<input type="number" name="cap" ><br>
Enter Rent:<input type="number" name="rent" ><br>
Enter Time-in:<input type="time" name="tin" ><br>
Enter Time-out:<input type="time" name="tout" ><br>
Enter Owner's Name:<input type="text" name="oname" ><br>
Enter Contact No.:<input type="number" name="cno" ><br>
<input type="submit" value="Update"><br>
</form>
</body>
</html>