<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="positioncode.aspx.cs" Inherits="helloWorld.Admin.ADD.positioncode" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">

           <!--  <h4 class="heading_class">ADD LOCATION</h4>
 -->
            <div class="col-lg-9">
                <div class="add_user_class">
                  <div class="flot_left_class_ma margin_class">
                
                  
                         <div class="form-row col-md-12 buttom_class" style="margin-top: 25px;">
                <div class="form-group col-md-4">
               <label class="form-group">Position Code</label>
                    <asp:TextBox ID="txtPcode" CssClass="form-control" runat="server"></asp:TextBox>
                 
                </div>
                 <div class="form-group col-md-4">
               <label class="form-group">Description</label>
                 <asp:TextBox ID="txtD" CssClass="form-control" runat="server"></asp:TextBox>
                     
                </div>
                 <div class="form-group col-md-4">
                     <asp:Button ID="Button1" runat="server" CssClass="new_add_btn" Text="Add" OnClick="Button1_Click" />                 
                 </div>
                 </div>

                <asp:GridView ID="GridView1" BorderWidth="0" CssClass="table border_class manage_airports" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
        <PagerStyle HorizontalAlign="Right" />

    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Position], [Description] FROM [tblPosition]"></asp:SqlDataSource>

                    
            </div>
        </div> 

    </div>   </div> 

</asp:Content>
