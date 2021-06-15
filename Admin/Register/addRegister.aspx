<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="addRegister.aspx.cs" Inherits="helloWorld.Admin.Register.addRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid">

         <div class="row">
             <div class="col-md-7 bg_box">

                <ul>
                    <li><a href="/Admin/EmployeeRegister.aspx">Employee </a></li>
                    <li><a href="/Admin/RegisterManagers.aspx"> Manager</a></li>
                    <li><a href="/Admin/ADD/Location.aspx"> Location</a></li>
                    <li><a href="/Admin/ADD/positioncode.aspx"> Position Code</a></li>                    
                </ul>

             </div>             
         </div>


     </div>
    
    <%--<div id="mainn">
        <div id="left">
            <div id="leftmenu">
                <table class="tbl">
                    <tr>
                        <td>
                            <asp:Button ID="Button3" runat="server" CssClass="btnmenu" Text="Employee"
                                PostBackUrl="~/Admin/EmployeeRegister.aspx" />
                        </td>
                    </tr>
                    

                    <tr>
                        <td>
                            <asp:Button ID="Button4" runat="server" CssClass="btnmenu" Text="Manager"
                                PostBackUrl="~/Admin/RegisterManagers.aspx" /> 
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" CssClass="btnmenu" Text="Location"
                                PostBackUrl="~/Admin/ADD/Location.aspx" />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server" CssClass="btnmenu" Text="Position Code"
                                PostBackUrl="~/Admin/ADD/positioncode.aspx" />
                        </td>

                    </tr>
                   
                </table>
            </div>
        </div>
    </div>--%>
</asp:Content>
