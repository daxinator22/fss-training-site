<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="managerProfile.aspx.cs" Inherits="helloWorld.Manager.managerProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5 {
            height: 23px;
        }

        .style6 {
            width: 561px;
        }

        .auto-style1 {
            height: 24px;
        }

        .auto-style2 {
            height: 40px;
            color: #fff;
            text-align: left;
            font-size: 20px;
            font-weight: bold;
            background: #8506A9;
            padding-left: 10px;
            width: 528px;
        }

        .auto-style4 {
            height: 23px;
            width: 528px;
        }

        .auto-style5 {
            width: 528px;
        }

        .auto-style6 {
            text-align: right;
            color: #8506A9;
            height: 28px;
        }

        .auto-style7 {
            height: 28px;
        }

        .auto-style8 {
            border: solid 1px #8506A9;
            padding-left: 3px;
            border-radius: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="auto-style2">My Profile</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td style="color: #8506A9; font-weight: bold; font-size: large" class="auto-style5">Today&#39;s Date :
                <asp:Label ID="lblcourse" runat="server"></asp:Label>
            </td>
        </tr>



        <tr>
            <td style="color: #8506A9; font-weight: bold; font-size: large" class="auto-style1">

                <asp:Label ID="lvlEmployeeID" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <table class="style6">
                    <tr>
                        <td class="lbl">Email :</td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="auto-style8" Width="220px" Height="30px"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style6">Confirm Email :</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtCemail" runat="server" CssClass="auto-style8" Width="220px" Height="30px"></asp:TextBox>
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
                            <asp:Button ID="btnupdate" runat="server" CssClass="btn" Text="Update"
                                OnClick="btnupdate_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>

                            <asp:Label ID="msgError" runat="server" Text="Email didn't matched!" BackColor="Red"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>

                            <asp:Label ID="msgupdate" runat="server" Text="Email Successfully Updated!" BackColor="#00CC00"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>


                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
