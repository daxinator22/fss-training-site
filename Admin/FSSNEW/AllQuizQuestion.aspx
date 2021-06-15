<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="AllQuizQuestion.aspx.cs" Inherits="helloWorld.Admin.FSSNEW.AllQuizQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .btn2 {
     margin-top: 30px; 
    letter-spacing: 2px;
    padding: 8px;
    width: 140px;
    border-radius: 10px;
    background-color: #ff2a04;
    color: #fff;
    font-weight: 600;
    border: none;
    /* float: right; */
    /* margin-bottom: 30px; */
    box-shadow: 1px 2px 2px 2px #ff2a04;
}
    </style>
    <link href="/assets/css/archu.css" rel="stylesheet" type="text/css"  id="app-stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <div class="col-lg-10">
        <div class="add_user_class">
            <div class="flot_left_class_ma margin_class">
                <div class="form-row col-md-8 buttom_class">
                <div class="form-group col-md-3">
                 <button class="btn1" onclick="JavaScript: window.history.back(1); return false;">BACK
</button>
                </div>
                 <div class="form-group col-md-2">
                     <asp:Button ID="btn_AddQuestion" runat="server" class="btn btn2" Text="Add Question" OnClick="btn_AddQuestion_Click"></asp:Button>                 
                 </div>
                 </div>
                <div class="form-row col-md-8 buttom_class">
                 <h3><span >Quiz Id:</span> <span style="color: #606FEF"><asp:Label runat="server" ID="lbqid"></asp:Label></span></h3>
                </div>
                <div class="form-row col-md-8 buttom_class">
                 <h3><span >Quiz Name:</span> <span style="color: #606FEF"><asp:Label runat="server" ID="lbQuizName"></asp:Label></span></h3>
                </div>
                <div class="form-row col-md-8 buttom_class">
                 <h3><span >Category:</span> <span style="color: #606FEF"><asp:Label runat="server" ID="lbCategory"></asp:Label></span></h3>
                </div>
                <div class="form-row col-md-8 buttom_class">
                 <h3><span >Total Question:</span> <span style="color: #606FEF"><asp:Label runat="server" ID="lbTotalQue"></asp:Label></span></h3>
                </div>

                <div class="form-row col-md-8 buttom_class">
                <h3 style="color: red;">MANAGE QUESTION</h3></div>

                <asp:GridView ID="GridView1" CssClass="table manage_airports" EmptyDataText="Please add question in this quiz" runat="server" AutoGenerateColumns="False"  CellPadding="4" GridLines="Horizontal" Width="100%">
                    <Columns>
                        <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>                                    
                            <asp:LinkButton ID="btnEdit" runat="server"     ToolTip="Edit Quiz info" CssClass="btn-icon" OnClick="btnEdit_Click">
                                <i class="fa fa-edit"></i>
                            </asp:LinkButton> 
                    
                          </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="id" HeaderText="Question Id"  />
                        <asp:BoundField DataField="Q_no" HeaderText="Question No" />
                        <asp:BoundField DataField="Question_Name" HeaderText="Question" />
                        <asp:BoundField DataField="Q_Ans" HeaderText="Answer" />
                    </Columns>                    
                </asp:GridView>
    </div>
    </div>
    </div>
</div>
    
</asp:Content>
