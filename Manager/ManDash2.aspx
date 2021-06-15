<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="ManDash.aspx.cs" Inherits="helloWorld.Manager.ManDash" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.0.0.min.js"></script>

    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/popper.min.js"></script>
    <style type="text/css">

        .tbll{
            height: 500px;
            width: 1000px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="tbll">
         <tr>
            <td class="tblhead">
                Your Station Non-Compliance
                
               
             </td>
        </tr>
         <tr>
             <td> <asp:Button ID="Button20" runat="server" Text="Safety Bulletin Records" OnClick="Button20_Click" /> </td>
         </tr>
         <tr>
             <td>
                 <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
             </td>
         </tr>
         <tr>
             <td>
                 <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="500px" Width="1000px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="7">
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                        <asp:BoundField DataField="CourseCat" HeaderText="Course Type" SortExpression="CourseCat" />
                        <asp:BoundField DataField="CourseName" HeaderText="Course Name" SortExpression="CourseName" />
                        <asp:BoundField DataField="Compliant" HeaderText="Compliant" SortExpression="Compliant" />
                        <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                        
                        <asp:BoundField DataField="Completed" HeaderText="Completed" SortExpression="Completed" />
                        <asp:BoundField DataField="ResetDate" HeaderText="Reset Date" SortExpression="ResetDate" />
                        
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT tblUser.UserName, tblUser.LastName, Course.CourseCat, Course.CourseName, Course.Compliant, Course.Score, Course.Completed, Course.ResetDate FROM tblUser INNER JOIN Course ON tblUser.UserName = Course.Username WHERE (tblUser.Location = @Location) AND (Course.Compliant = 'No') AND (tblUser.Active = 1)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="Location" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource> </td>
         </tr>
         </table>
</asp:Content>
