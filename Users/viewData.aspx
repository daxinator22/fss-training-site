<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.Master" AutoEventWireup="true" CodeBehind="viewData.aspx.cs" Inherits="helloWorld.Users.viewData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div style ="font-family:Arial">
         <table>
             <tr>
                 <td>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField HeaderText="File">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Size" HeaderText="Size in Bytes" />
            <asp:BoundField DataField="Type" HeaderText="File Type" />
            <asp:ButtonField buttontype="Button" Text="Sign here" CommandName="iSign" HeaderText="Sign here" /> 
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
         </td>
                 <td>
                     <asp:Label ID="lvlEmployeeID" runat="server" Visible="False">kera</asp:Label>

                     <asp:Label ID="lvliSign" runat="server" Text="Print Full Name" Visible="False"></asp:Label>
                     <asp:TextBox ID="txtiSign" runat="server" Visible="False"></asp:TextBox>
                     <asp:Button ID="btniSign" runat="server" Text="Sign here" OnClick="btniSign_Click" Visible="False" />
                     
                     
                 </td>
             </tr>
         </table>
        </div>
    <br />

</asp:Content>
