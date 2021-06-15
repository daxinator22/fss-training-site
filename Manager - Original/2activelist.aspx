<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="2activelist.aspx.cs" Inherits="helloWorld.Manager._2activelist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style type="text/css">
         .style5 {
             height: 23px;
         }

         .style6 {
             width: 561px;
         }

         .GridViewEditRow input[type=text] {
             width: 50px;
         }
         /* size textboxes */
         .GridViewEditRow select {
             width: 50px;
         }
         /* size drop down lists */
         .tbll{
            height: 400px;
            width: 1000px;
        }
         .divider{
             height: 500px;
             width: 1000px;
             border: solid 1px red;
         }
         .divdha{
             height: 40px;
             width: 1000px;
             border: solid 1px red;
             padding-top: 5px;
             padding-left: 50px;
         }
         .divdhaSt{
             padding-left: 250px;
         }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbll">
        <tr>
            <td >
                <p class="divdha">Search Employee: <asp:TextBox ID="txtSearch" placeholder="Enter Last Name" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" /> <span class="divdhaSt">  Station: <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label> </span>
                </p><asp:GridView ID="GridView1" runat="server" class="divider" CellPadding="4" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" Height="500px" Width="1000px" AllowPaging="True" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"  Text='<%# Bind("FirstName") %>' ></asp:TextBox>
                                <asp:RequiredFieldValidator ID ="rfvEditFirstName" runat ="server" ErrorMessage =" First Name is Required"
                                    ControlToValidate ="TextBox1" Text ="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server"  Text='<%# Bind("FirstName") %>' ></asp:Label>
                            </ItemTemplate>
                           
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="LastName" SortExpression="LastName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID ="rfvEditLastName" runat ="server" ErrorMessage =" Last Name is Required"
                                    ControlToValidate ="TextBox2" Text ="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID ="rfvEditEmail" runat ="server" ErrorMessage =" Email is Required"
                                    ControlToValidate ="TextBox3" Text ="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="EmployeeID" SortExpression="EmployeeID">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("EmployeeID") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmployeeID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
                            <EditItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                                
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Password" SortExpression="Password">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID ="rfvEditPassword" runat ="server" ErrorMessage =" Password is Required"
                                    ControlToValidate ="TextBox5" Text ="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Location" SortExpression="Location">
                            <EditItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
                               
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Active" SortExpression="Active">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Active") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID ="rfvEditActive" runat ="server" ErrorMessage =" Active is Required"
                                    ControlToValidate ="TextBox7" Text ="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Active") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                    </Columns>
                    <EditRowStyle CssClass="GridViewEditRow" BackColor="#7C6F57" />
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
                    SelectCommand="EmployeeSearchWithActive" SelectCommandType="StoredProcedure"
                    UpdateCommand="UPDATE [tblUser] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [UserName] = @UserName, [Password] = @Password, [Location] = @Location, [Active] = @Active WHERE [EmployeeID] = @EmployeeID">
                   
                    <SelectParameters>
                         <asp:ControlParameter ControlID="Label9" Name="Location" PropertyName="Text" Type="String" />
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
