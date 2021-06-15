<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="safetyBltRecords.aspx.cs" Inherits="helloWorld.Admin.safetyBltRecords" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h4 class="heading_class">Safety Bulletin Records</h4>
        <div class="col-lg-12">
                <div class="add_user_class">
                  <div class="flot_left_class_ma margin_class">
                    <div class="form-row col-md-8 buttom_class">
                    <div class="form-group col-md-6">                                                
                        <asp:DropDownList ID="DropDownList1" runat="server" class="compliance_class" AutoPostBack="True" DataSourceID="stationblt" DataTextField="Station" DataValueField="Station"></asp:DropDownList>
                        <asp:SqlDataSource ID="stationblt" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT DISTINCT [Station] FROM [safetyReport]"></asp:SqlDataSource>

                    </div>
                     <div class="form-group col-md-6">                                              
                         <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" class="compliance_class" DataSourceID="safetyName" DataTextField="SafetyBlt" DataValueField="SafetyBlt"></asp:DropDownList>
                         <asp:SqlDataSource ID="safetyName" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [SafetyBlt] FROM [safetyReport]"></asp:SqlDataSource>
                     </div>
                     </div>

                      <asp:GridView ID="GridView1" runat="server" CssClass="table manage_airports" DataSourceID="safetyBltDB" AllowPaging="True" AutoGenerateColumns="False" GridLines="None" PageSize="8">
                        <Columns>
                            <asp:BoundField DataField="Station" HeaderText="Station" SortExpression="Station" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="SignName" HeaderText="SignName" SortExpression="SignName" />
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        </Columns>                                                 
                    </asp:GridView>
                    <asp:SqlDataSource ID="safetyBltDB" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Station], [Name], [SignName], [Username], [Date] FROM [safetyReport] WHERE (([Station] = @Station) AND ([SafetyBlt] = @SafetyBlt))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Station" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList2" Name="SafetyBlt" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                        
                  </div>
                </div>
        </div>
    </div>
    
    
    
</asp:Content>
