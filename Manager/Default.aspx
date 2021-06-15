<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="helloWorld.Manager.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <h4 class="heading_class">Your Station Compliance Report</h4>
        <div class="col-lg-12">
            <div class="add_user_class">
                <div class="flot_left_class_ma margin_class">
                    <div class="form-row col-md-8 buttom_class">
                 <h3><span style="text-decoration: underline;">Score<br></span> <span style="color: #606FEF"><asp:Label runat="server" ID="lvlReport"></asp:Label></span></h3>
                    </div>

                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive border_class manage_airports" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                        <asp:BoundField DataField="CourseName" HeaderText="Course " SortExpression="CourseName" />
                        <asp:BoundField DataField="Compliant" HeaderText="Compliant" SortExpression="Compliant" />
                        <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                        <asp:BoundField DataField="Completed" HeaderText="Completed" SortExpression="Completed" />
                        <asp:BoundField DataField="ResetDate" HeaderText="Reset Date" SortExpression="ResetDate" />
                    </Columns>
                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT tblUser.UserName, tblUser.FirstName, tblUser.LastName, tblUser.Location, Course.CourseName, Course.Compliant, Course.Score, Course.Completed, Course.ResetDate FROM tblUser INNER JOIN Course ON tblUser.UserName = Course.Username WHERE (tblUser.Location = @Location) AND (tblUser.Active = 1) ORDER BY Course.ResetDate">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lvlStation" Name="Location" PropertyName="Text" />
                    </SelectParameters>
                 </asp:SqlDataSource>
                
                </div>
            </div>
        </div>
    </div>

    <%--<table class="tbll">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="Welcome " ForeColor="#00CC3A"></asp:Label>
                <asp:Label ID="lvlName" runat="server" Text="label" BackColor="White" BorderColor="#66FF99" Font-Bold="True" Font-Italic="False" ForeColor="#00CC00"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                :
                    <asp:Label ID="lvlStation" runat="server" Font-Bold="True" ForeColor="Blue" Text="Label"></asp:Label>
            </td>

        </tr>
        <tr>
            <td class="tblhead">
                Your Station Compliance Report&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lvlReport" runat="server" ForeColor="Lime"></asp:Label>
            </td>
        </tr>
        
        <tr>
             <td>
                
                 
            </td>
        </tr>

        
      </table>--%>

    


</asp:Content>
