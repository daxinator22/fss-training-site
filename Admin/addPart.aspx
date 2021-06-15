<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="addPart.aspx.cs" Inherits="helloWorld.Admin.addPart" %>

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
                            <asp:Button ID="Button3" runat="server" CssClass="btnmenu" Text="Add Location"
                                PostBackUrl="~/Admin/ADD/Location.aspx" />
                        </td>
                    </tr>
                    

                    <tr>
                        <td>
                            <asp:Button ID="Button4" runat="server" CssClass="btnmenu" Text="Add Safety Bulletin"
                                PostBackUrl="~/Admin/ADD/FileUpload.aspx" />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" CssClass="btnmenu" Text="Compliance Report"
                                PostBackUrl="~/Admin/StationReport.aspx" />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server" CssClass="btnmenu" Text="Add New Question"
                                PostBackUrl="~/Admin/Question/Question.aspx" />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button5" runat="server" CssClass="btnmenu" Text="Preview Quiz"
                                PostBackUrl="~/Admin/Question/paperview.aspx" />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button7" runat="server" CssClass="btnmenu" Text="View Quiz"
                                PostBackUrl="~/Admin/Question/quizz.aspx" />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button8" runat="server" CssClass="btnmenu" Text="Report"
                                PostBackUrl="~/Admin/Question/report.aspx" />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button9" runat="server" CssClass="btnmenu" Text="ASSign Quiz"
                                PostBackUrl="~/Admin/Question/finalQuiz.aspx" />
                        </td>

                    </tr>
                     <tr>
                        <td>
                            <asp:Button ID="Button6" runat="server" CssClass="btnmenu" Text="Upload Test Materials"
                                PostBackUrl="~/Admin/Add/addTestMaterials.aspx" />
                        </td>

                    </tr>
                     <tr>
                        <td>
                            <asp:Button ID="Button10" runat="server" CssClass="btnmenu" Text="Assign Test Materials"
                                PostBackUrl="~/Admin/Add/assignTestMaterials.aspx" />
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button11" runat="server" CssClass="btnmenu" Text="View list"
                                PostBackUrl="~/Admin/Add/allList.aspx" />
                        </td>

                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
