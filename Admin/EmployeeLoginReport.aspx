<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="EmployeeLoginReport.aspx.cs" Inherits="helloWorld.Admin.EmployeeLoginReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" />     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h4 class="heading_class">Employee Login Report</h4>
        <div class="col-lg-12">
                <div class="add_user_class">
                  <div class="flot_left_class_ma margin_class">
                      <div class="form-row col-md-8 buttom_class">
                <div class="form-group col-md-6">
                <label for="" class="col-form-label bold_class">Search UserName</label>
                    <asp:TextBox ID="txtSearch" placeholder="Enter UserName" runat="server" CssClass="form-control"></asp:TextBox>                        
                </div>
                 <div class="form-group col-md-2">
                     <asp:Button ID="btnadd" runat="server" CssClass="location_btn" Text="Search" />
                 </div>
                 </div>

                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive border_class manage_airports" AutoGenerateColumns="False" DataSourceID="SessionLoginDB" AllowPaging="True" GridLines="None">
                    
                    <Columns>
                        <asp:BoundField DataField="SessionId" HeaderText="SessionId" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName"  />
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" />                        
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                        <asp:BoundField DataField="Location" HeaderText="Station" />
                        <asp:BoundField DataField="IPAddress" HeaderText="IP Address" />
                        <asp:BoundField DataField="LoginDateTime" HeaderText="Login Date" SortExpression="LoginDateTime" />
                    </Columns>                    
                </asp:GridView>
                <asp:SqlDataSource ID="SessionLoginDB" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SelectUserLoginRecords" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtSearch" Name="UserName" PropertyName="Text" DefaultValue="" ConvertEmptyStringToNull="false" Type="String" />                            
                        </SelectParameters>
                    </asp:SqlDataSource>
                   </div>
                </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPH_Scripts" runat="server">
</asp:Content>
