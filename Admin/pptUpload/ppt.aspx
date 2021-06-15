<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ppt.aspx.cs" Inherits="helloWorld.Admin.pptUpload.ppt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
             <table class="tbl">
    <tr>
        <td class="tblhead">
            &nbsp;Add Course Materials</td>
    </tr>
          <tr>
              <td class="auto-style3">
                 <asp:Button ID="Button10" runat="server" Text="Back" BackColor="Red" ForeColor="#990099" OnClick="Button10_Click" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:FileUpload ID="FileUpload1" runat="server" />&nbsp;&nbsp;
    <asp:Button ID="Button8" runat="server" Text="Add" OnClick="Button8_Click1" style="height: 26px" />
              </td></tr>
    
    
    <div style ="font-family:Arial">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="File">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Size" HeaderText="Size in Bytes" />
            <asp:BoundField DataField="Type" HeaderText="File Type" />
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
        </div>
    <br />
          </table>
      
    </form>
</body>
</html>
