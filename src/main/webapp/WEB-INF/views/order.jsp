<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>
<html>
<body style="background-color: black">
<head>
<link rel="stylesheet" type="text/css" href="resources/css/Main.css"/>
	<title>Your Grocery Order</title>
</head>
<body>
<h1>
	Your List Includes the Following:
</h1>

<p> A ${ pizza } Pizza </p>
 
 <p> 
 <c:if test="${ fn:length(fruits) == 0 }">
    No Fruit Needed
  </c:if>
  
    <c:if test="${ fn:length(fruits) == 1 }">
    You need 1 piece of Fruit:
  	 </c:if>
  	 
    <c:if test="${ fn:length(fruits) > 1 }">
  	You need ${ fn:length(fruits) } pieces of Fruit:
  </c:if>
  
<ol>
<c:forEach var= "fr" items= "${ fruits }">
	<li> ${ fr } </li>
</c:forEach>
</ol>
 </p>
 
</body>
</html>
