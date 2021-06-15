<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="ResetCourseA.aspx.cs" Inherits="helloWorld.Admin.ResetCourseA" %>
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
            background: #1c7042;
            padding-left: 10px;
            width: 774px;
            padding-right: 20px;
        }

        .auto-style3 {
            width: 774px;
        }

        .auto-style4 {
            text-decoration: underline;
            font-weight: bold;
            color: #FF0000;
            margin-left: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="auto-style2" >Reset Course</td>
        </tr>
        
           
        <tr>
           <td class="style3" colspan="2">
            <p>Search Employee: <asp:TextBox ID="txtSearch" placeholder="Enter Last Name" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                </p>
            <asp:Label ID="lbmsg" runat="server" ForeColor="Red" Text="-"></asp:Label>
             <asp:GridView  Font-Size="14px" ID="grdQuizList" runat="server"  class="table table-striped table-hover" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" >
                            <Columns>
                                <asp:TemplateField HeaderText="">
                                    <ItemTemplate>                                    
                                        <asp:LinkButton ID="btnAction" runat="server" Text="Reset"   Font-Size="13px"  ToolTip="Start Quiz"    OnClick="btnAction_click"  OnClientClick="return confirm('Are you sure you want to Reset?');" />
                    
                                    </ItemTemplate>
                                </asp:TemplateField>   
                                   
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
                        </asp:GridView>

        </td>
       </tr>

    </table>
</asp:Content>
