<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="helloWorld.Users.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container-fluid">
        <h4 class="heading_class">Update Your Information</h4>
        <div class="row">
            <div class="col-md-12">
                                                      
                <div class="add_user_class bold_class">
                    <div class="form-row col-md-8">
                        <div class="form-group col-md-6">
                            Today&#39;s Date :<asp:Label ID="lblcourse" runat="server"></asp:Label>                            
                            <asp:Label ID="lvlEmployeeID" runat="server" Visible="false"></asp:Label>
                        </div>
                        
                        </div>
                    <div class="form-row col-md-8">
                        <div class="form-group col-md-6">
                            <label for="" class="col-form-label bold_class">Email</label>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" PlaceHolder="Enter Your Email Address" autocomplete="off"></asp:TextBox>                            
                        </div>
                        
                    </div>
                    <div class="form-row col-md-8">
                        <div class="form-group col-md-6">
                            <label for="" class="col-form-label bold_class">Confirm Email</label>
                            <asp:TextBox ID="txtCemail"  runat="server" CssClass="form-control" PlaceHolder="Confirm Your Email Address" autocomplete="off"></asp:TextBox>                            
                        </div>
                        
                    </div>
                    <div class="form-row col-md-8">
                        <div class="form-group col-md-6">                            
                            <asp:Button ID="btnupdate" runat="server" CssClass="register_btn" Text="Update"
                                OnClick="btnupdate_Click" />
                        </div>
                        
                        
                        </div>

                    <asp:Label ID="msgError" runat="server" Text="Email didn't matched!" CssClass="alert alert-danger"></asp:Label><br />

                    <asp:Label ID="msgupdate" runat="server" Text="Email Successfully Updated!" CssClass="alert alert-success"></asp:Label>
                    <br /><br />

                </div>
            </div>
        </div>
   </div>
     <%--<table class="tbl">
        <tr>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td style="color: red; font-weight: bold; font-size: large" class="auto-style5">
            </td>
        </tr>



        <tr>
            <td style="color: red; font-weight: bold; font-size: large" class="auto-style1">

                
            </td>
        </tr>
        
        <tr>
            <td class="auto-style4">
                <table class="style6">
                    <tr>
                        <td class="lbl">Email :</td>
                        <td>
                            
                        </td>

                    </tr>
                    <tr>
                        <td class="lbl"> :</td>
                        <td class="auto-style7">
                            
                        </td>
                        <td class="auto-style6"></td>

                    </tr>
                    <tr>
                        <td class="lbl">&nbsp;</td>
                        <td>&nbsp;</td>

                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>

                            
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>

                            
                        </td>
                        <td>&nbsp;</td>
                    </tr>


                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>--%>
</asp:Content>
