<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_login.aspx.cs" Inherits="helloWorld.User_login" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Login | Flight Services & Systems, LLC</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.png">

    <!-- App css -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" id="bootstrap-stylesheet" />
    <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/app.min.css" rel="stylesheet" type="text/css"  id="app-stylesheet" /><link href="assets/css/custom.css" rel="stylesheet" type="text/css"  id="app-stylesheet" />
	<link href="assets/css/custom.css" rel="stylesheet" type="text/css"  id="app-stylesheet" />
	

</head>

<body class="authentication-bg bg-primary authentication-bg-pattern d-flex align-items-center pb-0 vh-100">   
    
    <div class="account-pages w-100 mt-5 mb-5">
        <div class="container">
            <form id="form1" runat="server">
            <div class="row justify-content-center">
                <div class="col-sm-8 col-md-6 col-lg-4 col-xl-4">

                    <div class="account-logo-box">
                                    <div class="text-center">
                                        <a href="index.html">
                                            <img src="assets/images/logo-dark.png">
                                        </a>
                                    </div>
                                    
                                </div>

                    <div class="card mb-0">

                        <div class="card-body">

                            <div class="account-box">                                

                                <div class="account-content mt-4">                                    
                                        <h2 style="color:#ffffff;">Employee Login</h2>
                                    <hr />
                                        <div class="form-group row">
                                            <div class="col-12">
                                                <label for="">UserName</label>
                                                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" autocomplete="off" placeholder="Username" required></asp:TextBox>                                                
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <div class="col-12">
                                                <label for="">Password</label>
                                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" autocomplete="off" placeholder="Password" required></asp:TextBox>
                                            </div>
                                        </div>                                      

                                        <div class="form-group row text-center mt-4">
                                            <div class="col-6 text-center btn_signin">
                                                <%--<button class="" type="submit">Sign In</button>--%>
                                                <asp:Button ID="btnstafflogin" runat="server" CssClass="btn btn-md btn-block btn-primary waves-effect waves-light" Text="Login" OnClick="btnstulogin_Click" />
                                            </div>
                                            <div class="col-6 text-center btn_signin">
                                                <%--<button class="" type="submit">Sign In</button>--%>
                                                <a  class="btn btn-md btn-block btn-primary waves-effect waves-light" href="Default.aspx" >Back</a>
                                            </div>
                                        </div>


                                        <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>
                                  

                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- end card-body -->
                </div>
                <!-- end card -->
        </div>
            </form>
            <!-- end row -->
    </div>
    <!-- end container -->
    </div>
    
    <!-- end page -->

    <!-- Vendor js -->
    <script src="assets/js/vendor.min.js"></script>

    <!-- App js -->
    <script src="assets/js/app.min.js"></script>

</body>

</html>

