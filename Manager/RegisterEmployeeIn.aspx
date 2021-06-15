<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="RegisterEmployeeIn.aspx.cs" Inherits="helloWorld.Manager.RegisterEmployeeIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h4 class="heading_class">EMPLOYEE REGISTRATION</h4>
        <div class="row">
            <div class="col-md-12">
                                                      
                <div class="add_user_class bold_class">
                    <div class="form-row col-md-8">
                        <table>
                            <tr>
                                <td colspan="2"><asp:Label ID="lblsucc" runat="server" Visible="false" CssClass="alert alert-success" Text="Registration Successfull!"></asp:Label><br /><br /> </td>
                            </tr>
                            
                            <tr>
                                <td colspan="2"><asp:Label ID="afterRegHead" runat="server" Text="Employee Login Info" ForeColor="Black"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="afterRegUN" runat="server" Text="Username: "></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lvlUN" runat="server" ForeColor="#009900" ></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="AfterRegPW" runat="server" Text="Password: "></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lvlPW" runat="server" ForeColor="#009900"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        
                    </div>

                <div class="form-row col-md-8">
                        <div class="form-group col-md-6">
                            <label for="" class="col-form-label bold_class">First Name</label>
                            <asp:TextBox ID="txtFname" runat="server" Class="form-control"></asp:TextBox>                            
                        </div>
                        <div class="form-group col-md-6">
							<label for="" class="col-form-label bold_class">Last Name</label>
                            <asp:TextBox ID="txtLname" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        </div>
                        <div class="form-row col-md-8">

                        <div class="form-group col-md-6">
                            <label for="" class="col-form-label bold_class">Last 4 of SSN</label>
                            <asp:TextBox ID="txtLastSsn" runat="server" CssClass="form-control"></asp:TextBox>                            
                        </div>
                        <div class="form-group col-md-6">
							<label for="" class="col-form-label bold_class">Paycom ID</label>
							<asp:TextBox ID="txtEmployeeId" runat="server" CssClass="form-control"></asp:TextBox>
                                                           
                        </div>
                        </div>
                        <div class="form-row col-md-8">
                        <div class="form-group col-md-6">
                            <label for="" class="col-form-label bold_class">Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                         <div class="form-group col-md-6">
                            <label for="" class="col-form-label bold_class">Position</label>
                            <asp:DropDownList ID="DropDownCode" runat="server" CssClass="position_select_class" DataSourceID="SqlDataSource1" DataTextField="Position" DataValueField="Position"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Position] FROM [tblPosition]"></asp:SqlDataSource>
                            
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
                            <asp:Button  ID="btnstuadd" runat="server"  Text="Register" CssClass="register_btn" OnClick="btnstuadd_Click" />                        
                        </div>
                        </div>

                    
                </div>
          </div>
                                             
     </div>

                    
</div>
    
    <%--<table class="tbll">
           <tr>
            <td class="tblhead">
                Employee Registration
            </td>
        </tr>
          <tr>
            <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Font-Bold="False" ForeColor="Blue" Text="Station: "></asp:Label>
                <asp:Label ID="lvlStation" runat="server" Font-Bold="True" ForeColor="Blue" Text="Label"></asp:Label>
            </td>

        </tr>
       
        <tr>
            <td>
                                <table class="auto-style1" >
                                    <tr >
                                        <td ">
                                            &nbsp;</td>
                                        <td >
                                            &nbsp;</td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>

                                    <tr >
                                        <td class="lbl" class="auto-style4" >
                                            First Name :</td>
                                        <td class="auto-style2" >
                                            <asp:TextBox ID="txtFname" runat="server" Class="txtt"></asp:TextBox>
                                            <br />
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="auto-style4" >
                                            Last Name :</td>
                                        <td class="auto-style2" >
                                            <asp:TextBox ID="txtLname" runat="server" CssClass="txtt"></asp:TextBox>
                                            <br />
                                        </td>
                                        <td >
                                            <asp:Label ID="afterRegHead" runat="server" Text="Employee Login Info" ForeColor="Black"></asp:Label>
                                        </td>
                                    </tr>
                                      <tr >
                                        <td class="auto-style4" >
                                            Last 4 of SSN :</td>
                                        <td class="auto-style2" >
                                            <asp:TextBox ID="txtLastSsn" runat="server" CssClass="txtt"></asp:TextBox>
                                            <br />
                                        </td>
                                        <td >
                                            <asp:Label ID="afterRegUN" runat="server" Text="Username: "></asp:Label>
                                            <asp:Label ID="lvlUN" runat="server" ForeColor="#009900" ></asp:Label>
                                          </td>
                                    </tr>
                                    
                                   <tr >
                                        <td class="auto-style4" >
                                            Paycom ID :</td>
                                        <td class="auto-style2" >
                                            <asp:TextBox ID="txtEmployeeId" runat="server" CssClass="txtt"></asp:TextBox>
                                            <br />
                                        </td>
                                         <td >
                                             <asp:Label ID="AfterRegPW" runat="server" Text="Password: "></asp:Label>
                                             <asp:Label ID="lvlPW" runat="server" ForeColor="#009900"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr >
                                        <td class="auto-style4" >
                                            Email :
                                        </td>
                                        <td class="auto-style2" >
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="txtt"></asp:TextBox>
                                            <br />
                                        </td>
                                       
                                    </tr>
                                    <tr >
                                        <td class="auto-style4" >
                                            Position :
                                        </td>
                                        <td class="auto-style2" >
                                            <asp:DropDownList ID="DropDownCode" runat="server" Class="txtt" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Position" DataValueField="Position"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Position] FROM [tblPosition]"></asp:SqlDataSource>
                                        </td>
                                       
                                    </tr>
                                    <tr >
                                        <td class="auto-style4" >
                                            &nbsp;</td>
                                        <td  >&nbsp;
                                            </td>
                                        </tr>
                                   
                                    <tr >
                                        <td class="auto-style4" >
                                            &nbsp;</td>
                                        <td  >
                                            
                                            <asp:Button  ID="btnstuadd" runat="server"  Text="Register" class="txttt" OnClick="btnstuadd_Click" />
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                   
                                    <tr >
                                        <td class="auto-style4" >
                                            &nbsp;</td>
                                        <td style ="color:green" class="auto-style2">
                                            <asp:Label ID="lblsucc" runat="server" Text="Registration Successfull!"></asp:Label> 
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="auto-style5" >
                                            &nbsp;</td>
                                        <td class="auto-style2" >
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
