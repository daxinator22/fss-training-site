<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="ResetCourse.aspx.cs" Inherits="helloWorld.Manager.Reset.ResetCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.0.0.min.js"></script>

    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/popper.min.js"></script>
    <style type="text/css">
        .tbll {
            height: 570px;
            width: 1080px;
            border: 1px solid red;
        }

        .tblheaad {
            height: 40px;
            width: 1080px;
            color: #fff;
            text-align: left;
            font-size: 20px;
            font-weight: bold;
            background: Red;
            padding-left: 10px;
            margin-bottom: 0px;
        }

        .cheuma {
            height: 80px;
            width: 1000px;
        }

        .divider {
            padding-left: 70px;
        }

        .sizee {
            height: 410px;
            width: 1000px;
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1 class="tblheaad">Reset Employee Courses</h1>
    <div class="container tbll" >
        

        <div class="container" cheuma >
                <asp:Label ID="Label2" runat="server" Text="Welcome " ForeColor="#00CC3A"></asp:Label>
                <asp:Label ID="lvlName" runat="server" Text="label" BackColor="White" BorderColor="#66FF99" Font-Bold="True" Font-Italic="False" ForeColor="#00CC00"></asp:Label>
                <asp:Label ID="Label3" class="divider" runat="server"  Font-Bold="False" ForeColor="Blue" Text="Station : "></asp:Label>
                <asp:Label ID="lvlStation" runat="server" Font-Bold="True" ForeColor="Blue" Text="Label"></asp:Label>
               <label class="divider"> Search Employee: </label>  <asp:TextBox ID="txtSearch" placeholder="Enter Last Name" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                
            </div>
        <div class="container sizee " style="margin-top: 0px"  >
             <asp:GridView  Font-Size="14px" ID="grdQuizList" runat="server"  class="table table-striped table-hover" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Width="1000px" Height="400px" AllowPaging="True"   OnPageIndexChanging="OnPageIndexChanging" PageSize="5">
                            <Columns>
                                <asp:TemplateField HeaderText="">
                                    <ItemTemplate>                                    
                                        <asp:LinkButton ID="btnAction" runat="server" Text="Reset"   Font-Size="15px"  ToolTip="Reset Quiz"    OnClick="btnAction_click"  OnClientClick="return confirm('Are you sure you want to?');" />
                    
                                    </ItemTemplate>
                                </asp:TemplateField>   
                                   
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <PagerSettings Mode="NextPreviousFirstLast" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
                        </asp:GridView>
    </div>
           
    </div>
    
        
</asp:Content>
