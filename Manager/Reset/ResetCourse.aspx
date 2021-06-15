<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="ResetCourse.aspx.cs" Inherits="helloWorld.Manager.Reset.ResetCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid">
        <h4 class="heading_class">Reset Employee Courses</h4>
        <div class="col-lg-12">
                <div class="add_user_class">
                  <div class="flot_left_class_ma margin_class">
                      <div class="form-row col-md-8 buttom_class">
                <div class="form-group col-md-6">
                <label for="" class="col-form-label bold_class">Search Employee</label>
                    <asp:TextBox ID="txtSearch" placeholder="Enter Last Name" runat="server" CssClass="form-control"></asp:TextBox>                        
                </div>
                 <div class="form-group col-md-2">
                     <asp:Button ID="btnadd" runat="server" CssClass="location_btn" Text="Search" OnClick="btnSearch_Click" />
                 </div>
                 </div>

                    <asp:GridView  ID="grdQuizList" runat="server"  CssClass="table table-responsive border_class manage_airports" GridLines="None" AllowPaging="True"   OnPageIndexChanging="OnPageIndexChanging" PageSize="5">
                            <Columns>
                                <asp:TemplateField HeaderText="">
                                    <ItemTemplate>                                    
                                        <asp:LinkButton ID="btnAction" runat="server" Text="Reset"   Font-Size="15px"  ToolTip="Reset Quiz"    OnClick="btnAction_click"  OnClientClick="return confirm('Are you sure you want to?');" />
                    
                                    </ItemTemplate>
                                </asp:TemplateField>   
                                   
                            </Columns>                            
                        </asp:GridView>
                   </div>
                </div>
        </div>
    </div>

    
        
</asp:Content>
