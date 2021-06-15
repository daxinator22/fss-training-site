<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="Location.aspx.cs" Inherits="helloWorld.Admin.Location" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">

            <h4 class="heading_class">ADD LOCATION</h4>

            <div class="col-lg-9">
                <div class="add_user_class">
                  <div class="flot_left_class_ma margin_class">
                  <div class="form-row col-md-8 buttom_class">
                  <span><a href="/Admin/Register/addRegister.aspx"> <img style="width:35px;" src="/assets/images/pre_icon.png"></a></span></div>
                  
                         <div class="form-row col-md-8 buttom_class">
                <div class="form-group col-md-6">
                <label for="" class="col-form-label bold_class">Location</label>
                    <asp:TextBox ID="txtadd" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtadd" ErrorMessage="Enter Location" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    
                </div>
                 <div class="form-group col-md-2">
                     <asp:Button ID="btnadd" runat="server" CssClass="location_btn" onclick="btnadd_Click" 
                            Text="ADD Location" />
                 </div>
                 </div>

                      <asp:GridView ID="GridView1" class="table border_class manage_airports" runat="server" AutoGenerateColumns="False"  DataKeyNames="Location" DataSourceID="SqlDataSource1" BorderWidth="0"  AllowPaging="True" PageSize="6">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" />
                                <asp:BoundField DataField="Location" HeaderText="Location" ReadOnly="True" SortExpression="Location" />
                                <asp:BoundField DataField="Date" HeaderText="Added on" SortExpression="Date" />
                            </Columns>   
                          <PagerStyle HorizontalAlign = "Right"  />                          
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [lLocation] WHERE [Location] = @Location" InsertCommand="INSERT INTO [lLocation] ([Location], [Date]) VALUES (@Location, @Date)" SelectCommand="SELECT * FROM [lLocation]" UpdateCommand="UPDATE [lLocation] SET [Date] = @Date WHERE [Location] = @Location">
                            <DeleteParameters>
                                <asp:Parameter Name="Location" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Location" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter DbType="Date" Name="Date" />
                                <asp:Parameter Name="Location" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

            </div>
        </div> 

    </div>   </div>

     <%--<table class="tbl">
    <tr>
        <td class="tblhead">
            &nbsp;ADD Location</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button10" runat="server" Text="Back" BackColor="Red" ForeColor="#990099" OnClick="Button10_Click" /></td>
    </tr>
         <tr>
             <td>
                 &nbsp;
             </td>
         </tr>
    <tr>
        <td>
            <table  align="center">
                <tr>
                    <td class="lbl">
                        Location :</td>
                  
                    <td class="style1">
                        
                    </td>
                    
                </tr>
                
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        
                    </td>
                </tr>
                </table>
            </table>--%>



</asp:Content>
