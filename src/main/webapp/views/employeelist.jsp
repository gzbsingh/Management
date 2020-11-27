<%@page import="com.employee.management.utils.Addemployee"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ include file = "/views/employeelist.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


  
<head>
<title>Admin Dashboard</title>


<link href="css/container.css" rel="stylesheet" type="text/css" />
<link href="css/admin_action_page.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/display.js" ></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

<!------ Include the above in your HEAD tag ---------->


<link rel="stylesheet"
	href="https://bootswatch.com/4/simplex/bootstrap.min.css" />
<script type="text/javascript">
function EmpList() {

	var c = document.getElementById("ViewAtt");
	c.style.display = "none";

	var d = document.getElementById("YourPro");
	d.style.display = "none";
	var a = document.getElementById("AddEmp");
	a.style.display = "none";
	var e = document.getElementById("EmpList");
	e.style.display = "block";

}

</script>
</head>

<body>
<!-- Employee List Span  -->
				<span id="EmpList" style="display: none">
					<div class="container">
						<center>
							<b><h2>Employee's list</h2> <b>
							
						</center>


						<center>
							<p>
							<h4>Your Branch employees</h4>
							</p>
						</center>
						<table class="table">
							<thead>
								<tr>
									<th>SR.No</th>
									<th>ID</th>
									<th>Name</th>
									<th>Mobile</th>
									<th>Email</th>
									<th>Qualification</th>
									<th>Join date</th>


								</tr>
							</thead>
							<tbody>
							<% int i=0; 
							List<Addemployee> list =(List<Addemployee>)request.getAttribute("data");
							%>
							<% for ( Addemployee item : list) { %>
							  <tr>
							   <th scope="row"><%i++;%></th>
                             <th scope="row">${item.emp_id}</th>
     						  <th scope="row">${item.emp_name}</th>
     						    <th scope="row">${item.mobile}</th>
     						     <th scope="row">${item.email}</th>
     						      <th scope="row">${item.qualification}</th>
     						       <th scope="row">${item.join_date}</th>
  						  </tr>
  						  <% } %>
  						 
 				 </tbody>
 						
						</table>

					</div>
					</span>
</body>
</html>