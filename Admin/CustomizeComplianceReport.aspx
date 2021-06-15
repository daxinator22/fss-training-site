<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="CustomizeComplianceReport.aspx.cs" Inherits="helloWorld.Admin.CustomizeComplianceReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h4 class="heading_class">CUSTOMIZE COMPLIANCE REPORT</h4>
        <div class="row">
             <div class="col-md-12">
                                                      
                        <div class="compliance_user_class">
                            <asp:Label runat="server" ID="lbl_Error" CssClass="alert-danger" Visible="false" ></asp:Label>                    
                            <asp:ScriptManager runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel runat="server">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="rb_ComplianceReport" EventName="CheckedChanged" />
                                    <asp:AsyncPostBackTrigger ControlID="rb_NonComplianceReport" EventName="CheckedChanged" />
                                    <asp:AsyncPostBackTrigger ControlID="ddl_Station" EventName="SelectedIndexChanged" />
                                </Triggers>
                                <ContentTemplate>
                                <div class="form-row col-md-10">
                                                        
                                <div class="form-group col-md-5">
                                <label class="container_label">Compliance Report
                                <asp:RadioButton ID="rb_ComplianceReport" GroupName="ReportType" runat="server" Checked="true" OnCheckedChanged="rb_ComplianceReport_CheckedChanged" AutoPostBack="true" />                                
                                <span class="checkmark"></span>
                                </label>
                                </div>
                                <div class="form-group col-md-5">
                                <label class="container_label">Non-Compliance Report
                                    <asp:RadioButton ID="rb_NonComplianceReport" GroupName="ReportType" runat="server" OnCheckedChanged="rb_NonComplianceReport_CheckedChanged" AutoPostBack="true"/>
                                    <span class="checkmark"></span>
                                </label>
                                </div>
                                                        
                                </div>

                                <div class="form-row col-md-10">
                                                        

                                <div class="form-group col-md-5">

                                <label class="container_label">Exclude Inactive Users

                                <asp:RadioButton ID="rb_ExcludeInactiveUsers" GroupName="InactiveUsers" runat="server" Checked="true" AutoPostBack="true" />                                

                                <span class="checkmark"></span>

                                </label>

                                </div>

                                <div class="form-group col-md-5">

                                <label class="container_label">Include Inactive Users

                                    <asp:RadioButton ID="rb_IncludeInactiveUsers" GroupName="InactiveUsers" runat="server" AutoPostBack="true"/>

                                    <span class="checkmark"></span>

                                </label>

                                </div>

                                                        
                                </div>
                                <div class="form-row col-md-10">
                                <div class="form-group col-md-5">
                                <label for="" class="col-form-label bold_class">Begin Date</label>
                                <div class="input-group width_class">                                                      
                                            <asp:TextBox ID="dp_BeginDate" runat="server" class="form-control" placeholder="mm/dd/yyyy" TextMode="Date" required></asp:TextBox>                                            
                                </div>
                                </div>
                                <div class="form-group col-md-5">
                                <label runat="server" id="lbl_EndDate">End Date</label>
                                <div class="input-group width_class">
                                                      
                                            <asp:TextBox ID="dp_EndDate" runat="server" class="form-control" placeholder="mm/dd/yyyy" TextMode="Date" required></asp:TextBox>
                                            
                                        </div>
                                </div>
                                </div>
                                <div class="form-row col-md-10">
                                <div class="form-group col-md-5">
                                <label class="col-form-label">Station</label>
                                    <asp:DropDownList ID="ddl_Station" runat="server" class="compliance_class" AutoPostBack="true" OnSelectedIndexChanged="ddl_Station_SelectedIndexChanged" ></asp:DropDownList>                                
                                </div>
                                                        
                                <div class="form-group col-md-5">
                                <label>Users</label>
                                    <asp:DropDownList ID="ddl_Users" runat="server" class="compliance_class"></asp:DropDownList>                          
                                
                                </div>
                                                       
                                </div>
                                <div class="form-row col-md-10">
                                <div class="form-group col-md-5">
                                <label>Course</label>
                                   <asp:DropDownList ID="ddl_Course" runat="server" class="compliance_class"  ></asp:DropDownList>                                
                                </div>
                                <div class="form-group col-md-5">
                                <label>Category</label>
                                    <asp:DropDownList ID="ddl_Category" runat="server" class="compliance_class"></asp:DropDownList>                                
                                </div>
                                                       
                                </div>
                                </ContentTemplate>
                                </asp:UpdatePanel>
                                <div class="form-row">
                                <div class="form-group col-md-3">
                                </div>
                                <div class="form-group col-md-3">
                                </div>
                                <div class="form-group col-md-3">
                                </div>
                                <div class="form-group col-md-3">
                                    <asp:Button runat="server" ID="btn_RunReport" CssClass="submit_btn" Text="Run Report" OnClick="btn_RunReport_Click"></asp:Button>                                
                                </div>
                                </div>

                            <hr />
                    <asp:GridView ID="gv_Report" AllowPaging="true" runat="server" AutoGenerateColumns="false"  OnPageIndexChanging="gv_Report_PageIndexChanging"
            CssClass="table border_class manage_airports" GridLines="None" PageSize="50">            
            <Columns>
                <asp:BoundField DataField="Station" HeaderText="Station" SortExpression="Station" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="CourseName" HeaderText="Course Name" SortExpression="CourseName" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="CompletedDate" HeaderText="Completed Date" SortExpression="CompletedDate" />
                <asp:BoundField DataField="Score" HeaderText="Grade %" SortExpression="Score" />
            </Columns>
            <PagerStyle HorizontalAlign="Right" />
        </asp:GridView>

                        </div>
                        </div>
                                             
                        </div>

                    
                    </div>
        
</asp:Content>
