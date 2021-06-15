<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userSelectedAnswers.aspx.cs" Inherits="helloWorld.Admin.Question.userSelectedAnswers" %>

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


        .auto-style6 {
            height: 23px;
        }


    </style>
</head>

<body bgcolor="#cccccc">
    <form id="form1" runat="server">
        <div>
        <table class="style1" align="center">
            <tr><td>
                    <asp:button ID="lvlback" runat="server" Text="Back" OnClick="lvlback_Click"></asp:button></td>
            </tr>
            <tr>
                <td class="auto-style6">Select a quiz to preview</td>

             
                
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:DropDownList ID="LocationDropDown" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Location" DataValueField="Location" OnSelectedIndexChanged="LocationDropDown_SelectedIndexChanged"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:newTestConnectionString %>" SelectCommand="SELECT [Location] FROM [lLocation]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:DropDownList ID="EmployeeDropDown" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="UserName" DataValueField="UserName"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:newTestConnectionString %>" SelectCommand="SELECT [UserName] FROM [tblUser] WHERE ([Location] = @Location)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="LocationDropDown" Name="Location" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            
            <tr>
                
                <td style="text-align: center">
                    &nbsp<asp:DropDownList ID="testlist" runat="server" AutoPostBack="True"
                      DataSourceID="SqlDataSource1" DataTextField="QuizName" DataValueField ="QuizName" 
                        OnSelectedIndexChanged ="testlist_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:newTestConnectionString %>"
                        SelectCommand="SELECT DISTINCT [QuizName] FROM [new_userAnswers] WHERE ([Username] = @Username)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="EmployeeDropDown" Name="Username" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                      <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" class ="style4">
                        <tr>
                            <td>
                                &nbsp
                            </td>
                            <td bgcolor="#0066FF">
                                <table align="center" class ="style4">
                                    <tr>
                                         <td class="style17">
                                QID
                            </td>
                            <td class="style19">
                                Question
                                 </td>
                            <td class="style20">
                                Choices
                            </td>

                            
                                    </tr>
                                
                        <% while (dr.Read())
                            { %><%ans = Convert.ToInt16(dr.GetValue(7)); %>
                        <%if (ans == 1)
                            {

                                CheckBox1.Checked = true;
                                CheckBox2.Checked = false;
                                CheckBox3.Checked = false;
                                CheckBox4.Checked = false;
                            }%>
                        <%if (ans == 2)
                            {

                                CheckBox1.Checked = false;
                                CheckBox2.Checked = true;
                                CheckBox3.Checked = false;
                                CheckBox4.Checked = false;
                            }%>
                        <%if (ans == 3)
                            {

                                CheckBox1.Checked = false;
                                CheckBox2.Checked = false;
                                CheckBox3.Checked = true;
                                CheckBox4.Checked = false;
                            }%>
                        <%if (ans == 4)
                            {

                                CheckBox1.Checked = false;
                                CheckBox2.Checked = false;
                                CheckBox3.Checked = false;
                                CheckBox4.Checked = true;
                            }%>
                        <tr>
                            <td bgcolor= "white" class="style17">
                                <%=dr.GetValue(0) %> </td>
                            <td bgcolor= "white" class="style19">
                                <%=dr.GetValue(1) %> </td>
                           
                            <td bgcolor= "white" class="style20">
                                <table align="center" class="style4">
                                    <tr>
                                        <td class="style22"><%=dr.GetValue(3) %> </td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style22">
                                            <%=dr.GetValue(4) %>
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox2" runat="server" />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="style22">
                                            <%=dr.GetValue(5) %>
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox3" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style22">
                                            <%=dr.GetValue(6) %>
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox4" runat="server" />
                                        </td>
                                    </tr>

                                </table>
                            </td>

                            

               
            </tr><%
                  }%>
            <tr>
                <td bgcolor="white" colspan="4">
                    <table align="center" class="style4">
                        <tr>
                            <td class="style21">
                                &nbsp;
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Add Question" OnClick="Button1_Click" Width="200px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
           
        </table>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
