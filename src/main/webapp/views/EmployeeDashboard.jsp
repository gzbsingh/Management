<!DOCTYPE html>

<html>
    <head>
        <title>Employee DashBoard</title>
            <link href="css/container.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <link href="EmployeeeDashboard.css" rel="stylesheet" type="text/css"/>
       <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        <!--This is style for home page*/-->
        <script>
            function yourprofile() {
               var a=document.getElementById("YourPro");
               a.style.display="block";
               var b=document.getElementById("ViewAtt");
               b.style.display="none";
            }
            function viewatt()
            {
                
        var a=document.getElementById("ViewAtt");
               a.style.display="block";
            
              var b=document.getElementById("YourPro");
              b.style.display="none";  
            }
           

        </script>
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
                        <a class="nav-link active" href="#">Employee Dashboard</a>
                    </li>  
                </ul>
            </div>  
        </nav>
        <div class="container-fluid Data-body">
            <div class="row">
                <div class="col-sm-2  menu-item" style="">
                    <div class="btn-group-vertical">
                        <button class="menu" type="button" >Atte. Submit</button>
                        <button class="menu" type="button" onclick="viewatt()">View Attendance</button>
                        <button class="menu" type="button"  onclick="yourprofile()">Your profile</button>
                    </div></div>
                <div class="col-sm-10 Data-container" id="container">
    <!--View Attendance Span-->
    <span id="ViewAtt" style="display:none;">
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
    <!--View Attendance Span-->
    <span id="YourPro" style="display:none;">
                        <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <div class="card-body">
                        <div class="card-title mb-4">
                            <div class="d-flex justify-content-start">
                                <div class="image-container">
                                    <img src="http://placehold.it/150x150" id="imgProfile" style="width: 150px; height: 150px" class="img-thumbnail" />
<!--                                    <div class="middle">
                                        <button type="button" class="btn btn-secondary" id="btnChangePicture" value="Change" >Change</button>
                                        <input type="file" style="display: none;" id="profilePicture" name="file" />
                                    </div>-->
                                </div>
                                <div class="userData ml-3">
                                    <h2 class="d-block" style="font-size: 1.5rem; font-weight: bold"><a href="javascript:void(0);">Some Name</a></h2>
                                    <h6 class="d-block"><a href="javascript:void(0)">1,500</a> Video Uploads</h6>
                                    <h6 class="d-block"><a href="javascript:void(0)">300</a> Blog Posts</h6>
                                </div>
                                <div class="ml-auto">
                                    <input type="button" class="btn btn-primary d-none" id="btnDiscard" value="Discard Changes" />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="basicInfo-tab" data-toggle="tab" href="#basicInfo" role="tab" aria-controls="basicInfo" aria-selected="true">Basic Info</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="connectedServices-tab" data-toggle="tab" href="#connectedServices" role="tab" aria-controls="connectedServices" aria-selected="false">Connected Services</a>
                                    </li>
                                </ul>
                                <div class="tab-content ml-1" id="myTabContent">
                                    <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab">
                                        

                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Full Name</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                 
                                            </div>
                                        </div>
                                        <hr />

                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Birth Date</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                March 22, 1994.
                                            </div>
                                        </div>
                                        <hr />
                                        
                                        
                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Job Tittle</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                Something
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Joining Date</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                Something
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">Mobile No.</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                Something
                                            </div>
                                        </div>
                                              <div class="row">
                                            <div class="col-sm-3 col-md-2 col-5">
                                                <label style="font-weight:bold;">E-mail</label>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                Something
                                            </div>
                                        </div>
                                        <hr />

                                    </div>
                                    <div class="tab-pane fade" id="connectedServices" role="tabpanel" aria-labelledby="ConnectedServices-tab">
                                        Facebook, Google, Twitter Account that are connected to this account
                                    </div>
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
        <div class="footerr"style="background-color:#232d38; color:white;">
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