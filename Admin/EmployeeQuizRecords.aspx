<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="EmployeeQuizRecords.aspx.cs" Inherits="helloWorld.Admin.EmployeeQuizRecords" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h4 class="heading_class">Employee Quiz Records</h4>
        <div class="col-lg-12">
                <div class="add_user_class">
                  <div class="flot_left_class_ma margin_class">
                      <div class="form-row col-md-8 buttom_class">
                <div class="form-group col-md-6">
                    <label for="" class="col-form-label bold_class">Station</label>
                    <asp:DropDownList ID="DDLocation" type="button" class="compliance_class dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" runat="server" DataSourceID="DBDDLocation" DataTextField="Location" DataValueField="Location" AutoPostBack="True"></asp:DropDownList>
                    <asp:SqlDataSource ID="DBDDLocation" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Location] FROM [lLocation]"></asp:SqlDataSource>
        
                </div>
                 <div class="form-group col-md-6">                     
                     <label for="" class="col-form-label bold_class">User</label>
                     <asp:DropDownList ID="DDEmployee" type="button" class="compliance_class dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" runat="server" AutoPostBack="True" DataSourceID="DBDDEmployee" DataTextField="UserName" DataValueField="UserName"></asp:DropDownList>
                    <asp:SqlDataSource ID="DBDDEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [UserName] FROM [tblUser] WHERE ([Location] = @Location) ORDER BY [UserName]">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DDLocation" Name="Location" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                 </div>
                 </div>
                      <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive border_class manage_airports" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="DBCOURSE" PageSize="10" OnRowDataBound="GridView1_RowDataBound" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Quiz" HeaderText="Quiz" SortExpression="Quiz" />
                <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
                <asp:BoundField DataField="Compliant" HeaderText="Compliant" SortExpression="Compliant" />
                <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                <asp:BoundField DataField="Completed" HeaderText="Completed" SortExpression="Completed" />
                <asp:BoundField DataField="Reset Date" HeaderText="Reset Date" SortExpression="Reset Date" />
                <asp:BoundField DataField="AssignBy" HeaderText="Assigner"  />
                <asp:BoundField DataField="AssignDateTime" HeaderText="Assign Date"  />
                <asp:TemplateField   HeaderText="Remove Course">
                  <ItemTemplate>                  
                         <asp:ImageButton runat="server" ImageUrl="~/Images/trash.png"  ToolTip="Remove Course" Height="70" Width="70" CssClass="trash-button" OnClick="trash_Click" OnClientClick="return confirm('Are you sure you want to delete this course?');"    />   
                  </ItemTemplate>
                </asp:TemplateField>
            </Columns> 
            <PagerStyle HorizontalAlign = "Right"  />            
        </asp:GridView>
        <asp:SqlDataSource ID="DBCOURSE" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT CourseName AS 'Quiz', CourseID, Compliant, Score, Completed, ResetDate AS 'Reset Date',AssignBy,AssignDateTime FROM Course WHERE (Username = @Username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DDEmployee" Name="Username" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
                    </div>
                </div>
        </div>
    </div>
<%--   <div class="row">
    <div class="btn-group col-sm">
        <button type="button" class="btn btn-primary">Station</button>
        
    </div>
       <div class="btn-group col-sm">
           </div>
    <div class="btn-group col-sm">
        <button type="button" class="btn btn-primary">Username</button>
        
    </div>
       </div>
    <div>
        

    </div>--%>
        
</asp:Content>
