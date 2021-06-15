<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="UserSummary.aspx.cs" Inherits="helloWorld.Manager.UserSummary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" />     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h4 class="heading_class">Your Station User Summary</h4>
        <div class="col-lg-12">
                <div class="add_user_class">
                  <div class="flot_left_class_ma margin_class">
                      <div class="form-row col-md-8 buttom_class">
                <div class="form-group col-md-6">
                <label for="" class="col-form-label bold_class">Search User Name</label>
                    <asp:TextBox ID="txt_SearchUserName" placeholder="Enter Last Name" runat="server" CssClass="form-control"></asp:TextBox>                        
                </div>
                 <div class="form-group col-md-2">
                     <asp:Label runat="server" ID="lvlStation" Visible="false"></asp:Label>
                     <asp:Button ID="btnadd" runat="server" CssClass="location_btn" Text="Search" />
                 </div>
                 </div>

                      <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive border_class manage_airports" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None" AllowPaging="True"   PageSize="10">
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />                        
                        <asp:TemplateField HeaderText="Summary">
                            <ItemTemplate>
                            <asp:LinkButton ID="btn_ManageUser" runat="server" Text="Course Summary" OnClick="btn_ManageUser_Click" ></asp:LinkButton>
                            </ItemTemplate>
                            </asp:TemplateField>
                    </Columns>                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT UserName, FirstName, LastName, Location FROM tblUser WHERE Location = @Location AND Active = 1 ORDER BY UserName" FilterExpression="UserName LIKE '{0}%'">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lvlStation" Name="Location" PropertyName="Text" />
                    </SelectParameters>
                    <FilterParameters>
                        <asp:ControlParameter Name="UserName" ControlID="txt_SearchUserName" PropertyName="Text" />
                    </FilterParameters>
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
                    <asp:Label ID="Label7" runat="server" Font-Bold="False" ForeColor="Blue" Text="Station"></asp:Label>
                :
                    <asp:Label ID="lvlStation" runat="server" Font-Bold="True" ForeColor="Blue" Text="Label"></asp:Label>
            </td>

        </tr>
        <tr>
            <td class="tblhead">
                Your Station User Summary&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lvlReport" runat="server" ForeColor="Lime"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" Text="Search User Name "></asp:Label>
                <asp:TextBox runat="server" ID="txt_SearchUserName" Width="200"></asp:TextBox>
                <asp:Button runat="server" ID="btn_Search" Text="Search" />
            </td>
        </tr>
        
        <tr>
             <td>
                
                
                 
            </td>
        </tr>

        
      </table>--%>
</asp:Content>
