<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="helloWorld.Admin.RegisterUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
          .style5 {
              width: 387px;
          }


          .txtt {
              width: 140px;
              height: 22px;
              border: solid 1px red;
              border-radius: 4px;
              padding-left: 3px;
          }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Employee Registration
            </td>
        </tr>
        <tr>
            <td>
                                <table class="style5" >
                                    <tr >
                                        <td ">
                                            &nbsp;</td>
                                        <td >
                                            &nbsp;</td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="lbl" >
                                            First Name :</td>
                                        <td >
                                            <asp:TextBox ID="txtFname" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="lbl" >
                                            Last Name :</td>
                                        <td >
                                            <asp:TextBox ID="txtLname" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="lbl" ">
                                            Employee ID :
                                        </td>
                                        <td >
                                            <asp:TextBox ID="txtEmployeeId" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr >
                                        <td class="lbl" >
                                            Email :
                                        </td>
                                        <td >
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    
                                   
                                    <tr >
                                        <td class="lbl" >
                                            Location :
                                        </td>
                                         <td class="style3" >
                        <asp:DropDownList ID="drpLocation" runat="server" CssClass="txtt" DataSourceID="SqlDataSource1" DataTextField="Location" DataValueField="Location">
                          
                        </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Location] FROM [lLocation]"></asp:SqlDataSource>
                                        </td>
                                        <td>
                        
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="lbl" >
                                            UserName :</td>
                                        <td >
                                            <asp:TextBox ID="txtUserName" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="lbl" >
                                            Password :
                                        </td>
                                        <td >
                                            <asp:TextBox ID="txtPassword" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="lbl">
                                            Confirm-Pass :
                                        </td>
                                        <td >
                                            <asp:TextBox ID="txtCpassword" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="lbl" >
                                            &nbsp;</td>
                                        <td >
                                            
                                            <asp:Button ID="btnstuadd" runat="server" Text="Submit" OnClick="btnstuadd_Click" />
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="lbl" >
                                            &nbsp;</td>
                                        <td style ="color:red">
                                            <asp:Label ID="lblmsg" runat="server" Text="Password didn't match!"></asp:Label> 
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td class="lbl" >
                                            &nbsp;</td>
                                        <td style ="color:green">
                                            <asp:Label ID="lblsucc" runat="server" Text="Registration Successfull!"></asp:Label> 
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr >
                                        <td >
                                            &nbsp;</td>
                                        <td >
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
    </table>
</asp:Content>
