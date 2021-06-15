<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="addQuestion.aspx.cs" Inherits="helloWorld.Admin.addQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 469px;
            height: 62px;
        }

        .auto-style19 {
            margin-left: 40px;
        }

        .auto-style20 {
            width: 469px;
            height: 62px;
            margin-left: 40px;
        }

        .auto-style25 {
            width: 469px;
            height: 26px;
        }

        .auto-style26 {
            width: 469px;
            height: 26px;
            margin-left: 40px;
        }

        .auto-style28 {
            height: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr style="width: 100px">
            <td class="auto-style14">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter New Question" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View/Edit/Update Question" Visible="False" />
            </td>
            <td class="auto-style13"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr style="width: 100px">
            <td class="auto-style19">
                <asp:Panel ID="pnlNewQuestions" runat="server" Height="565px" Visible="False" Width="619px">
                    <table>
                        <tr>
                            <td class="auto-style18" style="border: thin solid #00FFFF">Type Question:</td>
                            <td class="auto-style20" style="border: thin solid #00FFFF">
                                <asp:TextBox ID="txtQuestion" runat="server" Height="48px" TextMode="MultiLine" Width="462px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4" colspan="2" style="border: thin solid #00FFFF">Answers Option:</td>
                        </tr>
                        <tr>
                            <td class="auto-style25" style="border: thin solid #00FFFF">Option a:</td>
                            <td class="auto-style26" style="border: thin solid #00FFFF">
                                <asp:TextBox ID="txtOption1" runat="server" TextMode="MultiLine" Width="463px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25" style="border: thin solid #00FFFF">Option b:</td>
                            <td class="auto-style26" style="border: thin solid #00FFFF">
                                <asp:TextBox ID="txtOption2" runat="server" TextMode="MultiLine" Width="463px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25" style="border: thin solid #00FFFF">Option c:</td>
                            <td class="auto-style26" style="border: thin solid #00FFFF">
                                <asp:TextBox ID="txtOption3" runat="server" TextMode="MultiLine" Width="463px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25" style="border: thin solid #00FFFF">Option d:</td>
                            <td class="auto-style26" style="border: thin solid #00FFFF">
                                <asp:TextBox ID="txtOption4" runat="server" TextMode="MultiLine" Width="463px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18" style="border: thin solid #00FFFF">Correct Option:</td>
                            <td class="auto-style20" style="border: thin solid #00FFFF">
                                <asp:RadioButtonList ID="radioCorrectAns" runat="server" BackColor="Yellow" BorderColor="#99CCFF" RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True" Value="a">Option a</asp:ListItem>
                                    <asp:ListItem Value="b">Option b</asp:ListItem>
                                    <asp:ListItem Value="c">Option c</asp:ListItem>
                                    <asp:ListItem Value="d">Option d</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style18" style="border: thin solid #00FFFF">&nbsp;</td>
                            <td class="auto-style20" style="border: thin solid #00FFFF">
                                <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" />
                                <asp:SqlDataSource ID="DSquestionID" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT MAX(questionID) AS Expr1 FROM FSS_Questions"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="correctAnswer" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [FSS_correctAnswer] WHERE [answerID] = @answerID" InsertCommand="INSERT INTO [FSS_correctAnswer] ([questionID], [correctOption]) VALUES (@questionID, @correctOption)" SelectCommand="SELECT [answerID], [questionID], [correctOption] FROM [FSS_correctAnswer]" UpdateCommand="UPDATE [FSS_correctAnswer] SET [questionID] = @questionID, [correctOption] = @correctOption WHERE [answerID] = @answerID">
                                    <DeleteParameters>
                                        <asp:Parameter Name="answerID" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="questionID" Type="Int32" />
                                        <asp:Parameter Name="correctOption" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="questionID" Type="Int32" />
                                        <asp:Parameter Name="correctOption" Type="String" />
                                        <asp:Parameter Name="answerID" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <asp:Label ID="lvlResult" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28" style="border: thin solid #00FFFF" colspan="2">
                                <hr />
                            </td>
                        </tr>

                    </table>
                </asp:Panel>

                <asp:Panel ID="pnlViewQuestion" runat="server" Height="565px" Visible="False" Width="619px">
                    <table class="tbl">
                        <tr>
                            <td class="auto-style28" colspan="2" style="border: thin solid #00FFFF">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="questionID" DataSourceID="questionData" GridLines="Vertical" Width="561px" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                        <asp:BoundField DataField="questionID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="questionID" />
                                        <asp:BoundField DataField="question" HeaderText="Question" SortExpression="question" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="questionData" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [FSS_Questions] WHERE [questionID] = @questionID" InsertCommand="INSERT INTO [FSS_Questions] ([question]) VALUES (@question)" SelectCommand="SELECT * FROM [FSS_Questions] ORDER BY [questionID] DESC" UpdateCommand="UPDATE [FSS_Questions] SET [question] = @question WHERE [questionID] = @questionID">
                                    <DeleteParameters>
                                        <asp:Parameter Name="questionID" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="question" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="question" Type="String" />
                                        <asp:Parameter Name="questionID" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <br />
                            </td>
                            <td>
                                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="optionID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                        <asp:BoundField DataField="questionID" HeaderText="questionID" SortExpression="questionID" />
                                        <asp:BoundField DataField="option" HeaderText="option" SortExpression="option" />
                                        <asp:BoundField DataField="optionNumber" HeaderText="optionNumber" SortExpression="optionNumber" />
                                        <asp:BoundField DataField="optionID" HeaderText="optionID" InsertVisible="False" ReadOnly="True" SortExpression="optionID" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [FSS_Options] WHERE [optionID] = @optionID" InsertCommand="INSERT INTO [FSS_Options] ([questionID], [option], [optionNumber]) VALUES (@questionID, @option, @optionNumber)" SelectCommand="SELECT [questionID], [option], [optionNumber], [optionID] FROM [FSS_Options] ORDER BY [optionID] DESC" UpdateCommand="UPDATE [FSS_Options] SET [questionID] = @questionID, [option] = @option, [optionNumber] = @optionNumber WHERE [optionID] = @optionID">
                                    <DeleteParameters>
                                        <asp:Parameter Name="optionID" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="questionID" Type="Int32" />
                                        <asp:Parameter Name="option" Type="String" />
                                        <asp:Parameter Name="optionNumber" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="questionID" Type="Int32" />
                                        <asp:Parameter Name="option" Type="String" />
                                        <asp:Parameter Name="optionNumber" Type="String" />
                                        <asp:Parameter Name="optionID" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="answerID" DataSourceID="SqlDataSource2" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                        <asp:BoundField DataField="answerID" HeaderText="answerID" InsertVisible="False" ReadOnly="True" SortExpression="answerID" />
                                        <asp:BoundField DataField="questionID" HeaderText="questionID" SortExpression="questionID" />
                                        <asp:BoundField DataField="correctOption" HeaderText="correctOption" SortExpression="correctOption" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [FSS_correctAnswer] WHERE [answerID] = @answerID" InsertCommand="INSERT INTO [FSS_correctAnswer] ([questionID], [correctOption]) VALUES (@questionID, @correctOption)" SelectCommand="SELECT * FROM [FSS_correctAnswer] ORDER BY [answerID] DESC" UpdateCommand="UPDATE [FSS_correctAnswer] SET [questionID] = @questionID, [correctOption] = @correctOption WHERE [answerID] = @answerID">
                                    <DeleteParameters>
                                        <asp:Parameter Name="answerID" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="questionID" Type="Int32" />
                                        <asp:Parameter Name="correctOption" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="questionID" Type="Int32" />
                                        <asp:Parameter Name="correctOption" Type="String" />
                                        <asp:Parameter Name="answerID" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>

                </asp:Panel>

                <td></td>
            <td class="auto-style5"></td>
        </tr>
        <tr style="width: 100px">
            <td class="auto-style15"></td>
            <td></td>
            <td class="auto-style5"></td>
        </tr>
    </table>
</asp:Content>
