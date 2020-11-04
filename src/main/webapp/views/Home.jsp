<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>   
    <head>
        <title>HOME|Employee Status</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/index.css">
       <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
       <link href="css/container.css" rel="stylesheet" type="text/css"/>
      
        <!--This is style for home page*/-->
    </head>
    <body>
        <div class="head_color">          
            <div class="logo">
                <img src="img/logo123_burned.png" style="    height: 124px;
    margin-top: -18px;
    float: left;"alt=""/>
            </div>
            
          
            <h1>Employee Management System</h1>

            <p>Stop chasing the money and start chasing the passion.</p> 
            
        </div>
        <!--Navigation bar-->
       
        <nav class="navbar navbar-expand-sm bg-darkl navbar-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="#" >Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About us</a>
                    </li> 
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact us</a>
                    </li> 
                    
                </ul>
            </div>  
        </nav>
               <!-- comapny Deatils-->
           <span class="C_deatils">
           

            </span>
        <div class="container-fluid">
            <div class="row">
                <div class="col" id="adcol">
                    <div class="container">
                       <h2 class="Admin-name">Admin</h2>
                        <div class="card">
                            <img class="imgcontainer" src="img/boss.png" alt="card-image" style="width:50%">
                            <div class="card-body">
                                <form action="login" method="POST">
                                    <div class="container">
                                        <label for="uname"><b>Email</b></label>
                                        <input type="text" placeholder="Enter Your Email" name="username" >				
                                        <label for="psw"><b>Password</b></label>
                                        <input type="password" placeholder="Enter Password" name="password" >
                                        <button type="submit" name="login">Login</button>
                                        <label>
                                            <input type="checkbox" checked="checked" name="remember"> Remember me
                                        </label>
                                    </div>
                                    <div class="container" style="background-color:#f1f1f1">
                                        <span class="psw">Forgot <a href="#">password?</a></span>
                                        <%
		                          	Object err = request.getAttribute("err");
		                         if (err!= null)
		                        {
		                         	%>
			             <div style = "background-color: red">
				        <span><%= err %></span>
			                  </div>	<%
		                          }
		                              %>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col" id="empcol">
                    <div class="container">
                        <h2 class="Emp-name"><a>Employee</a></h2>
                        <div class="card" style="margin-bottom: 50px; margin-top: 10px;">
                            <img class="imgcontainer" src="img/network.png" alt="card-image" style="width:50%">
                            <div class="card-body">
                                <form action="login" method="POST">
                                    <div class="container">
                                        <label for="uname"><b>Username</b></label>
                                        <input type="text" placeholder="Enter Username" name="uname" required>
                                        <label for="psw"><b>Password</b></label>
                                        <input type="password" placeholder="Enter Password" name="pswd" required>
                                        <button type="submit">Login</button>
                                        <label>
                                            <input type="checkbox" checked="checked" name="remember"> Remember me
                                        </label>                                
                                    </div>
                                   <div class="container" style="background-color:#f1f1f1">
                                        <span class="psw">Forgot <a href="#">password?</a></span>
                                        
                                   </div>
                               </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       	
            
            <div class="footerr"style="background-color:black; color:white;">
                <p align="center" class="div_deco" style="display: block;"> 
                    <a href="https://www.facebook.com" target="_blank"><img src="https://img.icons8.com/color/48/000000/facebook.png" height="35"></a>
		<a href="#"><img src="https://img.icons8.com/color/48/000000/twitter.png" height="35"></a>
		<a href="#"><img src="https://img.icons8.com/color/48/000000/linkedin.png" height="35"></a>
		<a href="#"><img src="https://img.icons8.com/color/35/000000/instagram-new.png" height="35"></a>
                
           
                  
                <br><br>
                All Right Reserved<br>                  
				Company Name &copy; 2015</p>
				</div>

		
            
       

    </body>
</html>
