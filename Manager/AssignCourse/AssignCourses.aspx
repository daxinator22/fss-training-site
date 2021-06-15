<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="AssignCourses.aspx.cs" Inherits="helloWorld.Manager.AssignCourse.AssignCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <h4 class="heading_class">ASSIGN COURSES</h4>
        <div class="row">
           <div class="col-md-12">
           <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="rb_CourseType" EventName="CheckedChanged" />
                    <asp:AsyncPostBackTrigger ControlID="rb_Course" EventName="CheckedChanged" />
                </Triggers>
                <ContentTemplate>                                         
            <div class="compliance_user_class">
               <asp:Label runat="server" ID="lblsucc" Visible="false"></asp:Label>                                 
                                                        
                    <div class="form-row col-md-8">
                    <div class="form-group col-md-6 margin_class">
                    <label class="col-form-label bold_class">Location</label>
                       <asp:TextBox ID="MLocation" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox> 
                    </div>
                    </div>

                    <div class="form-row col-md-8">
                    <div class="form-group col-md-6 margin_class">
                    <label class="col-form-label bold_class">User</label>
                        <asp:DropDownList ID="UserDropdownList"  runat="server" Class="assign_courses_class" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName" AutoPostBack="True"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT UserName FROM tblUser WHERE (Location = @Location) AND (Active = 1) ORDER BY UserName">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="MLocation" Name="Location" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="UserDropdownList" ErrorMessage="Please Select User" ForeColor="Red"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    
                    </div>
                                                       
                    </div>
                        <div class="form-row col-md-8">
                    <div class="form-group col-md-3">

                    <label class="container_label col-form-label bold_class">Assign to</label></div></div>
                        <div class="form-row col-md-8 margin_class">
                                                         
                    <div class="form-group col-md-3">
                    <label class="container_label col-form-label">Course Type
                   <asp:RadioButton ID="rb_CourseType" GroupName="AssignTo" runat="server" Checked="true" OnCheckedChanged="rb_CourseType_CheckedChanged"  AutoPostBack="true" />                     
                    <span class="checkmark"></span>
                    </label>
                    </div>
                    <div class="form-group col-md-2">
                    <label class="container_label col-form-label">Course
                    <asp:RadioButton ID="rb_Course" GroupName="AssignTo" runat="server" OnCheckedChanged="rb_Course_CheckedChanged" AutoPostBack="true"/> 
                    <span class="checkmark"></span>
                    </label>
                    </div>
                                                       
                                                        
                                                        
                    </div>
                    <asp:Panel runat="server" ID="pnl_CourseType" class="form-row col-md-10">
                    <div class="form-group col-md-5">
                    <label class="col-form-label bold_class">Course Type</label>
                    <asp:DropDownList ID="DropDownCourseType" DataSourceID="SqlDataSource4" CssClass="assign_courses_class" runat="server" DataTextField="CourseCat" DataValueField="CourseCat" ></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT DISTINCT [CourseCat] FROM [AddCourse]"></asp:SqlDataSource>
                    
                    </div>
                                                       
                                                       
                    </asp:Panel>
                    <asp:Panel runat="server" ID="pnl_Course" Visible="false" class="form-row col-md-10">
                    <div class="form-group col-md-8">
                    <label class="col-form-label bold_class">Course</label>
                    <asp:DropDownList ID="ddl_Course" DataSourceID="SqlDataSource2" CssClass="assign_courses_class" runat="server" DataTextField="CourseName" DataValueField="CourseId" ></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT CourseId,CourseName FROM [AddCourse]"></asp:SqlDataSource>
                    
                    </div>
                                                       
                                                       
                    </asp:Panel>
                    <div class="form-row">
                    <div class="form-group col-md-3">
                    </div>
                    <div class="form-group col-md-3">
                    </div>
                    <div class="form-group col-md-3">
                    </div>
                    <div class="form-group col-md-3">
                        <asp:Button ID="btnSave" runat="server" Text="Add Course" class="save_btn" onclick="btnadd_Click" />                                    
                    </div>
                    </div>

            </div>
            </ContentTemplate>
            </asp:UpdatePanel>
            </div>
                                             
            </div>

                    
