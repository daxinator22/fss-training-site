<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.Master" AutoEventWireup="true" CodeBehind="viewTestMaterial.aspx.cs" Inherits="helloWorld.Users.viewTestMaterial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .style5 {
            height: 23px;
        }

        .style6 {
            width: 561px;
        }

        .auto-style2 {
            height: 40px;
            color: #fff;
            text-align: left;
            font-size: 20px;
            font-weight: bold;
            background: red;
            padding-left: 10px;
            width: 774px;
            padding-right: 20px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="auto-style2">Your Test Materials </td>
        </tr>

        <td class="style3" colspan="2">
            <asp:GridView ID="GridView1" runat="server" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="False" Width="717px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>

                    <asp:BoundField DataField="Name" HeaderText="Course Name" />

                    <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkView" runat="server" Text="View" OnClick="View" CommandArgument='<%# Eval("id") %>'></asp:LinkButton>
                        </ItemTemplate>

                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

                <EmptyDataTemplate>There is no Test Materials.Please Contact your Manager </EmptyDataTemplate>
            </asp:GridView>

        </td>

    </table>
    <hr />
    <div>
        <asp:Literal ID="ltEmbed" runat="server" />
    </div>

</asp:Content>
