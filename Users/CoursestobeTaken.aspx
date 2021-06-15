<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.Master" AutoEventWireup="true" CodeBehind="CoursestobeTaken.aspx.cs" Inherits="helloWorld.Users.CoursestobeTaken" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" />      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h4 class="heading_class">Courses to be Completed</h4>
        <div class="col-lg-12">
            <div class="add_user_class">
                <div class="flot_left_class_ma margin_class">
                    <asp:GridView ID="grdQuizList" runat="server"  CssClass="table table-responsive border_class manage_airports" GridLines="None" AllowPaging="true" OnPageIndexChanging="OnPageIndexChanging" PageSize="5" OnSelectedIndexChanged="Page_Load" >
                            <Columns>
                         <asp:TemplateField ItemStyle-HorizontalAlign="Center">

                        <ItemTemplate>
                            <asp:LinkButton ID="lnkView" runat="server" Text="View Course"  OnClick="View"  CommandArgument='<%# Eval("id") %>'></asp:LinkButton>
                        </ItemTemplate>

                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>
                                  
                            </Columns>
                            
                        </asp:GridView>
                    
                </div>
            </div>
        </div>
   </div>
     
</asp:Content>
