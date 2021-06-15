<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="another2Quiz.aspx.cs" Inherits="helloWorld.Users.newQuiz.another2Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
     <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.0.0.min.js"></script>

    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/popper.min.js"></script>
        <style type="text/css">
        .style3
        {
            width: 51px;
            height: 25px;
            text-align: right;
        }
        .style4
        {
            height: 25px;
        }
        .style5
        {
            width: 72%;
        }
                .round-rectangle
                {
                 border-radius: 20px;
                -moz-border-radius: 20px;
                 -webkit-border-radius: 20px;
                }
        .style7
        {
            width: 51px;
            text-align: right;
        }
        .style8
        {
            width: 461px;
        }
        .style9
        {
            width: 424px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1_body" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
     
    <div>
    
    <center>    
   
        <table class="table-info" style="width:84%;">
            <tr>
                <td class="style9">
                    <asp:Label ID="lbQuizName0" runat="server" 
                        style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: large" 
                        Text="Quiz Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbParticipant0" runat="server" Text="UserName" 
                        ></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Question"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Time" Visible="False"></asp:Label>
    
    </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="lbqid" runat="server" Text="-"></asp:Label>.
                    <asp:Label ID="lbQuizName" runat="server" 
                        style="font-weight: 700; font-family: 'Times New Roman', Times, serif; font-size: large" 
                        Text=".Quiz Name"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:Label ID="lbParticipant" runat="server" Text="Participant name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbNum" runat="server" style="font-weight: 700" Text="1"></asp:Label>
                    /
                    <asp:Label ID="lbTotalQue" runat="server" Text="lbTotalQue"></asp:Label>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional" Visible="False">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:Label ID="lbTime" runat="server" style="font-weight: 700"  Text="-" Visible="False"></asp:Label>
                            /<asp:Label ID="lbtotalTime" runat="server" Text="10" Visible="False"></asp:Label>
                            
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    
                </td>
            </tr>
        </table>
     
        <%-- <asp:RadioButtonList ID="rblQualification" runat="server" RepeatColumns="1" RepeatDirection="Vertical"></asp:RadioButtonList>  --%>
    <hr />
        <div class="container" >
  <div class="panel-body" style="width:84%;">
        <table align="left" style="width:99%;" >
            <tr>
                <td class="style7">
                  [  Q.<asp:Label ID="lbid" runat="server" Text="id" style="font-weight: 700"></asp:Label> ]
&nbsp;  </td>
                <td style="text-align: left" height="20%" class="panel panel-default">
    
        <asp:Label ID="lbQuestion" runat="server" style="font-weight: 700"  Font-Size="25px" class="panel-body"  Text="lbQuestion" ></asp:Label>   
                </td>
            </tr>
            <tr>
                <td class="style7">
                    A.</td>
                <td style="text-align: left">
        <asp:RadioButton ID="RbA" runat="server" GroupName="op" class="label label-primary" Font-Names="verdana" Font-size="25pt" />
                </td>
            </tr>
            <tr>
                <td class="style7">
                    B.</td>
                <td style="text-align: left">
        <asp:RadioButton ID="RbB" runat="server" GroupName="op" class="label label-warning" Font-Names="verdana" Font-size="25pt"/>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    C.</td>
                <td style="text-align: left" class="style4">
        <asp:RadioButton ID="RbC" runat="server" GroupName="op" class="label label-primary" Font-Names="verdana" Font-size="25pt"/>
                </td>
            </tr>
            
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td style="text-align: left"><br />
                    <asp:Button ID="btnSubAns" runat="server"  
                        Text="Submit My Answer" onclick="btnSubAns_Click" class="btn btn-primary btn-lg"    />
                    <br />
                    <asp:Label ID="lbmsg" runat="server" style="color: #006600; font-weight: 700" 
                        Text="lbmsg"></asp:Label>
                            &nbsp;<asp:Label ID="lbans" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
       

       </div>
       </div>
       
    </center>  
 
    </div>
    
   </ContentTemplate> 
    </asp:UpdatePanel>   
    <br />

    <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
        </asp:Timer>
    </form>
</body>
</html>
