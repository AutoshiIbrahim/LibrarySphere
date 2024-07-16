<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="LibrarySphere.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LogIn</title>
    <link rel="shortcut icon" href="LogoImg/logo.png"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width-device, initial-scale=1" />

    <%--1-Bootstarp CSS--%>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <%--2-Datatable CSS--%>
    <link href="datatable/css/dataTables.dataTables.min.css" rel="stylesheet" />

    <%--3-Fontawesome CSS--%>
    <link href="fontawesome/css/all.css" rel="stylesheet" />

    <%--4-Jquery JS--%>
    <script src="bootstrap/js/jquery-3.3.1.slim.min.js"></script>

    <%--5-Popper JS--%>
    <script src="bootstrap/js/popper.min.js"></script>

    <%--6-Bootstarp JS--%>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--Menu--%>
            <nav class="navbar navbar-expand-sm navbar-dark bg-primary">
                <a class="navbar-brand" href="default.aspx">
                    <img src="LogoImg/logo.png" alt="logo" width="47" height="47"/>LibrarySphere</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="default.aspx"><b>Home</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Library Collection</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Archives</b></a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Contact Us</b></a>
                        </li>
                    </ul>
                </div>
                <%--Navbar Right Icon--%>
                <div class="pmd-navbar-right-icon ml-auto">
                    <a class="btn btn-sm btn-primary" href="SignUp.aspx">SignUp</a>
                    <%--<a class="btn btn-sm btn-primary" href="#">LogIn</a>--%>
                </div>
            </nav>

            <div class="container-fluid">
               <div class="row">
                   <div class="col-sm-12 border border-info">
                       <%--LogIn--%>
                       <div class="container mt-3">
                          <h2>LogIn Panel</h2>
                          <br/>
                          <!-- Nav tabs -->
                          <ul class="nav nav-tabs">
                            <li class="nav-item">
                              <a class="nav-link active" data-toggle="tab" href="#home">User LogIn</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" data-toggle="tab" href="#menu1">Admin Login</a>
                            </li>
                          </ul>

                          <!-- Tab panes -->
                          <div class="tab-content">
                            <div id="home" class="container tab-pane active"><br>
                              <h3>User Login</h3>
                              <p></p>
                              <!-----user login form----->
                              <div class="container">
                                  <div class="row">
                                      <div class="col-md-6 mx-auto">
                                          <div class="card">
                                              <div class="card-body">
                                                  <div class="row">
                                                      <div class="col">
                                                          <center>
                                                              <img width="150px" src="LogoImg/dp.png" />
                                                          </center>
                                                      </div>
                                                  </div>
                                                  <div class="row">
                                                      <div class="col">
                                                          <center>
                                                              <h3>User LogIn</h3>
                                                          </center>
                                                      </div>
                                                  </div>
                                                  <div class="row">
                                                      <div class="col">
                                                          <hr />
                                                      </div>
                                                  </div>
                                                  <div class="row">
                                                      <div class="col">

                                                          <label>User ID</label>
                                                          <div class="form-group">
                                                              <asp:TextBox ID="txtUserID" CssClass="form-control"
                                                                   placeholder="User ID" runat="server"></asp:TextBox>
                                                          </div>

                                                          <label>Password</label>
                                                          <div class="form-group">
                                                              <asp:TextBox ID="txtPassword" CssClass="form-control"
                                                                   placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                                                          </div>

                                                          <div class="form-group">
                                                              <asp:Button ID="btnLogin" CssClass="btn btn-success btn-block"
                                                                  runat="server" Text="LogIn" OnClick="btnLogin_Click" />
                                                          </div>

                                                           <div class="form-group">
                                                               <a href="SignUp.aspx">
                                                                   <input type="button" class="btn btn-info btn-block" value="SignUp"/></a>
                                                           </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                          <a href="#"><< Back to Home</a>
                                          <div style="margin-bottom:10px"></div>
                                      </div>
                                  </div>
                              </div>
                              <!-----end login form----->

                            </div>
                            <div id="menu1" class="container tab-pane fade"><br>
                              <h3>Admin LogIn</h3>
                              <p></p>  
                              <!-----admin login form----->
                              <div class="container">
                                  <div class="row">
                                      <div class="col-md-6 mx-auto">
                                          <div class="card">
                                              <div class="card-body">
                                                  <div class="row">
                                                      <div class="col">
                                                          <center>
                                                              <img width="150px" src="LogoImg/admindp.png" />
                                                          </center>
                                                      </div>
                                                  </div>
                                                  <div class="row">
                                                      <div class="col">
                                                          <center>
                                                              <h3>Admin LogIn</h3>
                                                          </center>
                                                      </div>
                                                  </div>
                                                  <div class="row">
                                                      <div class="col">
                                                          <hr />
                                                      </div>
                                                  </div>
                                                  <div class="row">
                                                      <div class="col">

                                                          <label>Admin ID</label>
                                                          <div class="form-group">
                                                              <asp:TextBox ID="txtAdminID" CssClass="form-control"
                                                                   placeholder="Admin ID" runat="server"></asp:TextBox>
                                                          </div>

                                                          <label>Password</label>
                                                          <div class="form-group">
                                                              <asp:TextBox ID="txtAdminPass" CssClass="form-control"
                                                                   placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                                                          </div>

                                                          <div class="form-group">
                                                              <asp:Button ID="btnAdminLogin" CssClass="btn btn-success btn-block"
                                                                   runat="server" Text="Admin LogIn" OnClick="btnAdminLogin_Click" />
                                                          </div>

                                                           <div class="form-group">
                                                               <a href="SignUp.aspx">
                                                                   <input type="button" class="btn btn-info btn-block" value="SignUp"/></a>
                                                           </div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                          <a href="#"><< Back to Home</a>
                                          <div style="margin-bottom:10px"></div>
                                      </div>
                                  </div>
                              </div>
                              <!-----end login form----->
                              
                            </div>
                          </div>
                        </div>
                       <%--LogIn End--%>
                   </div>
               </div>  
            </div>

            <div class="jumbotron text-center alert alert-secondary" style="margin-bottom: 0; border: 2px solid blue">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="footer-pad">
                                <h5>Check Out</h5>
                                <ul class="list-unstyled">
                                    <li><a href="#"></a>About Us</li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="footer-pad">
                                <h5>What's New</h5>
                                <ul class="list-unstyled">
                                    <li><a href="#"></a>News and Updates</li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="footer-pad">
                                <h5>Follow Us</h5>
                                <ul class="social-network social-circle">
                                    <li><a href="#" title="Facebook"><i class="fa fa-facebook">Facebook</i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 fa-copyright border-dark">
                            <p class="text-center">&copy; Copyright 2024 - LibrarySphere. All rights reserved.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
