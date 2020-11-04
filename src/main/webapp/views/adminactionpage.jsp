
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<head>
<title>Admin Dashboard</title>

	

<link href="css/container.css" rel="stylesheet" type="text/css" />
<link href="css/admin_action_page.css" rel="stylesheet" type="text/css" />

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

<!--This is style for home page*/-->
<script>
	function AddEmp() {

		var a = document.getElementById("AddEmp");
		a.style.display = "block";

		var c = document.getElementById("ViewAtt");
		c.style.display = "none";

		var d = document.getElementById("YourPro");
		d.style.display = "none";
		var e = document.getElementById("EmpList");
		e.style.display = "none";

	}
	function ViewAtt() {

		var a = document.getElementById("AddEmp");
		a.style.display = "none";

		var c = document.getElementById("ViewAtt");
		c.style.display = "block";

		var d = document.getElementById("YourPro");
		d.style.display = "none";

		var e = document.getElementById("EmpList");
		e.style.display = "none";

	}
	function YourPro() {

		console.log("function called");
		var a = document.getElementById("AddEmp");
		a.style.display = "none";
		console.log("after add emp");

		var c = document.getElementById("ViewAtt");
		c.style.display = "none";
		console.log("after view att");
		var e = document.getElementById("EmpList");
		e.style.display = "none";
		console.log("after emp list");
		var d = document.getElementById("YourPro");
		d.style.display = "block";
		console.log("it works");

	}
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
	<div class="head_color">
		<div class="logo">
			<img src="img/logo123_burned.png"
				style="height: 124px; margin-top: -18px; float: left;" alt="" />
		</div>


		<h1 style="font-weight: 555;">Employee Management System</h1>

		<p>Stop chasing the money and start chasing the passion.</p>

	</div>
	<!--Navigation bar-->
	<nav class="navbar navbar-expand-sm bg-darkl navbar-dark">

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">


				<li class="nav-item"><a class="nav-link active" href="#">Admin
						Dashboard</a></li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid Data-body">

		<div class="row">
			<div class="col-sm-2  menu-item">
				<div class="btn-group-vertical">
					<button class="menu">Present</button>
					<button class="menu" onclick="AddEmp()">Add Employee</button>

					<button class="menu" onclick="ViewAtt()">View Attendence</button>
					<button class="menu" onclick="YourPro()">Your Profile</button>
					<button class="menu" onclick="EmpList()">Employee List</button>


				</div>
			</div>
			<div class="col-sm-10 Data-container" id="container">

				<!--Add Employee Span  -->
				<span id="AddEmp" style="display: none">
					<form class="form-inline" method="post"
						action="AddEmployee" enctype="multipart/form-data">
						<table>
							<tr id="last_id">
								<td></td>
							</tr>

							<tr>
								<td><label>Profile photo</label></td>
								<td><input type="file" name="path" required /></td>
								<td><label>Employee id(*)</label></td>
								<td><input type="text" name="emp_id" required /></td>
							</tr>
							<tr>
								<td><label>Employee name(*)</label></td>
								<td><input type="text" name="Name" required /></td>
								<td><label>Father's name(*)</label></td>
								<td><input type="text" name="Father_name" /></td>
							</tr>
							<tr>
								<td>Date of birth</td>
								<td><input type="date" name="dob" /></td>
								<td><label>City</label></td>
								<td><input type="text" name="City" /></td>
							</tr>
							<tr>
								<td><label>Pin code</label></td>
								<td><input type="text" name="Pincode" required /></td>
								<td><label>Mobile</label></td>
								<td><input type="text" name="Mobile" required /></td>
							</tr>
							<tr>
								<td><label>Email (*)</label></td>
								<td><input type="text" name="Email" required /></td>
								<td><label>Blood group</label></td>
								<td><input type="text" name="Blood_group" /></td>
							</tr>
							<tr>
								<td><label>Qualification</label></td>
								<td><input type="text" name="Qualification" required /></td>
								<td><label>Bank account</label></td>
								<td><input type="text" name="Account" /></td>
							</tr>
							<tr>
								<td><label>Join date</label></td>
								<td><input type="date" name="Join_date" required /></td>
								<td><label>Experience</label></td>
								<td><input type="text" name="Exp" /></td>
							</tr>
							<tr>
								<td><label>Pan no.</label></td>
								<td><input type="text" name="Pan_no" /></td>
								<td><label>Aadhar no.</label></td>
								<td><input type="text" name="Aadhar_no" /></td>
							</tr>
							<tr>
								<td><label>Employee type</label></td>
								<td><input type="text" name="Role" /></td>
							</tr>
						</table>
						<button type="Submit" name="btn_Add" value="Submit">Submit</button>

					</form>

				</span>

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
						
							
							  <tr>
                             <th scope="row"></th>
     						 
  						  </tr>
 				 </tbody>
 						
						</table>

					</div>
				</span>
				<!-- View Attendance Span  -->
				<span id="ViewAtt" style="display: none">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Heading</th>
									<th scope="col">Heading</th>
									<th scope="col">Heading</th>
									<th scope="col">Heading</th>
									<th scope="col">Heading</th>
									<th scope="col">Heading</th>
									<th scope="col">Heading</th>
									<th scope="col">Heading</th>
									<th scope="col">Heading</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
									<td>Cell</td>
								</tr>
							</tbody>
						</table>
					</div>


				</span>

				<!--Your profile Span  -->
				<span id="YourPro" style="display: none">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<div class="card">

									<div class="card-body">
										<div class="card-title mb-4">
											<div class="d-flex justify-content-start">
												<div class="image-container">

													<div class="middle"></div>
													<form method="post" action="admin_action_page.php"
														enctype="multipart/form-data">
														<input type="file" name="file" />
														<button type="Submit" name="upload" value="submit">Upload</button>
													</form>


												</div>

												<div class="ml-auto">
													<input type="button" class="btn btn-primary d-none"
														id="btnDiscard" value="Discard Changes" />
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-12">
												<ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
													<li class="nav-item"><a class="nav-link active"
														id="basicInfo-tab" data-toggle="tab" href="#basicInfo"
														role="tab" aria-controls="basicInfo" aria-selected="true">Basic
															Info</a></li>
													<li class="nav-item"><a class="nav-link"
														id="connectedServices-tab" data-toggle="tab"
														href="#connectedServices" role="tab"
														aria-controls="connectedServices" aria-selected="false">Connected
															Services</a></li>
												</ul>
												<div class="tab-content ml-1" id="myTabContent">
													<div class="tab-pane fade show active" id="basicInfo"
														role="tabpanel" aria-labelledby="basicInfo-tab">


														<div class="row">
                                                          <%--   <c:forEach items="${DataValues}" var="league">
                                                            </c:forEach>
 --%>
															<div class="col-sm-3 col-md-2 col-5">
																<label style="font-weight: bold;">Full Name</label>
															</div>
															<div class="col-md-8 col-6"></div> 
															
														</div>
														<hr />

														<div class="row">
															<div class="col-sm-3 col-md-2 col-5">
																<label style="font-weight: bold;">Birth Date</label>
															</div>
															<div class="col-md-8 col-6"></div>
														</div>
														<hr />


														<div class="row">
															<div class="col-sm-3 col-md-2 col-5">
																<label style="font-weight: bold;">Job Tittle</label>
															</div>
															<div class="col-md-8 col-6"></div>
														</div>
														<hr />
														<div class="row">
															<div class="col-sm-3 col-md-2 col-5">
																<label style="font-weight: bold;">Joining Date</label>
															</div>
															<div class="col-md-8 col-6">
																
															</div>
														</div>
														<hr />
														<div class="row">
															<div class="col-sm-3 col-md-2 col-5">
																<label style="font-weight: bold;">Mobile No.</label>
															</div>
															<div class="col-md-8 col-6">
																
															</div>
														</div>
														<hr />
														<div class="row">
															<div class="col-sm-3 col-md-2 col-5">
																<label style="font-weight: bold;">E-mail</label>
															</div>
															<div class="col-md-8 col-6">
															
															</div>
														</div>
														<hr />

													</div>
													<div class="tab-pane fade" id="connectedServices"
														role="tabpanel" aria-labelledby="ConnectedServices-tab">
														Facebook, Google, Twitter Account that are connected to
														this account</div>
												</div>
											</div>
										</div>


									</div>

								</div>
							</div>
						</div>
					</div>
				</span>


			</div>
		</div>
	</div>
	<footer class="footerr">
		<p align="center" class="div_deco" style="display: block;">
			<a href="https://www.facebook.com" target="_blank"><img
				src="https://img.icons8.com/color/48/000000/facebook.png"
				height="35"></a> <a href="#"><img
				src="https://img.icons8.com/color/48/000000/twitter.png" height="35"></a>
			<a href="#"><img
				src="https://img.icons8.com/color/48/000000/linkedin.png"
				height="35"></a> <a href="#"><img
				src="https://img.icons8.com/color/35/000000/instagram-new.png"
				height="35"></a> <br> <br> All Right Reserved<br>
			Company Name &copy; 2015
		</p>

	</footer>



</body>
</html>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
