<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="AssignCourse.aspx.cs" Inherits="helloWorld.Manager.AssignCourse.AssignCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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

       .txtt{
           width: 220px;
           height: 32px;
           border: solid 1px green;
           border-radius: 6px;
           padding-left: 5px;
       }
   </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="tbl">
    <tr>
        <td class="tblhead">
            &nbsp;Assign Courses</td>
    </tr>
    <tr>
        <td class="auto-style1">
            </td>
    </tr>
    <tr>
        <td>
            <table  align="center">
                <tr>
                    <td class="lbl">
                        Location:</td>
                    
                        <td class="style1">
                            <asp:Label ID="MLocation" runat="server"></asp:Label>
                        
                    
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        User:</td>
                   
                    <td class="style1"><asp:DropDownList ID="UserDropdownList" runat="server" Class="txtt" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName"  ></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT UserName FROM tblUser WHERE (Location = @Location) ORDER BY UserName">
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
                    <td class="lbl">
                        Course Name :</td>
                   <td class="style1">
                        <asp:DropDownList ID="DropDownListCourseName" DataSourceID="SqlDataSource2" CssClass="txtt" runat="server" DataTextField="CourseName" DataValueField="CourseName" AutoPostBack="True"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT DISTINCT CourseName FROM AddCourse WHERE (CourseCat = @CourseCat)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownCourseType" Name="CourseCat" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                       
                   </td>
                    
                </tr>

                <tr>
                    <td class="lbl">&nbsp;</td>
                    <td class="style1">
                        <asp:DropDownList ID="DropDownListCourseId" DataSourceID="SqlDataSource6" CssClass="ddl" runat="server" DataTextField="CourseID" DataValueField="CourseID" AutoPostBack="True"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [CourseID] FROM [AddCourse] where ([CourseName]=@CourseName)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownListCourseName" Name="CourseName" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        
                    </td>
                        </tr>

                 <tr>
                    <td class="lbl">
                        Course Material :</td>
                   <td class="style1">
                        <asp:DropDownList ID="DropDowntestMaterial" DataSourceID="SqlDataSource5" CssClass="txtt" runat="server" DataTextField="Name" DataValueField="Name" AutoPostBack="True" ></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT Materials.Name FROM Materials INNER JOIN AddCourse ON Materials.CourseID = AddCourse.CourseId WHERE (AddCourse.CourseName = @CourseName)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownListCourseName" Name="CourseName" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                       
                   </td>
                    
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    
                </tr>
                
                
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnadd" runat="server" CssClass="btnn" onclick="btnadd_Click" 
                            Text="Add Course" />
                    </td>
                </tr>
               
                <tr>
                    <td
                </tr>  <tr >
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
</asp:Content>
