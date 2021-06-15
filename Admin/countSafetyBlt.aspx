<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="countSafetyBlt.aspx.cs" Inherits="helloWorld.Admin.countSafetyBlt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">

            <div class="col-lg-12 bg_class">
                <div class="add_user_class">
                  <div class="flot_left_class_ma margin_class">
                
                  <asp:Panel runat="server" ID="pnl_Main" class="form-row col-md-9 buttom_class">
                                  <div class="form-group col-md-8">

                <!--  <progress id="file" class="progress_class" value="28" max="100"> 28% </progress> -->
                 <div class="w3-light-grey w3-round-xlarge" style="background-color: #9199F1!important;">
                <asp:Panel runat="server" ID="pnl_ProgressBar"  class="w3-container w3-red w3-round-xlarge progress_class" style="height:24px;width:0%"></asp:Panel>
                </div>
                 </div>
                 <div class="form-group col-md-2">
                 <p style="margin-top: 95px; color: #fff;">
                     <asp:Label ID="lvlReport" runat="server" Text="0"></asp:Label> %</p>
                 </div>

                 </asp:Panel>
                         <div class="form-row col-md-12 buttom_class">
                <div class="form-group col-md-1.5">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="locatin_select_class" style="box-shadow:none;" DataSourceID="SqlDataSource1" DataTextField="Station" DataValueField="Station"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT DISTINCT [Station] FROM [safetyReport]"></asp:SqlDataSource>                   
                </div>
                 <div class="form-group col-md-3.5">
                   <asp:DropDownList ID="DropDownList2" runat="server" CssClass="compliance_class" DataSourceID="SqlDataSource2" style="box-shadow:none;" DataTextField="SafetyBlt" DataValueField="SafetyBlt"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT DISTINCT [SafetyBlt] FROM [safetyReport] WHERE ([Station] = @Station)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Station" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                </asp:SqlDataSource>
                     
                </div>
                 <div class="form-group col-md-2">
                     <asp:Button ID="Button10" CssClass="new_add_btn" style="margin-top: 0px;" runat="server" OnClick="Button10_Click" Text="Run" />                 
                 </div>
                 </div>



                    
            </div>
        </div> 

    </div>   </div>
    
</asp:Content>
