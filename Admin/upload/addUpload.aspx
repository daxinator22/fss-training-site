<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="addUpload.aspx.cs" Inherits="helloWorld.Admin.upload.addUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">

         <div class="row">
             <div class="col-md-7 bg_box">

                <ul>
                    <li><a href="/Admin/FSSNEW/CreateQuestionDetails.aspx"> Create Quiz </a></li>
                    <li><a href="/Admin/FSSNEW/ManageQuiz.aspx"> Manage Quiz</a></li>
                    <li><a href="/Admin/ADD/addSafteyBlt.aspx"> Add Safety Bulletin</a></li>
                    <li><a href="/Admin/Add/addTestMaterials.aspx"> Test Material</a></li>                    
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
                            <asp:Button ID="Button3" runat="server" CssClass="btnmenu" Text="Create Quiz"
                                PostBackUrl="~/Admin/FSSNEW/CreateQuestionDetails.aspx" />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server" CssClass="btnmenu" Text="Manage Quiz"
                                PostBackUrl="~/Admin/FSSNEW/ManageQuiz.aspx" />
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Button ID="Button4" runat="server" CssClass="btnmenu" Text="Add Safty Bulletin"
                                PostBackUrl="~/Admin/ADD/addSafteyBlt.aspx" />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" CssClass="btnmenu" Text="Test Material"
                                PostBackUrl="~/Admin/Add/addTestMaterials.aspx" />
                        </td>

                    </tr>
                    
                </table>
            </div>
        </div>
    </div>--%>
</asp:Content>
