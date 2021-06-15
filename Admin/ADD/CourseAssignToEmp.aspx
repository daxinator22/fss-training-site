<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="CourseAssignToEmp.aspx.cs" Inherits="helloWorld.Admin.ADD.CourseAssignToEmp" %>
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
                        <asp:DropDownList ID="MLocation" class="assign_courses_class" runat="server" AutoPostBack="True" DataSourceID="DBLocation" DataTextField="Location" DataValueField="Location">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="DBLocation" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Location] FROM [lLocation]"></asp:SqlDataSource>                    
                    </div>
                    </div>

                    <div class="form-row col-md-8">
                    <div class="form-group col-md-6 margin_class">
                    <label class="col-form-label bold_class">User</label>
                        <asp:DropDownList ID="UserDropdownList"  runat="server" Class="assign_courses_class" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName" AutoPostBack="True"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT UserName FROM tblUser WHERE (Location = @Location) AND (Active = 1) ORDER BY UserName">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="MLocation" Name="Location" PropertyName="SelectedValue" Type="String" />
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
    <%--<div class="container-fluid">
        <h4 class="heading_class">Assign Course</h4>
        <div class="row">
            <div class="col-md-12">
                
               <div class="add_user_class">                                                           
                        <div class="form-row col-md-8">
                                <div class="form-group col-md-6">
                                    <label for="" class="col-form-label">Location</label>
                                    
                                </div>
                                <div class="form-group col-md-6">
									<label for="" class="col-form-label">User</label>
									
                                                           
                                </div>
                            <h5 class="associated_class">Assign To</h5>
                                <div class="form-row col-md-6">
                                <div class="form-group col-md-6">
                                <label class="container_label">Course Type
  								
  								<span class="checkmark"></span>
								</label>
                                </div>
                                <div class="form-group col-md-6">
                                <label class="container_label">Course
  								
  								<span class="checkmark"></span>
								</label>
                                </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="" class="col-form-label">Course Type</label>
                                    
                                </div>
                                <div class="form-group col-md-6">
									<label for="" class="col-form-label">Course</label>
									
                                                           
                                </div>

                            <div class="form-group col-md-2">
                                
                            </div>
                                </div>

                                </div>
                                
                        
                        
                </ContentTemplate>
            </asp:UpdatePanel>                             
                        </div>
        </div>
                    
                    </div>--%>
    
</asp:Content>
