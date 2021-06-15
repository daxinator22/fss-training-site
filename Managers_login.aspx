<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Managers_login.aspx.cs" Inherits="helloWorld.Managers_login" %>
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
                                        <h2 style="color:#ffffff;">Manager Login</h2>
                                    <hr />
                                        <div class="form-group row">
                                            <div class="col-12">
                                                <label for="">UserName</label>
                                                <asp:TextBox ID="txtMuserName" runat="server" CssClass="form-control" autocomplete="off" placeholder="Username" required></asp:TextBox>                                                
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <div class="col-12">
                                                <label for="">Password</label>
                                                <asp:TextBox ID="txtMpassword" runat="server" CssClass="form-control" TextMode="Password" autocomplete="off" placeholder="Password" required></asp:TextBox>
                                            </div>
                                        </div>                                      

                                        <div class="form-group row text-center mt-4">
                                            <div class="col-6 text-center btn_signin">
                                                <%--<button class="" type="submit">Sign In</button>--%>
                                                <asp:Button ID="btnstafflogin" runat="server" CssClass="btn btn-md btn-block btn-primary waves-effect waves-light" Text="Login" OnClick="btnstafflogin_Click" />
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



<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="engine1/style.css" media="screen" />
    <style type="text/css">
        a#vlb {
            display: none
        }

        .style1 {
            height: 31px;
        }

        .style2 {
            width: 100%;
        }

        #managerlogin1 {
            width: 270px;
            height: 195px;
            margin: 0 auto;
            margin-top: 15px;
            border-top: solid 5px green;
        }

        .tbl1 {
            width: 100%;
            border: solid 1px #369;
            box-shadow: 4px 3px 4px #369;
        }

        .smenu1 {
            width: 137px;
            text-align: center;
            font-weight: bold;
            color: #fff;
            background: #369;
            height: 30px;
            padding-top: 1px;
            border: solid 2px #369;
            margin-left: 1px;
            border-radius: 10px;
        }
    </style>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.slim.min.js"></script>
    <script type="text/javascript" src="engine1/jquery.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div id="top">

                <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/2.jpg" />

            </div>
            <div class="col-sm-auto" id="menu">
                <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Width="100%"
                    BackColor="#006699" BorderColor="#3333FF" BorderStyle="Solid" BorderWidth="2px">
                    <Items>
                        <asp:MenuItem Text="HOME" Value="HOME" NavigateUrl="~/Default.aspx"></asp:MenuItem>

                        <asp:MenuItem Text="MANAGER" Value="Manager" NavigateUrl="~/Manager.aspx"></asp:MenuItem>

                        <asp:MenuItem Text="ADMIN" Value="LOGIN" NavigateUrl="~/Admin/Default.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="CONTACT US" Value="CONTACT US"
                            NavigateUrl="~/ContactUs.aspx"></asp:MenuItem>
                    </Items>
                    <StaticMenuItemStyle CssClass="smenu1" />
                </asp:Menu>
            </div>
            <div class="col-sm-auto" id="main">
                <div id="left1">

                    <div id="managerlogin1">

                        <table class="tbl1">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2"
                                    style="color: #003399; font-weight: 700; font-size: large; text-align: center; font-family: 'Courier New', Courier, monospace; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #369;">Manager Login</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="lbl">UserName :</td>
                                <td>
                                    <asp:TextBox ID="txtMuserName" runat="server" CssClass="txt" autocomplete="off" placeholder="Username"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">Password :</td>
                                <td>
                                    <asp:TextBox ID="txtMpassword" runat="server" CssClass="txt"
                                        TextMode="Password" autocomplete="off" placeholder="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1"></td>
                                <td class="style1">

                                    <asp:Button ID="btnstafflogin" runat="server" Text="Login" OnClick="btnstafflogin_Click" />
                                </td>
                            </tr>

                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>




                    </div>
                </div>
                <div>
                    <script type="text/javascript" src="engine1/script.js"></script>
                </div>
            </div>


            <div class="col-sm-auto" id="footer"
                style="color: #FFFFFF; text-align: center; vertical-align: middle;">
                All Copy Rights @ Flight Services & Systems, LLC
            </div>
        </div>
    </form>
</body>
</html>--%>
