<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.Master" AutoEventWireup="true" CodeBehind="UserDash3.aspx.cs" Inherits="helloWorld.Users.UserDash3" %>
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
            width: 728px;
            padding-right: 20px;
        }

        .auto-style3 {
            width: 728px;
            height: 32px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table class="tbl">
        <tr>
            <td class="auto-style2">Courses </td>
            <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="False" ForeColor="Blue" Text="Station"></asp:Label>
                :
                    <asp:Label ID="lvlStation" runat="server" Font-Bold="True" ForeColor="Blue" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Welcome " ForeColor="#00CC3A"></asp:Label>
                <asp:Label ID="lvlName" runat="server" Text="label" BackColor="White" BorderColor="#66FF99" Font-Bold="True" Font-Italic="False" ForeColor="#00CC00"></asp:Label>
                &nbsp; &nbsp;<asp:Label ID="lvlEmployeeID" runat="server">3</asp:Label>
               </td>
            
        </tr>
          <tr>
           <td class="style3" colspan="2">
            <asp:GridView ID="GridView1" runat="server" CellPadding="3" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="False" Width="717px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="" Text=""></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>

                    

                    <asp:TemplateField HeaderText="Course List">
                        <ItemTemplate>
                            <asp:LinkButton runat="server" Text='<%#Eval("CourseCat") %>' ID="Courses" Font-Bold="true"  CommandName='<%#Eval("CourseCat") %>'></asp:LinkButton>
                        </ItemTemplate>
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

                <EmptyDataTemplate>There is no course Assigned for you. Please Contact your Manager.</EmptyDataTemplate>
            </asp:GridView>

        </td>

          </tr>
          
          </table>
</asp:Content>
