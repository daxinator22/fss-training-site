<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="helloWorld.Users.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 19px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lvlEmployeeID" runat="server">3</asp:Label>
        </div>
        
           <table>
               <tr>
                   <td>
                <asp:GridView ID="GridView1" runat="server" CellPadding="3" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
               
                 <asp:TemplateField HeaderText="Course">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="" ID="lnkdnl" Font-Bold="true"></asp:LinkButton>

                            </ItemTemplate>
                        </asp:TemplateField>
                 <asp:TemplateField HeaderText="Compliant">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="" ID="lnkdnl" Font-Bold="true"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                 <asp:TemplateField HeaderText="Score">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="" ID="lnkdnl" Font-Bold="true"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                 <asp:TemplateField HeaderText="Date">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="" ID="lnkdnl" Font-Bold="true"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                </Columns>
                    </asp:GridView>
                       </td>
                    </tr>
                
              


           </table>
       
    </form>
</body>
</html>
