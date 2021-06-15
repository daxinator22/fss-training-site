<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.Master" AutoEventWireup="true" CodeBehind="UserDashBoard.aspx.cs" Inherits="helloWorld.Users.UserDashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .style5
        {
            height: 23px;
        }
        .style6
        {
            width: 561px;
        }
          .auto-style2 {
              height: 40px;
              color: #fff;
              text-align: left;
              font-size: 20px;
              font-weight: bold;
              background: #8506A9;
              padding-left: 10px;
              width: 774px;
              padding-right: 20px;
          }
          .auto-style3 {
              width: 774px;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="auto-style2">Your Course Compliance </td>
        </tr>

        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Welcome " ForeColor="#00CC3A"></asp:Label>
                <asp:Label ID="lvlName" runat="server" Text="label" BackColor="White" BorderColor="#66FF99" Font-Bold="True" Font-Italic="False" ForeColor="#00CC00"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Bold="False" ForeColor="Blue" Text="Station"></asp:Label>
                :
                    <asp:Label ID="lvlStation" runat="server" Font-Bold="True" ForeColor="Blue" Text="Label"></asp:Label>
            </td>

        </tr>

        <tr>
            <td class="style3" colspan="2">

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="None" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" DataSourceID="LinqDataSource1">
                    <Columns>
                        <asp:BoundField DataField="CourseID" HeaderText="Course ID" ReadOnly="True" SortExpression="CourseID" />
                        <asp:TemplateField HeaderText="Course Name" SortExpression="CourseName">

                            <ItemTemplate>

                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("CourseName") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Font-Underline="True" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="Compliant" HeaderText="Compliant" SortExpression="Compliant" />
                        <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                        <asp:BoundField DataField="Completed" HeaderText="Completed" SortExpression="Completed" />
                        <asp:BoundField DataField="ResetDate" HeaderText="Reset Date" SortExpression="ResetDate" />

                        <asp:TemplateField HeaderText="Result">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="Result" ID="lnkdnl" Font-Bold="true"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>


            </td>
        </tr>

        <tr>
            <td class="auto-style3">
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="helloWorld.Users.UserDashBoardDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="UserDashBoards">
                </asp:LinqDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>





</asp:Content>
