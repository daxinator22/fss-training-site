<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="ManDash.aspx.cs" Inherits="helloWorld.Manager.ManDash" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h4 class="heading_class">Your Station Non-Compliance</h4>
        <div class="col-lg-12">
            <div class="add_user_class">
                <div class="flot_left_class_ma margin_class">
                    <div class="form-row col-md-8 buttom_class">
                        <asp:Label runat="server" ID="Label1" Visible="false"></asp:Label>                        
                        <asp:Button ID="Button20" runat="server" CssClass="location_btn" Width="250" Text="Safety Bulletin Records" OnClick="Button20_Click" />
                    </div>

                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive border_class manage_airports" DataSourceID="SqlDataSource1" AllowPaging="True" AutoGenerateColumns="False" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="10">
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                        <asp:BoundField DataField="CourseCat" HeaderText="Course Type" SortExpression="CourseCat" />
                        <asp:BoundField DataField="CourseName" HeaderText="Course Name" SortExpression="CourseName" />
                        <asp:BoundField DataField="Compliant" HeaderText="Compliant" SortExpression="Compliant" />
                        <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />                        
                        
                    </Columns>                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT tblUser.UserName, tblUser.LastName, Course.CourseCat, Course.CourseName, Course.Compliant, Course.Score, Course.Completed, Course.ResetDate FROM tblUser INNER JOIN Course ON tblUser.UserName = Course.Username WHERE (tblUser.Location = @Location) AND (Course.Compliant = 'No') AND (tblUser.Active = 1) order by tblUser.LastName">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="Location" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                </div>
            </div>
        </div>
   </div> 
   
</asp:Content>
