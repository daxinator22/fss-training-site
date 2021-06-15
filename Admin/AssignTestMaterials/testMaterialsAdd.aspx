<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="testMaterialsAdd.aspx.cs" Inherits="helloWorld.Admin.AssignTestMaterials.testMaterialsAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .btnmenu:hover {
            width: 100%;
            height: 35px;
            margin: 0px;
            border: solid 1px #272229;
            font-size: medium;
            font-weight: bold;
            background-color: transparent;
            transition: background 1s ease;
            cursor: pointer;
            border-radius: 2px;
            margin-left: 0px;
            color: #272229;
        }

        #mainn {
            width: 1000px;
            height: 575px;
            border: solid 0px #ccc;
            margin: 0 auto;
            background: #FDFDFD;
            margin-top: 2px;
        }

        #left {
            width: 251px;
            height: 565px;
            border: solid 0px #ccc;
            background: #FDFDFD;
            float: left;
        }

        .btnmenu {
            width: 100%;
            height: 35px;
            margin: 0px;
            border: solid 1px #026466;
            color: #fff;
            background-color: #026466;
        }

        #leftmenu {
            width: 250px;
            height: 550px;
            border: solid 0px green;
            margin: 0 auto;
            margin-top: 0px;
            border-top: solid 8px #660204;
        }

        .tbl {
            width: 100%;
            border: solid 1px #660204;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="mainn">
        <div id="left">
            <div id="leftmenu">
                <table class="tbl">
                    <tr>
                        <td>
                            <asp:Button ID="Button3" runat="server" CssClass="btnmenu" Text="Assign Test Materials"
                                PostBackUrl="~/Admin/Add/assignTestMaterials.aspx" />
                        </td>
                    </tr>
                    

                    <tr>
                        <td>
                            <asp:Button ID="Button4" runat="server" CssClass="btnmenu" Text="Assign Quiz"
                                PostBackUrl="~/Admin/Question/finalQuiz.aspx" />
                        </td>

                    </tr>
                     <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" CssClass="btnmenu" Text="Reset Quiz"
                                PostBackUrl="~/Admin/ResetCourseA.aspx" />
                        </td>

                    </tr>
                   
                </table>
            </div>
        </div>
    </div>
</asp:Content>
