<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="ManagerList.aspx.cs" Inherits="helloWorld.ManagerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h4 class="heading_class">Manager List</h4>
        <div class="col-lg-12">
                <div class="add_user_class">
                  <div class="flot_left_class_ma margin_class">
                      <div class="form-row col-md-8 buttom_class">
                <div class="form-group col-md-6">
                <label for="" class="col-form-label bold_class">Search Manager</label>
                    <asp:TextBox ID="txtSearch" placeholder="Enter Last Name" runat="server" CssClass="form-control" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
        
                </div>
                 <div class="form-group col-md-2">                     
                     <asp:Button ID="btnSearch" runat="server" CssClass="location_btn" Text="Search" OnClick="btnSearch_Click" />
                 </div>
                 </div>

        <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive border_class manage_airports" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" AllowPaging="True" GridLines="None" >
        
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="Employee ID" SortExpression="EmployeeID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("EmployeeID") %>'></asp:Label>

                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmployeeID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="First Name" SortExpression="FirstName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditFirstName" runat="server" ErrorMessage=" First Name is Required"
                        ControlToValidate="TextBox1" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name" SortExpression="LastName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditLastName" runat="server" ErrorMessage=" Lastt Name is Required"
                        ControlToValidate="TextBox2" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditPhone" runat="server" ErrorMessage="Phone Number is Required"
                        ControlToValidate="TextBox3" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Position" SortExpression="Position">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Position") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditPosition" runat="server" ErrorMessage=" Position is Required"
                        ControlToValidate="TextBox4" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Position") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditEmail" runat="server" ErrorMessage=" Email is Required"
                        ControlToValidate="TextBox5" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Username" SortExpression="Username">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Username") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditUserName" runat="server" ErrorMessage=" UserName is Required"
                        ControlToValidate="TextBox6" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password" SortExpression="Password">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditPassworde" runat="server" ErrorMessage=" Password is Required"
                        ControlToValidate="TextBox7" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Location" SortExpression="Location">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditLocation" runat="server" ErrorMessage="Location is Required"
                        ControlToValidate="TextBox8" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle CssClass="GridViewEditRow" BackColor="#7C6F57" />
        <PagerStyle HorizontalAlign = "Right"  />          
    </asp:GridView>
    <asp:ValidationSummary runat="server"></asp:ValidationSummary>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
        DeleteCommand="DELETE FROM [tblManager] WHERE [EmployeeID] = @EmployeeID"
        InsertCommand="INSERT INTO [tblManager] ([EmployeeID], [FirstName], [LastName], [Phone], [Position], [Email], [Username], [Password], [Location]) VALUES (@EmployeeID, @FirstName, @LastName, @Phone, @Position, @Email, @Username, @Password, @Location)"
        SelectCommand="ManagerSearch" SelectCommandType="StoredProcedure"
        UpdateCommand="UPDATE [tblManager] SET [FirstName] = @FirstName, [LastName] = @LastName, [Phone] = @Phone, [Position] = @Position, [Email] = @Email, [Username] = @Username, [Password] = @Password, [Location] = @Location WHERE [EmployeeID] = @EmployeeID">

        <SelectParameters>
            <asp:ControlParameter Name="LastName" ControlID="txtSearch" PropertyName="Text" DefaultValue="" ConvertEmptyStringToNull="false" />
        </SelectParameters>

        <DeleteParameters>
            <asp:Parameter Name="EmployeeID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EmployeeID" Type="Int32" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Position" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Position" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="EmployeeID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
                   </div>
                </div>
        </div>
    </div>
    <%--<p>
        Search Manager:
        
    </p>
    
    --%>
</asp:Content>
