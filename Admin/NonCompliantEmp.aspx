<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="NonCompliantEmp.aspx.cs" Inherits="helloWorld.Admin.NonCompliantEmp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <div class="container-fluid">
        <h4 class="heading_class">Non Compliant Employee</h4>
        <div class="col-lg-12">
                <div class="add_user_class">
                  <div class="flot_left_class_ma margin_class">
                      <div class="form-row col-md-8 buttom_class">
                          <div class="form-group col-md-6">                
                        <label class="col-form-label bold_class">Your Station Non-Compliance</label>
                            <asp:DropDownList ID="locationDrp" runat="server" class="compliance_class" AutoPostBack="True" DataSourceID="locationDAta" DataTextField="Location" DataValueField="Location"></asp:DropDownList>
                            <asp:SqlDataSource ID="locationDAta" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Location] FROM [lLocation]"></asp:SqlDataSource>
                           </div>
                    </div>
                    <asp:GridView ID="GridView1" CssClass="table table-responsive border_class manage_airports" runat="server" DataSourceID="SqlDataSource1"  AllowPaging="True" AutoGenerateColumns="False" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="CourseCat" HeaderText="CourseCat" SortExpression="CourseCat" />
                        <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                        <asp:BoundField DataField="Compliant" HeaderText="Compliant" SortExpression="Compliant" />
                        <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                        
                        <asp:BoundField DataField="Completed" HeaderText="Completed" SortExpression="Completed" />
                        <asp:BoundField DataField="ResetDate" HeaderText="ResetDate" SortExpression="ResetDate" />
                        <asp:BoundField DataField="AssignBy" HeaderText="Assigner"  />
                        <asp:BoundField DataField="AssignDateTime" HeaderText="Assign Date" />
                        
                    </Columns>
                       <PagerStyle HorizontalAlign="Right" />                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT tblUser.UserName,tblUser.FirstName, tblUser.LastName, Course.CourseCat, Course.CourseName, Course.Compliant, Course.Score, Course.Completed, Course.ResetDate, AssignBy, AssignDateTime FROM tblUser INNER JOIN Course ON tblUser.UserName = Course.Username WHERE (tblUser.Location = @Location) AND (Course.Compliant = 'No')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="locationDrp" Name="Location" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                  </div>
                </div>
        </div>
    </div>
       <%--<table class="tbll">
          
         <tr>
            <td class="tblhead">
                Your Station Non-Compliance</td>
        </tr>
            <tr>
               <td>
                      

               </td>
           </tr>
         <tr>
             <td>
                 <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
             </td>
         </tr>
         <tr>
             <td>
                  </td>
         </tr>
         </table>--%>
</asp:Content>
