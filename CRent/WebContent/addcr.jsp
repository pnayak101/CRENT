<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css"/>
<title>CRent-ADD CLASSROOM</title>
</head>
<body>
<marquee><h1>WELCOME TO CLASSROOM ADDITION PAGE</h1></marquee>
<form action="addcrs.jsp" method="post">
Enter Locality<input type="text" name="loc" required><br>
Enter Address<input type="text" name="addr" required><br>
Enter Capacity<input type="number" name="cap" required><br>
Enter Rent<input type="number" name="rent" required><br>
Enter Time-in<input type="time" name="tin" required><br>
Enter Time-out<input type="time" name="tout" required><br>
Enter Owner's Name<input type="text" name="oname" required><br>
Enter Contact No.<input type="number" name="cno" required><br>
Enter Status<input type="text" value="not booked" name="bornb" ><br>
<input type="submit" value="Add Classroom"><br>
</form>
</body>
</html>