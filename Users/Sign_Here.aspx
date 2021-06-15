<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_Here.aspx.cs" Inherits="helloWorld.Users.Sign_Here" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
     <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.0.0.min.js"></script>

    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/popper.min.js"></script>

    <style>
        .container{
            background: #95b7ed;
            align-content: center;
            height: 400px;
            width: 720px;
            margin-top: 20px;
        }
        .container1{
            background: #95b7ed;
            align-content: center;
            height: 120px;
            width: 300px;
            margin-top: 20px;
            margin-left: 300px;
        }
        .first{
            background: #a6f5e3;
        }
        .second{
            background: #a6f5e3;
            align-content: center;
        }
        .imgc {
            margin-top: 10px;
            align-content: center;
            border: 2px solid black;
        }

        .info {
            align-content: center;
            height: 10px;
            width: 700px;
        }

        .bsize {
            align-content: center;
            height: 50px;
            width: 700px;
            font-size: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            <div class="container ">
             <br />
             <br />
             <asp:Label class="btn btn-warning btn-lg bsize" ID="safetybltname" runat="server" Text="" ></asp:Label>
             <br />
             <br />
          
                <h2>I confirm that I have read and understand the above Safety Bulletin.</h2>
             <br />
            
             <hr />
                <div class="container1">
                     <br />
                <asp:TextBox ID="safetyName" runat="server" Placeholder="Enter your Full Name"></asp:TextBox> &nbsp; &nbsp; <asp:Button class="btn btn-primary" align="center" ID="submitBtn" runat="server" Text="Sign" OnClick="submitBtn_Click"  />
        
                </div>
             </div>
        
    </form>
</body>
</html>
