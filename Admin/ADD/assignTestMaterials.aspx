<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="assignTestMaterials.aspx.cs" Inherits="helloWorld.Admin.ADD.assignTestMaterials" %>
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
                        Course Name :</td>
                   <td class="style1">
                        <asp:DropDownList ID="DropDownListCourseName" DataSourceID="SqlDataSource2" CssClass="txt" runat="server" DataTextField="Name" DataValueField="Name"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT DISTINCT Name FROM Materials"></asp:SqlDataSource>
                       
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
