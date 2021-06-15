<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="takeQuiz.aspx.cs" Inherits="helloWorld.Users.takeQuiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
            Font-Size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="style1" align="center">
                <tr>
                    <td style="text-align:center"">
                        <table align="center" bgcolor="#3399FF" class="style5">
                            <tr>
                                <td class="style6">
                                    &nbsp
                                </td>
                                <td bgcolor="#FFFFCC" class="style7">
                                    <% con.Open();
                                        rqry = "select * from new_question where settype='" + testtype + "' order by quid";
                                        rcmd = new System.Data.SqlClient.SqlCommand(rqry, con);
                                        rdr = rcmd.ExecuteReader();
                                        c = 1;
                                        while (rdr.Read())
                                        {
                                            if (c != count)
                                            {
                                                c = c + 1;

                                            }
                                            else if (c == count)
                                            {
                                                %><% int q = Convert.ToInt16(rdr.GetValue(0));
                                                      qid = q; %>
                                    <table align="center" class="style8">
                                        <tr>
                                            <td>
                                                <asp:Label ID="time" runat="server" Font-Size="25"></asp:Label>
                                                &nbsp;
                                            </td>
                                            <td>
                                                <asp:Label ID="msg" runat="server" Text=""></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1"  >
                                                Q<%=count%>.  <%=rdr.GetValue(1)%>
                                            </td>
                                        </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButton ID="RadioButton1"  runat="server" 
                                                    GroupName="opt"/>
                                                <%=rdr.GetValue(3)%>
                                            </td>
                                        </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButton ID="RadioButton2" Font-Size="25" runat="server" 
                                                    GroupName="opt"/>
                                                <%=rdr.GetValue(4)%>
                                            </td>
                                        </tr>
                                        <tr>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButton ID="RadioButton3" runat="server" 
                                                    GroupName="opt"/>
                                                <%=rdr.GetValue(5)%>
                                            </td>
                                        </tr>
                                        <tr>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButton ID="RadioButton4" runat="server" 
                                                    GroupName="opt"/>
                                                <%=rdr.GetValue(6)%>
                                            </td>
                                        </tr>
                                        <tr>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                        <tr>
                                                    <td>
                                                        <asp:Label ID="lvlMsg" runat="server" Text="Click next then Click Finish" Visible="False"></asp:Label>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                        <tr>
                                                    <td>
                                                      <table align ="center" class="style18">
                                                          <tr>
                                                              <td class="style9">
                                                                  <asp:Button ID="back" runat="server" Height="20px" Text="Back" Width="100px" OnClick="back_Click" Visible="False" />
                                                              </td>
                                                              <td class="style10">
                                                                  <asp:Button ID="next" runat="server" Height="20px" Text="Next" Width="100px" OnClick="next_Click" />
                                                              </td>
                                                              <td class="style9">
                                                                  <asp:Button ID="finish" runat="server" Height="20px" Text="Finish" Width="100px" OnClick="finish_Click" />
                                                              </td>
                                                          </tr>
                                                      </table>
                                                    </td>
                                                </tr>
                                        <tr>
                                            <td>
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                    <%if (count != n)
                                                    c = c + 1;
                                            }
                                        }
                                        con.Close();
                                        %>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
