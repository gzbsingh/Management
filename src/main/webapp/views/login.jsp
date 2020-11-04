<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="login" method="post">
<input type="text" name="name" >
<input type="Submit" name="btn">
</form>
<%
   Object n=request.getAttribute("name");%>
  <h2> value<%= n %></h2>

</body>
</html>