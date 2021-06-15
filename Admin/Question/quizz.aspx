<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quizz.aspx.cs" Inherits="helloWorld.Admin.ADD.quizz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <style type="text/css">
      

        .style1{
            width:1024px;
        }
        .style2{
            font-family: "Monotype Corsiva";
            font-size:xx-large;
            font-weight:bold;
            color:#3399FF;
            text-align:center;
            padding:0;

        }

        .style3{
            
            font-size:large;
            font-weight:bold;
            color:#FFFFFF;
            font-family: "Monotype Corsiva";
            
        }
        
                .style4{
           width:100%;

        }
    .style5{
        text-align:center;
    }

            .style12{
           text-align:center;
           width:165px;

        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:DropDownList ID="testlist" runat="server" Height="22px" Width="200px" 
                        DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                        ConnectionString="<%$ ConnectionStrings:newTestConnectionString %>"
                        SelectCommand="SELECT DISTINCT [settype] FROM [new_question]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
