<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LibrarySphere._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div id="demo" class="carousel slide" data-ride="carousel">
               <%--Indicator--%>
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>
                <%--Slideshow--%>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="SlideImg/lms1.jpg" alt="Los Angeles"/>
                    </div>
                    <div class="carousel-item">
                        <img src="SlideImg/lms2.jpg" alt="Chicago"/>
                    </div>
                    <div class="carousel-item">
                        <img src="SlideImg/lms3.jpg" alt="New York"/>
                    </div>
                </div>
                <%--Left and Right Controls--%>
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>

            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <h2>Welcome to LibrarySphere: Your Ultimate Library Management Solution</h2>
                <h5>June 30, 2024</h5>
                <p>Welcome to LibrarySphere, the cutting-edge Library Management System designed to revolutionize 
                    how you manage and experience your library. With LibrarySphere, we blend innovation, simplicity, 
                    and efficiency to provide a seamless library management experience for librarians, patrons, 
                    and administrators alike.</p>        
            </div>
        </div>

        <div class="row">
            <div class="container">
                <div class="row" style="margin-bottom:10px">
                    <div class="col-sm-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Friday Deal</div>
                            <div class="card-body">
                                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="IMAGE"/>
                            </div>
                            <div class="panel-footer">Get this book and get points.</div>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Friday Deal</div>
                            <div class="card-body">
                                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="IMAGE"/>
                            </div>
                            <div class="panel-footer">Get this book and get points.</div>
                        </div>
                    </div>
            
                    <div class="col-sm-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Friday Deal</div>
                            <div class="card-body">
                                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="IMAGE"/>
                            </div>
                            <div class="panel-footer">Get this book and get points.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
