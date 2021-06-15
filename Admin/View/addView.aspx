<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="addView.aspx.cs" Inherits="helloWorld.Admin.View.addView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">

         <div class="row">
             <div class="col-md-7 bg_box">

                <ul>
                    <li><a href="/Admin/CustomizeComplianceReport.aspx">Customize Compliance Report</a></li>
                    <li><a href="/Admin/UserList.aspx">Employee List</a></li>
                    <li><a href="/Admin/EmployeeLoginReport.aspx">Employee Login Report</a></li>
                    <li><a href="/Admin/ManagerList.aspx">Manager List</a></li>
                    <li><a href="/Admin/EmployeeQuizRecords.aspx">View Employee Records</a></li>                    
                    <li><a href="/Admin/NonCompliantEmp.aspx">View Non-Compliant Employee Records</a></li>                    
                    <li><a href="/Admin/safetyBltRecords.aspx">Safety Bulletin Records</a></li>                    
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
                            <asp:Button ID="btn_CustomizeComplianceReport" runat="server" CssClass="btnmenu" Text="Customize Compliance Report"
                                PostBackUrl="~/Admin/CustomizeComplianceReport.aspx" />
                        </td>
                    </tr>                    
                    <tr>
                        <td>
                            <asp:Button ID="Button3" runat="server" CssClass="btnmenu" Text="Employee List"
                                PostBackUrl="~/Admin/UserList.aspx" />
                        </td>
                    </tr>
                    

                    <tr>
                        <td>
                            <asp:Button ID="Button4" runat="server" CssClass="btnmenu" Text="Manager List"
                                PostBackUrl="~/Admin/ManagerList.aspx" />
                        </td>

                    </tr>
                    
                    <tr>
                        <td>
                            <asp:Button ID="EmpQuizRecord" runat="server" CssClass="btnmenu" Text="View Employee Records"
                                PostBackUrl="~/Admin/EmployeeQuizRecords.aspx" />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="viewNonCom" runat="server" CssClass="btnmenu" Text="View Non-Compliant Employee Records"
                                PostBackUrl="~/Admin/NonCompliantEmp.aspx" />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="safetyBlt" runat="server" CssClass="btnmenu" Text="Safety Bulletin Records"
                                PostBackUrl="~/Admin/safetyBltRecords.aspx" />
                        </td>

                    </tr>
                   
                </table>
            </div>
        </div>
    </div>--%>
</asp:Content>
