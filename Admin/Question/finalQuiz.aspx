<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="finalQuiz.aspx.cs" Inherits="helloWorld.Admin.Question.finalQuiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table class="tbl">
    <tr>
        <td class="tblhead">
            &nbsp;Assign Courses</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button10" runat="server" Text="Back" BackColor="Red" ForeColor="#990099" OnClick="Button10_Click" />
        </td>
    </tr>
    <tr>
        <td>
            <table  align="center">
                <tr>
                    <td class="lbl">
                        Location:</td>
                    
                        <td class="style1">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Location" DataValueField="Location" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT * FROM [lLocation]"></asp:SqlDataSource>
                        
                    
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        User:</td>
                   
                    <td class="style1"><asp:DropDownList ID="UserDropdownList" runat="server" CssClass="txt" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName"  ></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [UserName] FROM [tblUser] WHERE ([Location] = @Location)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Location" PropertyName="SelectedValue" Type="String" />
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
                        <asp:DropDownList ID="DropDownCourseType" DataSourceID="SqlDataSource4" CssClass="txt" runat="server" DataTextField="CourseCat" DataValueField="CourseCat" AutoPostBack="True"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT DISTINCT [CourseCat] FROM [AddCourse]"></asp:SqlDataSource>
                    </td>
                </tr>

                <tr>
                    <td class="lbl">
                        Course Name :</td>
                   <td class="style1">
                        <asp:DropDownList ID="DropDownListCourseName" DataSourceID="SqlDataSource2" CssClass="txt" runat="server" DataTextField="CourseName" DataValueField="CourseName" AutoPostBack="True"></asp:DropDownList>
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
                        <asp:DropDownList ID="DropDownListCourseId" DataSourceID="SqlDataSource6" CssClass="txt" runat="server" DataTextField="CourseID" DataValueField="CourseID"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [CourseID] FROM [AddCourse] where ([CourseName]=@CourseName)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownListCourseName" Name="CourseName" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        
                    </td>
                        </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtscore" TextMode="Number" CssClass="txt" runat="server" Visible="False"></asp:TextBox>
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
</asp:Content>
