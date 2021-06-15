<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="activelist.aspx.cs" Inherits="helloWorld.Manager.activelist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .GridViewEditRow input[type=text] {
            width: 50px;
        }
        /* size textboxes */
        .GridViewEditRow select {
            width: 50px;
        }
        /* size drop down lists */
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <table class="auto-style1">
           <tr>
               <td class="tblhead">
                Update Employee info
               <asp:Label ID="lvlLocation" runat="server" Visible="false"></asp:Label></td>
           </tr>
        <tr>
            <td >
                <p>Search Employee: <asp:TextBox ID="txtSearch" placeholder="Enter Last Name" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" />
                </p><asp:GridView ID="GridView1" runat="server" CellPadding="4" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="231px" Width="727px" AllowPaging="True" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" readonly="true" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"  />
                        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" readonly="true" SortExpression="EmployeeID" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" readonly="true"/>
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                        <asp:CheckBoxField DataField="Active" HeaderText="Active" SortExpression="Active" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" CssClass="GridViewEditRow" /> <%--- here it keep width in same size ---%>
                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
                    DeleteCommand="DELETE FROM [tblUser] WHERE [EmployeeID] = @EmployeeID"
                    InsertCommand="INSERT INTO [tblUser] ([FirstName], [LastName], [Email], [EmployeeID], [UserName], [Password], [Location], [Active]) VALUES (@FirstName, @LastName, @Email, @EmployeeID, @UserName, @Password, @Location, @Active)"
                    SelectCommand="EmployeeSearchWithLA" SelectCommandType="StoredProcedure"
                    UpdateCommand="UPDATE [tblUser] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [UserName] = @UserName, [Password] = @Password, [Location] = @Location, [Active] = @Active WHERE [EmployeeID] = @EmployeeID">
                   
                    <SelectParameters>
                         <asp:ControlParameter ControlID="lvlLocation" Name="Location" PropertyName="Text" Type="String" />
                         <asp:ControlParameter Name="LastName" ControlID="txtSearch" PropertyName="Text" DefaultValue="" ConvertEmptyStringToNull="false" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="EmployeeID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="EmployeeID" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Location" Type="String" />
                        <asp:Parameter Name="Active" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Location" Type="String" />
                        <asp:Parameter Name="Active" Type="String" />
                        <asp:Parameter Name="EmployeeID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>

        <tr>
            <td >
                &nbsp;</td>
        </tr>

        </table>
</asp:Content>
