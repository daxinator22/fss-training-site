<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.Master" AutoEventWireup="true" CodeBehind="UserDash2.aspx.cs" Inherits="helloWorld.Users.UserDash2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .style5 {
            height: 23px;
        }

        .style6 {
            width: 561px;
        }

        .auto-style2 {
            height: 40px;
            color: #fff;
            text-align: left;
            font-size: 20px;
            font-weight: bold;
            background: #8506A9;
            padding-left: 10px;
            width: 728px;
            padding-right: 20px;
        }

        .auto-style3 {
            width: 728px;
            height: 32px;
        }

        .auto-style4 {
            text-decoration: underline;
            font-weight: bold;
            color: #FF0000;
            margin-left: 10px;
        }
        .auto-style5 {
            width: 253px;
            height: 21px;
            margin-top: 0px;
        }
        .auto-style6 {
            width: 728px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table class="tbl">
        <tr>
            <td class="auto-style2">Your Course Compliance </td>
            <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="False" ForeColor="Blue" Text="Station"></asp:Label>
                :
                    <asp:Label ID="lvlStation" runat="server" Font-Bold="True" ForeColor="Blue" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Welcome " ForeColor="#00CC3A"></asp:Label>
                <asp:Label ID="lvlName" runat="server" Text="label" BackColor="White" BorderColor="#66FF99" Font-Bold="True" Font-Italic="False" ForeColor="#00CC00"></asp:Label>
                &nbsp; &nbsp;<asp:Label ID="lvlEmployeeID" runat="server">3</asp:Label>
               </td>
            
            <td style="color: #8506A9; font-weight: bold; font-size: large" class="auto-style5">

                
               
                    <asp:Button ID="btnBulletin" runat="server" BackColor="Yellow" CssClass="auto-style4" OnClick="btnBulletin_Click" Text="Safety Bulletin" />
                
            </td>
        </tr>
        

        <td class="style3" colspan="2">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" GridLines="Horizontal" AutoGenerateColumns="False" Width="717px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="" Text=""></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="Id" Visible="false" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />

                    
                    <asp:TemplateField HeaderText="Course">
                        <ItemTemplate>
                            <asp:LinkButton runat="server" Text='<%#Eval("CourseName") %>' ID="Courses" Font-Bold="true" CommandArgument='<%# Eval("CourseId")%>' CommandName='<%#Eval("CourseName") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                    <asp:BoundField DataField="CourseCat" HeaderText="Test Type" SortExpression="CourseCat" />
                    <asp:BoundField DataField="Compliant" HeaderText="Compliant" SortExpression="Compliant" />
                    <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                    <asp:BoundField DataField="Completed" HeaderText="Completed" SortExpression="Completed" />
                    <asp:BoundField DataField="ResetDate" HeaderText="Reset Date" SortExpression="ResetDate" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle ForeColor="#333333" BackColor="White" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />

                <EmptyDataTemplate>There is no course Assigned for you. Please Contact your Manager.</EmptyDataTemplate>
            </asp:GridView>

        </td>

    </table>
</asp:Content>
