<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="RegisterManagers.aspx.cs" Inherits="helloWorld.Admin.RegisterManagers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid">
        <h4 class="heading_class">MANAGER REGISTRATION</h4>
        <div class="row">
                <div class="col-md-12">
                                                      
                    <div class="add_user_class bold_class">
                        <asp:Label ID="lblsucc" runat="server" CssClass="alert alert-success" Visible="false" Text ="Manager Successfuly Registered!"></asp:Label><br /><br />
                    <div class="form-row col-md-8">
                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label bold_class">First Name</label>
                                <asp:TextBox ID="txtFname" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-6">
								<label for="" class="col-form-label bold_class">Last Name</label>
                                <asp:TextBox ID="txtLname" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            </div>
                            <div class="form-row col-md-8">

                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label bold_class">Employee ID</label>
                                <asp:TextBox ID="txtEmployeeId" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-6">
								<label for="" class="col-form-label bold_class">Email</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtEmail" ErrorMessage="invalid email" ForeColor="Red" 
                                SetFocusOnError="True" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            </div>
                            <div class="form-row col-md-8">
                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label bold_class">Phone</label>
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label bold_class">Position</label>
                                <asp:TextBox ID="txtPosition" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            </div>
                            <div class="form-row col-md-8">

                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label bold_class">Location</label>
                                <asp:DropDownList ID="drpLocation" runat="server" CssClass="locatin_select_class" DataSourceID="SqlDataSource1" DataTextField="Location" DataValueField="Location">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Location] FROM [lLocation]"></asp:SqlDataSource>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label bold_class">Username</label>
                                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                                                           
                            </div>
                            </div>
                            <div class="form-row col-md-8">

                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label bold_class">Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="" class="col-form-label bold_class">Confirm Password</label>
                                <asp:TextBox ID="txtCpassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtPassword" ControlToValidate="txtCpassword" 
                            ErrorMessage="Password didn't matched" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                                                           
                            </div>
                            </div>


                                                        
                            <div class="form-row">
                            <div class="form-group col-md-3">
                            </div>
                            <div class="form-group col-md-3">
                            </div>
                            <div class="form-group col-md-3">
                            </div>
                            <div class="form-group col-md-3">
                                <asp:Button ID="btnstuadd" runat="server" Text="Register" CssClass="register_btn" OnClick="btnstuadd_Click" />                            
                            </div>
                            </div>
                    </div>
        </div>
                                             
        </div>

                    
</div>
    
    
   <%-- <table class="tbl">
        <tr>
            <td class="tblhead">
               Manager Registration
            </td>
        </tr>
        <tr>
            <td>
                                <table class="auto-style8" >
                                    <tr >
                                        <td ">
                                            &nbsp;</td>
                                        <td >
                                            &nbsp;</td>
                                        <td class="lbl" >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="lbl"  >
                                            First Name :</td>
                                        <td class="style3" >
                                            
                                        </td>
                                        <td  >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="auto-style4" >
                                            Last Name :</td>
                                        <td class="style3"  >
                                            
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                  
                                     <tr >
                                        <td class="auto-style4" >
                                            Employee ID :</td>
                                        <td class="style3"  >
                                            
                                        </td>
                                        <td >
                                            <asp:Label ID="lvlEmployee" runat="server" Text="This Employee ID already Exists"></asp:Label>
                                         </td>
                                    </tr>

                                    <tr >
                                        <td class="auto-style4" >
                                            Email :
                                        </td>
                                        <td class="style3" >
                                            
                                        </td>
                                        <td>
                        
                    </td>
                                    </tr>
                                    <tr >
                                        <td class="auto-style4" >
                                            Phone :
                                        </td>
                                        <td class="style3"  >
                                            
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    
                                   <tr >
                                        <td class="auto-style4" >
                                            Position :
                                        </td>
                                        <td class="style3"  >
                                            
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="auto-style1" >
                                            Location :
                                        </td>
                                        <td class="style3" >
                        
                                        </td>

                                        <td class="auto-style2" >
                                            </td>
                                    </tr>
                                    <tr >
                                        <td class="auto-style4" >
                                            UserName :</td>
                                        <td class="style3" >
                                            
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="auto-style4" >
                                            Password :
                                        </td>
                                        <td class="style3"  >
                                            
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="auto-style4">
                                            Confirm-Pass :
                                        </td>
                                        <td class="style3"  >
                                            
                                        </td>
                                         <td>
                        
                    </td>
                                    </tr>
                                    <tr >
                                        <td class="auto-style4" >
                                            &nbsp;</td>
                                        <td class="auto-style7" >
                                            
                                            
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="auto-style4" >
                                            &nbsp;</td>
                                        <td class="auto-style7" >
                                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                     <tr>
                                         <td >
                                            &nbsp;</td>
        <td style="text-align: center; color: forestgreen"  >
            
        </td>
    </tr>
                                    <tr >
                                        <td class="auto-style3" >
                                            &nbsp;</td>
                                        <td class="auto-style7" >
                                            &nbsp;</td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>--%>
</asp:Content>