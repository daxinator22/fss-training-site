<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="AssignCourses.aspx.cs" Inherits="helloWorld.Manager.AssignCourse.AssignCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
        .tbll {
            height: 570px;
            width: 1080px;
            border: 1px solid red;
        }

        .ddl {
            width: 220px;
            height: 32px;
            border: 2px solid #7d6754;
            border-radius: 5px;
            padding: 3px;
            -webkit-appearance: none;
            background-position: 88px;
            background-repeat: no-repeat;
            text-indent: 0.01px; /*In Firefox*/
            text-overflow: ''; /*In Firefox*/
        }

        .txtt {
            width: 220px;
            height: 32px;
            border: solid 1px green;
            border-radius: 6px;
            padding-left: 5px;
        }

        .tblheaad {
            height: 40px;
            width: 1080px;
            color: #fff;
            text-align: left;
            font-size: 20px;
            font-weight: bold;
            background: Red;
            padding-left: 10px;
            margin-bottom: 0px;
        }
    </style>
     <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.0.0.min.js"></script>

    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/popper.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbll">
        <tr>
            <td class="tblheaad">Assign Courses</td>
        </tr>
        <td>
            <table align="center">
                <tr>
                    <td class="lbl">Location:</td>

                    <td class="style1">
                        <asp:Label ID="MLocation" runat="server"></asp:Label>


                    </td>
                </tr>
                <tr>
                    <td class="lbl">User:</td>

                    <td class="style1">
                        <asp:DropDownList ID="UserDropdownList" runat="server" Class="txtt" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT UserName FROM tblUser WHERE (Location = @Location) AND (Active = 1) ORDER BY UserName">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="MLocation" Name="Location" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="UserDropdownList" ErrorMessage="***" ForeColor="Red"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Course Type :</td>
                    <td class="style1">
                        <asp:DropDownList ID="DropDownCourseType" DataSourceID="SqlDataSource4" CssClass="txtt" runat="server" DataTextField="CourseCat" DataValueField="CourseCat" AutoPostBack="True"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT DISTINCT [CourseCat] FROM [AddCourse]"></asp:SqlDataSource>
                    </td>
                </tr>

               
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnadd" runat="server" CssClass="btnn" onclick="btnadd_Click" 
                            Text="Add Course" />
                    </td>
                </tr>
               
                 <tr >
                                        <td class="lbl" >
                                            &nbsp;</td>
                                        <td style ="color:green">
                                            <asp:Label ID="lblsucc" runat="server" Text="Course Assigned Successfully!" Visible="False"></asp:Label> 
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>


                 <asp:TextBox ID="txtcompliant" Visible="false" CssClass="txt" runat="server"></asp:TextBox>
                </table>
            </table>
</asp:Content>
