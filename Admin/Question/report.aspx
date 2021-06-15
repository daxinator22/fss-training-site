<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="helloWorld.Admin.Question.report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
<body>
    <form id="form1" runat="server">
        <div>
            <table class="style1" align="center">
                <tr>
                    <td>

                        <table align="center" class="style4">
                            <tr>
                                <td class="style22">User
                                </td>
                                <td class="style22">Date
                                </td>
                                <td class="style22">Test Name
                                </td>
                                <td class="style22">Score
                                </td>
                                <td class="style22">Total Score
                                </td>

                            </tr>
                            <%
                                while (dr.Read())
                                {
                            %>
                            <tr>
                                <td bgcolor="#FFFFCC" class="style22">
                                    <%=dr.GetValue(0) %>
                                </td>
                                <td bgcolor="#FFFFCC" class="style22">
                                    <%=dr.GetValue(1) %>
                                </td>
                                <td bgcolor="#FFFFCC" class="style21">
                                    <%=dr.GetValue(2) %>
                                </td>
                                <td bgcolor="#FFFFCC" class="style20">
                                    <%=dr.GetValue(3) %>
                                </td>
                                <td bgcolor="#FFFFCC" class="style5">
                                    <%=dr.GetValue(4) %>
                                </td>
                            </tr>
                            <%
                                }
                                con.Close();
                            %>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
