<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.Master" AutoEventWireup="true" CodeBehind="ViewSafetyBlt.aspx.cs" Inherits="helloWorld.Users.ViewSafetyBlt" %>
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
          <h4 class="heading_class">List of Safety Bulletins</h4>          
        <div class="row">
           <div class="col-md-12">
                                                      
                <div class="add_user_class bold_class">
            
    <div class="row">
      <div class="form-row col-md-6">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowHeader="false" GridLines="None"  >
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
        <div class="form-row col-md-12">
        <div class="form-group col-md-3">
            <asp:Button ID="safetyBack" runat="server" class="register_btn" Text="Done" Visible="False" OnClick="safetyBack_Click" />
        </div>
        <div class="form-group col-md-3">
        </div>
        <div class="form-group col-md-3">
        </div>
        <div class="form-group col-md-3">
            <asp:Button ID="iRead" runat="server" Text="Sign Here" class="register_btn" OnClick="iRead_Click" Visible="False" />            
        </div>
        </div>
        <asp:HiddenField runat="server" ID="hide_SaftyBltName" />
    </div>
    </div>

</div>
   </div>
     </div>
        </div>
    
</asp:Content>
