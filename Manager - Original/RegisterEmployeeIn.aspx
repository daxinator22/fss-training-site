﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="RegisterEmployeeIn.aspx.cs" Inherits="helloWorld.Manager.RegisterEmployeeIn" %>
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
        .auto-style1 {
            width: 678px;
        }
        .auto-style2 {
            width: 283px;
        }
        .auto-style3 {
            width: 317px;
        }
        .auto-style4 {
            text-align: right;
            color: Red;
            width: 171px;
        }
        .auto-style5 {
            width: 171px;
        }
        .txtt{
           width: 220px;
           height: 32px;
           border: solid 1px red;
           border-radius: 6px;
           padding-left: 5px;
       }
         .txttt{
           width: 220px;
           height: 32px;
           border: solid 2px Green;
           border-radius: 6px;
           padding-left: 5px;
           
       }
           .tbll{
            height: 570px;
            width: 1080px;
            border: 1px solid red;
            
        }

      </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table class="tbll">
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
    </table>
</asp:Content>
