<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

<head>
<link rel="stylesheet" type="text/css" href="resources/css/Main.css"/>
	<title>Enrollment Request</title>
</head>
<body>
<h1>
	Enrollment Request 
</h1>

<p> Your First name is:
 ${ fn } </p>
 
 <p>
Your Last name is:  ${ ln }
 </p>
 <p>
 Your Email is:  ${ em }
 </p>
 <p>
 Your age is: ${age}
 </p>
 <p>
 Your Phone Number is: ${phone}
 </p>
 <p>
 You have chosen the ${program} class starting on  ${date}
 </p>
 
</body>
</html>
