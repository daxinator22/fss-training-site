<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.Master" AutoEventWireup="true" CodeBehind="New_userDashBoard.aspx.cs" Inherits="helloWorld.Users.newQuiz.New_userDashBoard" %>
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
            background: #8506A9;
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
            <td class="auto-style2">Your Course Compliance </td>
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
                &nbsp; &nbsp;</td>
            
            <td style="color: #8506A9; font-weight: bold; font-size: large" class="auto-style5">

                
               
                    <asp:Button ID="btnBulletin" runat="server" BackColor="Yellow" CssClass="auto-style4" OnClick="btnBulletin_Click" Text="Safety Bulletin" />
                
            </td>
        </tr>

        <td class="style3" colspan="2">
             <asp:GridView  Font-Size="14px" ID="grdQuizList" runat="server"  class="table table-striped table-hover" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" >
                            <Columns>
                                <asp:TemplateField HeaderText="">
                                    <ItemTemplate>                                    
                                        <asp:LinkButton ID="btnAction" runat="server" Text="Start"   Font-Size="13px"  ToolTip="Start Quiz"    OnClick="btnAction_click"   />
                    
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

    </table>
    
</asp:Content>
