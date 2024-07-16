<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="LibrarySphere.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
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
                    <%--<a class="btn btn-sm btn-primary" href="#">SignUp</a>--%>
                    <a class="btn btn-sm btn-primary" href="LogIn.aspx">LogIn</a>
                </div>
            </nav>

            <div class="container-fluid">
               <div class="row">
                   <div class="col-sm-12 border border-info">
                       <%--SignUp--%>
                       <div class="container mt-3">
                          <h2>Create New Account</h2>
                          <br/>
                          <!-- Nav tabs -->
                          <ul class="nav nav-tabs">
                            <li class="nav-item">
                              <a class="nav-link active" data-toggle="tab" href="#signup">SignUp</a>
                            </li>
                          </ul>

                          <!-- Tab panes -->
                          <div class="tab-content">
                            <div id="signup" class="container tab-pane active"><br>
                              <h3>SignUp</h3>
                              <p></p>
                              <!-----start signup form----->
                              <div class="container">
                                  <div class="row">
                                      <div class="col-md-12 mx-auto">
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
                                                              <h3>User SignUp</h3>
                                                          </center>
                                                      </div>
                                                  </div>
                                                  <div class="row">
                                                      <div class="col">
                                                          <hr />
                                                      </div>
                                                  </div>
                                                  <div class="row">
                                                      <div class="col-4">
                                                          <label>User ID</label>
                                                          <div class="form-group">
                                                              <asp:TextBox ID="txtUserID" CssClass="form-control"
                                                                   placeholder="User ID" runat="server"></asp:TextBox>
                                                          </div>

                                                          <label>Password</label>
                                                          <div class="form-group">
                                                              <asp:TextBox ID="txtPassword" CssClass="form-control"
                                                                   placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter valid password!" ForeColor="Red" ControlToValidate="txtPassword" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                          </div>

                                                          <label>Full Name</label>
                                                          <div class="form-group">
                                                              <asp:TextBox ID="txtFullName" CssClass="form-control"
                                                                   placeholder="Full Name" runat="server"></asp:TextBox>
                                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Enter full name!" ForeColor="Red" ControlToValidate="txtFullName" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                          </div>                                                    
                                                      </div>
                                                      <div class="col-4">
                                                          <label>Date of Birth</label>
                                                            <div class="form-group">
                                                                <asp:TextBox ID="txtDOB" CssClass="form-control"
                                                                        placeholder="Date of Birth" TextMode="Date" runat="server"></asp:TextBox>
                                                            </div>

                                                          <label>Contact Number</label>
                                                            <div class="form-group">
                                                                <asp:TextBox ID="txtContactNO" CssClass="form-control"
                                                                        placeholder="Contact Number" runat="server"></asp:TextBox>
                                                            </div>

                                                          <label>Email ID</label>
                                                            <div class="form-group">
                                                                <asp:TextBox ID="txtEmail" CssClass="form-control"
                                                                        placeholder="Email" TextMode="Email" runat="server"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Enter email address!" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Enter valid email address!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                            </div>
                                                      </div>
                                                      <div class="col-4">
                                                          <label>State</label>
                                                            <div class="form-group">
                                                                <asp:DropDownList ID="ddlState" CssClass="form-control" runat="server">
                                                                    <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                                                    <asp:ListItem Text="Dhaka" Value="Dhaka"/>
                                                                    <asp:ListItem Text="Chittagong" Value="Chittagong"/>
                                                                    <asp:ListItem Text="Khulna" Value="Khulna"/>
                                                                    <asp:ListItem Text="Rangpur" Value="Rangpur"/>
                                                                    <asp:ListItem Text="Sylhet" Value="Sylhet"/>
                                                                    <asp:ListItem Text="Barishal" Value="Barishal"/>
                                                                    <asp:ListItem Text="Rajshahi" Value="Rajshahi"/>
                                                                </asp:DropDownList>
                                                            </div>

                                                         <label>City</label>
                                                            <div class="form-group">
                                                                <asp:TextBox ID="txtCity" CssClass="form-control"
                                                                        placeholder="City" runat="server"></asp:TextBox>
                                                            </div>

                                                         <label>PIN</label>
                                                            <div class="form-group">
                                                                <asp:TextBox ID="txtPIN" CssClass="form-control"
                                                                        placeholder="PIN Code"  runat="server"></asp:TextBox>
                                                            </div>
                                                      </div>
                                                  </div>
                                                  <div class="row">
                                                      <div class="col-12">
                                                          <label>Full Address</label>
                                                           <div class="form-group">
                                                               <asp:TextBox ID="txtAddress" CssClass="form-control"
                                                                       placeholder="Address"  runat="server"></asp:TextBox>
                                                           </div>
                                                      </div>
                                                  </div>
                                                  <div class="row">
                                                      <div class="col">
                                                          <div class="form-group" >
                                                            <asp:Button ID="btnSignup" CssClass="btn btn-success btn-block"
                                                                style="width:220px; margin-left:390px"
                                                                runat="server" Text="SignUp" OnClick="btnSignup_Click" />
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
                              <!-----end signp form----->

                            </div>
                            
                          </div>
                        </div>
                       <%--SignUp End--%>
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