</div>
    
    <%--<table class="tbll">
        <tr>
            <td class="tblheaad">Assign Courses</td>
        </tr>
        <tr>
        <td>
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <asp:UpdatePanel runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="rb_CourseType" EventName="CheckedChanged" />
                    <asp:AsyncPostBackTrigger ControlID="rb_Course" EventName="CheckedChanged" />
                </Triggers>
                <ContentTemplate>
            <asp:Table runat="server" align="center" CellSpacing="5" CellPadding="5">
            <asp:TableRow runat="server">
                <asp:TableCell CssClass="lbl">
                    Location:
                </asp:TableCell>
                <asp:TableCell CssClass="style1">
                    <asp:Label ID="MLocation" runat="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
                
                <asp:TableRow runat="server">
                    <asp:TableCell CssClass="lbl">User:</asp:TableCell>

                    <asp:TableCell CssClass="style1">
                        <asp:DropDownList ID="UserDropdownList" runat="server" Class="txtt" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName" AutoPostBack="True"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT UserName FROM tblUser WHERE (Location = @Location) AND (Active = 1) ORDER BY UserName">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="MLocation" Name="Location" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="UserDropdownList" ErrorMessage="***" ForeColor="Red"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell CssClass="lbl">Assign To :</asp:TableCell>
                    <asp:TableCell CssClass="style1">
                        <label class="radio-inline">
                            <asp:RadioButton ID="rb_CourseType" GroupName="Course" runat="server" Checked="true" OnCheckedChanged="rb_CourseType_CheckedChanged"  AutoPostBack="true" /> Course Type
                        </label>
                        <label class="radio-inline">
                            <asp:RadioButton ID="rb_Course" GroupName="Course" runat="server" OnCheckedChanged="rb_Course_CheckedChanged" AutoPostBack="true"/> Course
                        </label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="tr_CourseType" Visible="true" runat="server">
                    <asp:TableCell CssClass="lbl">Course Type :</asp:TableCell>
                    <asp:TableCell >
                        <asp:DropDownList ID="DropDownCourseType" DataSourceID="SqlDataSource4" CssClass="txtt" runat="server" DataTextField="CourseCat" DataValueField="CourseCat" ></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT DISTINCT [CourseCat] FROM [AddCourse] where coursecat != 'Retired' and coursecat !='test'"></asp:SqlDataSource>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="tr_Course" Visible="false" runat="server">
                    <asp:TableCell CssClass="lbl">Course :</asp:TableCell>
                    <asp:TableCell >
                        <asp:DropDownList ID="ddl_Course" DataSourceID="SqlDataSource2" CssClass="txtt" runat="server" DataTextField="CourseName" DataValueField="CourseId" ></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT CourseId,CourseName FROM [AddCourse] where coursecat != 'Retired' and coursecat !='test'"></asp:SqlDataSource>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        &nbsp;</asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnadd" runat="server" CssClass="btnn" onclick="btnadd_Click" 
                            Text="Add Course" />
                    </asp:TableCell>
                </asp:TableRow>
               
                    <asp:TableRow >                                        
                                        <asp:TableCell style ="color:green" ColumnSpan="2">
                                            <asp:Label ID="lblsucc" runat="server" Text="Course Assigned Successfully!" Visible="False"></asp:Label> 
                                            <asp:TextBox ID="txtcompliant" Visible="false" CssClass="txt" runat="server"></asp:TextBox>
                                        </asp:TableCell>
                                        
                                    </asp:TableRow>


                 
                </asp:Table>
            </ContentTemplate>
            </asp:UpdatePanel>
            <table align="center">
                <tr>
                    <td class="lbl">Location:</td>

                    <td class="style1">
                        


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
                        Assign To :</td>
                    <td>
                        <label class="radio-inline">
                            <asp:RadioButton ID="rb_CourseType" GroupName="Course" runat="server" Checked="true"  AutoPostBack="true" /> Course Type
                        </label>
                        <label class="radio-inline">
                            <asp:RadioButton ID="rb_Course" GroupName="Course" runat="server"  AutoPostBack="true"/> Course
                        </label>
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
        </td>
        </tr>
            </table>--%>
</asp:Content>
