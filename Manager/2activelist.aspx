<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="2activelist.aspx.cs" Inherits="helloWorld.Manager._2activelist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" />     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h4 class="heading_class">Edit Employee</h4>
        <div class="col-lg-12">
                <div class="add_user_class">
                  <div class="flot_left_class_ma margin_class">
                      <div class="form-row col-md-8 buttom_class">
                <div class="form-group col-md-6">
                <label for="" class="col-form-label bold_class">Search Employee</label>
                    <asp:TextBox ID="txtSearch" placeholder="Enter Last Name" runat="server" CssClass="form-control"></asp:TextBox>                        
                </div>
                 <div class="form-group col-md-2">
                     <asp:Label runat="server" ID="Label9" Visible="false"></asp:Label>
                     <asp:Button ID="btnadd" runat="server" CssClass="location_btn" Text="Search" />
                 </div>
                 </div>

                      <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive border_class manage_airports"  AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1"  AllowPaging="True" GridLines="None">                    
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
                </asp:GridView>
                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
                    DeleteCommand="DELETE FROM [tblUser] WHERE [EmployeeID] = @EmployeeID"
                    InsertCommand="INSERT INTO [tblUser] ([FirstName], [LastName], [Email], [EmployeeID], [UserName], [Password], [Location], [Active]) VALUES (@FirstName, @LastName, @Email, @EmployeeID, @UserName, @Password, @Location, @Active)"
                    SelectCommand="EmployeeSearchWithActive" SelectCommandType="StoredProcedure"
                    UpdateCommand="UPDATE [tblUser] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Password] = @Password, [Active] = @Active WHERE [EmployeeID] = @EmployeeID">
                   
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

                   </div>
                </div>
        </div>
    </div>

    <%--<table class="tbll">
        <tr>
            <td >
                <p class="divdha">Search Employee: <asp:TextBox ID="txtSearch" placeholder="Enter Last Name" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" /> <span class="divdhaSt">  Station: <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label> </span>
                </p>
            </td>
        </tr>

        <tr>
            <td >
                &nbsp;</td>
        </tr>

        </table>--%>
              
</asp:Content>
