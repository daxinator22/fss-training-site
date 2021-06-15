<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="addTestMaterials.aspx.cs" Inherits="helloWorld.Admin.ADD.addTestMaterials" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
       .myclass
       {          
          border-bottom: solid 2px black;
          padding-bottom:10px;          
       }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
                    
        <div class="row">
           <div class="col-md-12">
                                                      
                <div class="add_user_class bold_class">
                <div class="form-row col-md-6 pdfclass">
                    <div class="form-group col-md-4">
                        <asp:DropDownList ID="DropDownCourseID" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="CourseId" DataValueField="CourseId"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [CourseId] FROM [AddCourse]"></asp:SqlDataSource>
                    </div>
                <div class="form-group col-md-4">
                    <asp:FileUpload ID="FileUpload1" runat="server" class="filestyle" data-input="false" />                
                </div>
            <div class="form-group col-md-4">
                <asp:Button ID="Button1" runat="server" Text="Upload" class="btn1" style="margin-top: 0; box-shadow: none;" OnClick="Upload" />
                                                       
            </div>
            </div>

    <div class="row">
      <div class="form-row col-md-6">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowHeader="false" GridLines="None">
    <Columns>
        <asp:TemplateField>
                <ItemTemplate>
                    <span class="img_new_class"><img src="/assets/images/pdf_icon.png"></span>
                </ItemTemplate>
            </asp:TemplateField>
        <asp:BoundField DataField="Name" HeaderText="File Name" />
        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:Button ID="lnkView" runat="server" CssClass="view_button" Text="View" OnClick="View" CommandArgument='<%# Eval("Id") %>'></asp:Button>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <RowStyle CssClass="myclass" />
</asp:GridView>
    </div>
    <div class="form-row col-md-6">
        <asp:Literal ID="ltEmbed" runat="server" />
    </div>
    </div>
    </div></div></div>
</div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="CPH_Scripts">
    <script src="/assets/libs/bootstrap-filestyle2/bootstrap-filestyle.min.js"></script>
</asp:Content>