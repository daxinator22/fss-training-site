<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="complianceReport.aspx.cs" Inherits="helloWorld.Admin.complianceReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .h1 {
            color: red;
            text-align: center;
        }
        .div {
  border: 1px solid black;
  background-color: lightblue;
  padding-top: 50px;
  padding-right: 30px;
  padding-bottom: 50px;
  padding-left: 80px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1 class="h1"> Customized Compliance Reporting</h1>
    <div class="div">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem Value="Compliance"> Compliance Report</asp:ListItem>
            <asp:ListItem Value="Non-Compliance"> Non-Compliance Report </asp:ListItem>
        </asp:DropDownList>

        <br />

        <p> Stations: <asp:DropDownList ID="DDStations" runat="server" DataSourceID="SqlDataSource1" DataTextField="Location" DataValueField="Location" AutoPostBack="True"></asp:DropDownList> Users:<asp:DropDownList ID="DDUsers" runat="server" DataSourceID="SqlDataSource2" DataTextField="UserName" DataValueField="UserName" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource ID="SDUsers" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [UserName] FROM [tblUser] WHERE ([Location] = @Location) ORDER BY [UserName]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DDStations" Name="Location" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SDStations" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Location] FROM [lLocation]"></asp:SqlDataSource>
        </p>

        Courses: <asp:DropDownList ID="DDCourses" runat="server" AutoPostBack="True" DataSourceID="SDCourses" DataTextField="CourseName" DataValueField="CourseName"></asp:DropDownList>
        <asp:SqlDataSource ID="SDCourses" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [CourseName] FROM [AddCourse]"></asp:SqlDataSource>
    
       
    
    </div>
     <asp:GridView ID="GridView1" runat="server"></asp:GridView>

</asp:Content>
