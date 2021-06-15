<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.Master" AutoEventWireup="true" CodeBehind="SignHere.aspx.cs" Inherits="helloWorld.Users.SignHere" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
            <div class="col-lg-12 bg_class">
                <div class="add_user_class">
                  <div class="flot_left_class_ma margin_class">
                 
                 <div class="form-row col-md-12 buttom_class">
                 <div class="form-group col-md-12">
                    <h1 style="color:#fff;margin-top:40px;margin-bottom:20px;"><asp:Label ID="safetybltname" runat="server" Text="" ></asp:Label></h1>
                </div>
                <div class="form-group col-md-12">
                    <h3>I confirm that I have read and understand the above Safety Bulletin.</h3>
                </div>
                <div class="form-group col-md-5">
                    <asp:TextBox ID="safetyName" style="box-shadow:none;" CssClass="form-control" runat="server" Placeholder="Enter your Full Name"></asp:TextBox>
                </div>                 
                 <div class="form-group col-md-2">
                     <asp:Button ID="Button10" CssClass="new_add_btn" style="margin-top: 0px;" runat="server" Text="Sign" OnClick="submitBtn_Click" />                 
                 </div>
                  <div class="form-group col-md-5">
                    
                </div>
                 </div>

            </div>
        </div> 

    </div>   </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPH_Scripts" runat="server">
</asp:Content>
