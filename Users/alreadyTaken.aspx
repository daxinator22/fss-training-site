<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.Master" AutoEventWireup="true" CodeBehind="alreadyTaken.aspx.cs" Inherits="helloWorld.Users.alreadyTaken" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="alert alert-danger" role="alert" style="margin-top:50px;">
        <h1 class="alert-heading">Please contact your Manager!</h1>
        You already attemped 3 times! 
    </div>

</asp:Content>
