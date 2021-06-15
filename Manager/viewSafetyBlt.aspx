<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="viewSafetyBlt.aspx.cs" Inherits="helloWorld.Manager.viewSafetyBlt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h4 class="heading_class">View Safety Bulletin</h4>
        <div class="col-lg-12">
                <div class="add_user_class">
                  <div class="flot_left_class_ma margin_class">
                    <div class="form-row col-md-8 buttom_class">
                    <div class="form-group col-md-6">                                                
                        <asp:Label ID="lvlsafety" runat="server" Text="" Visible="false"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="SafetyBlt" DataValueField="SafetyBlt"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT DISTINCT [SafetyBlt] FROM [safetyReport] WHERE ([Station] = @Station)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lvlsafety" Name="Station" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </div>
                     
                     </div>

                      <asp:GridView ID="GridView1" CssClass="table manage_airports" runat="server" AutoGenerateColumns="False" GridLines="None"  DataSourceID="SqlDataSource2" AllowPaging="True">
                        <Columns>
                            <asp:BoundField DataField="Station" HeaderText="Station" SortExpression="Station" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        </Columns>                        
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Station], [Name], [Username], [Date] FROM [safetyReport] WHERE (([SafetyBlt] = @SafetyBlt) AND ([Station] = @Station))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="SafetyBlt" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="lvlsafety" Name="Station" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                  </div>
                </div>
        </div>
    </div>

    
    
</asp:Content>
