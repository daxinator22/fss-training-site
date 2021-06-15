<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FinishQuiz_Result.aspx.cs" Inherits="helloWorld.Users.newQuiz.FinishQuiz_Result" %>

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
            height: 320px;
            width: 560px;
        }
        .first{
            background: #a6f5e3;
        }
        .second{
            background: #a6f5e3;
            align-content: center;
        }
        .imgc{
            margin-top: 10px;
            align-content: center;
            border: 2px solid black;
        }

        .info{
            align-content: center;
            height: 10px;
            width: 560px;
        }
        .bsize{
            align-content: center;
             height: 50px;
            width: 530px;
            font-size: 25px;

        }
    </style>
    
</head>
    <body>
 <form id="form1" runat="server">
     <div class="jumbotron">

         <div class="container" runat="server" id="hamImg">
             

             <asp:Image ID="congimg" CssClass="imgc" runat="server" ImageUrl="~/Image/congrats.jpg" height="290px" Width="535px"/>

         </div>



     <div >
         <asp:GridView ID="grdResult" runat="server"    Visible="false" 
                        Width="34%"  EmptyDataText="No Records Found">
                    </asp:GridView>
     </div>

         <div class="container info">

             <asp:Label ID="lbqid" runat="server" Text="-" Visible="False"></asp:Label>
             <asp:HiddenField ID="hide_TestType" runat="server" />
             <asp:HiddenField ID="hide_Attempt" runat="server" />
             <asp:HiddenField ID="hide_TotalQ" runat="server" />
             <asp:Label ID="lbQuizName" runat="server" Text=".----"
                 Style="font-weight: 700; font-family: 'Times New Roman', Times, serif; font-size: large" Visible="False"></asp:Label>
             &nbsp;&nbsp;
          <asp:Label class="btn btn-secondary" ID="lbParticipant"  runat="server" Text="--" Height="40px" Width="100px" Visible="False"></asp:Label>

         </div>
         <div class="container ">
             <br />
             <br />
             <asp:Label class="btn btn-warning btn-lg bsize" ID="lbtotalCorrectAns" runat="server" Text="Error!" ></asp:Label>
             <br />
             <br />
             <asp:Label class="btn btn-primary btn-sm bsize" ID="lbthanksmsg" runat="server" Text="Please reread the Course Material and try again!"></asp:Label>
             <br />
             <br />
             <asp:Label ID="lbtotaltime" runat="server" Text="lbtotaltime" class="btn btn-warning" Visible="False"></asp:Label>

             <hr />
             <br />
             <asp:Button class="btn btn-info" aligh="right" ID="BtnBackDone" runat="server" Text="Go Back" OnClick="BtnBackDone_Click" />
         </div>
        
         </div>
        
    </form>
</body>
</html>
