<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.Master" AutoEventWireup="true" CodeBehind="MainDashBoard.aspx.cs" Inherits="helloWorld.Users.MainDashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" />      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h4 class="heading_class">Completed Courses</h4>
        <div class="col-lg-12">
            <div class="add_user_class">
                <div class="flot_left_class_ma margin_class">
                    <asp:GridView  Font-Size="14px" ID="grdQuizList" runat="server"  CssClass="table table-responsive border_class manage_airports"  GridLines="Horizontal" >                            
                        </asp:GridView>
                    
                </div>
            </div>
        </div>
   </div> 
    <%--<table class="tbl">
        <tr>
            <td class="auto-style2"> </td>
            <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="False" ForeColor="Blue" Text="Station: "></asp:Label>
                
                    <asp:Label ID="lvlStation" runat="server" Font-Bold="True" ForeColor="Blue" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Welcome " ForeColor="#00CC3A"></asp:Label>
                <asp:Label ID="lvlName" runat="server" Text="label" BackColor="White" BorderColor="#66FF99" Font-Bold="True" Font-Italic="False" ForeColor="#00CC00"></asp:Label>
                &nbsp; &nbsp;</td>
            
           
        </tr>

        <td class="style3" colspan="2">
             

        </td>

    </table>--%>
</asp:Content>
