<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="RegisterEmployee.aspx.cs" Inherits="helloWorld.Manager.RegisterEmployee" %>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="tbl">
          <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="Welcome " ForeColor="#00CC3A"></asp:Label>
                <asp:Label ID="lvlName" runat="server" Text="label" BackColor="White" BorderColor="#66FF99" Font-Bold="True" Font-Italic="False" ForeColor="#00CC00"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Font-Bold="False" ForeColor="Blue" Text="Station"></asp:Label>
                :
                    <asp:Label ID="lvlStation" runat="server" Font-Bold="True" ForeColor="Blue" Text="Label"></asp:Label>
            </td>

        </tr>
        <tr>
            <td class="tblhead">
                Agent Registration
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
