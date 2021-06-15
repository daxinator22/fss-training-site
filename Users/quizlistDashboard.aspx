<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.Master" AutoEventWireup="true" CodeBehind="quizlistDashboard.aspx.cs" Inherits="helloWorld.Users.quizlistDashboard" %>
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
            background: red;
            padding-left: 10px;
            width: 1080px;
            padding-right: 20px;
        }

        .auto-style3 {
            width: 1080px;
        }

        .tablestyle{
            width: 100px;
        }
    </style>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.0.0.min.js"></script>

    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/popper.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <script type="text/javascript">

        function show() {
            document.getElementById("ShowButton").style.visibility = "visible";
        }

        function hide() {
            document.getElementById("ShowButton").style.visibility = "hidden";
        }

        function keraa() {
            hide();
            setTimeout('show()', 8000);
        }

    </script>
    <div class="container-lg">
    <table class="tbl">
       

        <tr>
            <td class="auto-style2"><asp:Label ID="lvlcourses" runat="server" class="auto-style2" Text="Courses"></asp:Label></td>
            
            <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="False" ForeColor="Blue" Text="Station: "></asp:Label>
                
                    <asp:Label ID="lvlStation" runat="server" Font-Bold="True" ForeColor="Blue" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Welcome " ForeColor="#00CC3A"></asp:Label>
                <asp:Label ID="lvlName" runat="server" Text="label" BackColor="White" BorderColor="#66FF99" Font-Bold="True" Font-Italic="False" ForeColor="#00CC00"></asp:Label>
                &nbsp; &nbsp;</td>


        </tr>
        <tr>
            <td>

                <div>
                    <asp:Literal ID="ltEmbed" runat="server" />
                </div>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Button align="right" ID="ShowButton" runat="server" Text="Start Quiz" OnClick="ShowButton_Click" ForeColor="black" Visible="False" Height="34px" Width="105px" BorderColor="Red" BackColor="#00ff00" />

            </td>

        </tr>

        <td class="auto-style3" colspan="2">
             <asp:GridView  Font-Size="14px" ID="grdQuizList" runat="server"  class="table table-striped table-hover" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AllowPaging="true" OnPageIndexChanging="OnPageIndexChanging" PageSize="4" OnSelectedIndexChanged="Page_Load" >
                            <Columns>
                               
                                <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkView" runat="server" Text="View Course" OnClientClick="keraa()" OnClick="View"  CommandArgument='<%# Eval("id") %>'></asp:LinkButton>
                        </ItemTemplate>

                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
                        </asp:GridView>

        </td>
     
    </table>
    </div>
     
</asp:Content>
