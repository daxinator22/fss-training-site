<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Question.aspx.cs" Inherits="helloWorld.Admin.Question.Question" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AddQuestion</title>
    <style type="text/css">
                .style1 {
            width: 1024px;
        }

        .style2 {
            font-family: "Monotype Corsiva";
            font-size: xx-large;
            font-weight: bold;
            color: #3399FF;
            text-align: center;
            padding: 0;
        }

        .style3 {
            font-size: large;
            font-weight: bold;
            color: #FFFFFF;
            font-family: "Monotype Corsiva";
        }

        .style4 {
            width: 100%;
        }

        .style5 {
            text-align: center;
        }

        .style12 {
            text-align: center;
            width: 165px;
        }

    </style>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
        <div>
                      <table class="style1" align="center">
                <tr>
                    <td class="style2">FSS Quiz System </td>
                    <td>
                </tr>
                <tr>
                    <td bgcolor="#3333FF">  <asp:Button ID="Button2" runat="server" CssClass="mbtn12" Text="Home" CausesValidation="false"
                            PostBackUrl="~/Admin/AdminHomePage.aspx" OnClick="Button2_Click" /></td>
                </tr>

                <tr>
                    <td>
                           <asp:DropDownList ID="testlist" runat="server" Height="20px" Width="150px" AutoPostBack="True" DataSourceID="SqldataSource1" DataTextField="settype" DataValueField="settype">
                        </asp:DropDownList>
                        <asp:TextBox ID="testname" runat="server" Visible="False"></asp:TextBox>
                        <asp:Button ID="ntest" runat="server" Font-Bold="true" Text="New Test" Width="88px" OnClick="ntest_Click" />
                        <asp:Label ID="msg1" runat="server" ForeColor="Blue"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:newTestConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [settype] FROM [new_question] ORDER BY [settype]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="question" runat="server" Height="50px" Width="600px" Font-Bold="true" TextMode="MultiLine"></asp:TextBox>
                        <asp:Label ID="msg2" runat="server" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="opt1" runat="server" Width="600px" Font-Bold="true" TextMode="MultiLine"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" GroupName="opt" />
                        <asp:Label ID="msg3" runat="server" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="opt2" runat="server" Width="600px" Font-Bold="true" TextMode="MultiLine"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="opt" />
                        <asp:Label ID="msg4" runat="server" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="opt3" runat="server" Width="600px" Font-Bold="true" TextMode="MultiLine"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="opt" />
                        <asp:Label ID="msg5" runat="server" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="opt4" runat="server" Width="600px" Font-Bold="true" TextMode="MultiLine"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="opt" />
                        <asp:Label ID="msg6" runat="server" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="msg7" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table align="center" class="style4">
                            <tr>
                                <td class="style16">
                                    <asp:Button ID="submit" runat="server" Font-Bold="true" Text="Add Question" OnClick="submit_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="paperview" runat="server" Font-Bold="true" Text="Vew Quiz" OnClick="paperview_Click" />
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>
                <tr>
                    <td bgcolor="#3333FF">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
