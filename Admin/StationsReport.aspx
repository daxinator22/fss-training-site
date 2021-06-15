<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="StationsReport.aspx.cs" Inherits="helloWorld.Admin.StationsReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .h1 {
            color: red;
            text-align: center;
        }
        .div {
  border: 1px solid black;
  background-color: lightblue;
  padding-top: 50px;
  padding-right: 30px;
  padding-bottom: 50px;
  padding-left: 80px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
           <div class="div"> 
             <h1>Station Compliance Report</h1> 
                Stations: <asp:DropDownList ID="DDStations" runat="server" DataSourceID="lvlStations" DataTextField="Location" DataValueField="Location"></asp:DropDownList>
                <asp:SqlDataSource ID="lvlStations" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Location] FROM [lLocation]"></asp:SqlDataSource>
                <asp:Button ID="btnok" runat="server" OnClick="btnok_Click" Text="Run" />
                <br />
                <br />
                <asp:Label ID="lvlReport" runat="server" ForeColor="Green" Font-Size="50px" Height="100px" Width="200px"></asp:Label>
          </div>  
</asp:Content>
