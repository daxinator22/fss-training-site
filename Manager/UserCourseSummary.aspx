<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="UserCourseSummary.aspx.cs" Inherits="helloWorld.Manager.UserCourseSummary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h4 class="heading_class">Your Station Course Summary</h4>
        <div class="col-lg-12">
            <div class="add_user_class">
                <div class="flot_left_class_ma margin_class">
                    <div class="form-row col-md-8 buttom_class">
                 <h3><span style="text-decoration: underline;">User Name<br></span> <span style="color: #606FEF"><asp:Label runat="server" ID="lbl_UserName"></asp:Label></span></h3>
                    </div>

                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive border_class manage_airports" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None" AllowPaging="True" PageSize="10">
                    <Columns>
                        <asp:BoundField DataField="CourseId" HeaderText="Id" SortExpression="CourseId" />
                        <asp:BoundField DataField="CourseName" HeaderText="Course Name" SortExpression="CourseName" />
                        <asp:BoundField DataField="CourseCat" HeaderText="Category" SortExpression="CourseCat" />
                        <asp:BoundField DataField="Score" HeaderText="Score (%)" SortExpression="Score" />                        
                        <asp:BoundField DataField="Completed" HeaderText="Completed Date"  />                        
                        <asp:BoundField DataField="ResetDate" HeaderText="Reset Date"  />                        
                        <asp:TemplateField HeaderText="Summary">
                            <ItemTemplate>
                            <asp:LinkButton ID="btn_CourseDetail" runat="server" Text="Course Detail" OnClick="btn_CourseDetail_Click" ></asp:LinkButton>
                            </ItemTemplate>
                            </asp:TemplateField>
                    </Columns>
                    
                </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT * FROM Course WHERE UserName = @UserName and Compliant='Yes'">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lbl_UserName" Name="UserName" PropertyName="Text" />
                        </SelectParameters>
                     </asp:SqlDataSource>
                
                </div>
            </div>
        </div>
    </div>
   <%-- <table class="tbll">
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
                User Name: <asp:Label ID="lbl_UserName" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
             <td>
                
                
                
                 
            </td>
        </tr>

        
      </table>--%>
</asp:Content>
