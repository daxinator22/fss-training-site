<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="helloWorld.Admin.Default" %>

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
    <link rel="shortcut icon" href="/assets/images/favicon.png">

    <!-- App css -->
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" id="bootstrap-stylesheet" />
    <link href="/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <link href="/assets/css/app.min.css" rel="stylesheet" type="text/css"  id="app-stylesheet" /><link href="assets/css/custom.css" rel="stylesheet" type="text/css"  id="app-stylesheet" />
	<link href="/assets/css/custom.css" rel="stylesheet" type="text/css"  id="app-stylesheet" />
	

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
                                            <img src="/assets/images/logo-dark.png">
                                        </a>
                                    </div>
                                    
                                </div>

                    <div class="card mb-0">

                        <div class="card-body">

                            <div class="account-box">                                

                                <div class="account-content mt-4">                                    
                                        <h2 style="color:#ffffff;">Admin Login</h2>
                                    <hr />
                                        <div class="form-group row">
                                            <div class="col-12">
                                                <label for="">UserName</label>
                                                <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Username" required></asp:TextBox>                                                                     
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <div class="col-12">
                                                <label for="">Password</label>
                                                <asp:TextBox ID="txtpasss" runat="server" CssClass="form-control" TextMode="Password" autocomplete="off" placeholder="Password" required></asp:TextBox>
                                            </div>
                                        </div>                                      

                                        <div class="form-group row text-center mt-4">
                                            <div class="col-6 text-center btn_signin">
                                                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-md btn-block btn-primary waves-effect waves-light" OnClick="Button1_Click" />                                                
                                            </div>
                                            <div class="col-6 text-center btn_signin">
                                                <%--<button class="" type="submit">Sign In</button>--%>
                                                <a  class="btn btn-md btn-block btn-primary waves-effect waves-light" href="/Default.aspx" >Back</a>
                                            </div>
                                        </div>


                                        <asp:Label ID="lbl" runat="server" ForeColor="Red"></asp:Label>
                                  

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
    <script src="/assets/js/vendor.min.js"></script>

    <!-- App js -->
    <script src="/assets/js/app.min.js"></script>

</body>

</html>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Admin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1 {
            width: 100%;
        }

        .style2 {
            height: 35px;
        }

        #menu12 {
            width: 1000px;
            height: 40px;
            border: solid 1px blue;
            margin: 0 auto;
            margin-bottom: 5px;
            padding: 0;
            background: #FF9393;
        }

        .mbtn12 {
            width: 100px;
            height: 35px;
            color: #fff;
            background: red;
            border: solid 2px red;
            font-size: medium;
            font-weight: bold;
            cursor: pointer;
            float: right;
        }
    </style>

</head>

<body>
    <form id="form1" runat="server">
        <div id="header">

            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/2.jpg" />

        </div>
        <div id="menu12">
            <table class="style1">
                <tr>
                    <td class="style2">
                        <asp:Button ID="Button2" runat="server" CssClass="mbtn12" Text="Go Back" CausesValidation="false"
                            PostBackUrl="~/Default.aspx" OnClick="Button2_Click" />

                    </td>
                </tr>
            </table>
        </div>

        <div id="login">
            <table class="style1">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; color: #FF0000; font-size: large; font-family: 'Arial Rounded MT Bold'; font-weight: 700;">ADMIN LOGIN AREA</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:TextBox ID="txtname" runat="server" placeholder="Username" CssClass="txt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:TextBox ID="txtpasss" runat="server" placeholder="Password" CssClass="txt"
                            TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style2">

                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="lbl" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>--%>
