<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="EditQuiz.aspx.cs" Inherits="helloWorld.Admin.FSSNEW.EditQuiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
<h4 class="heading_class">Edit QUIZ</h4>
<div class="row">
   <div class="col-md-12">
                                                      
    <div class="add_user_class">
        
    <div class="form-row col-md-8">
            <div class="form-group col-md-6">
                <asp:Label ID="Label1" runat="server" Text="Quiz Id - " class="col-lg-2" Font-Bold="True"></asp:Label>
                <asp:Label ID="lbl_id" runat="server" Font-Bold="True" Font-Size="Large"  ></asp:Label>
            </div>
            </div>
    <div class="form-row col-md-8">
            <div class="form-group col-md-6">
                <label for="" class="col-form-label"><b>Name</b></label>
                <asp:TextBox ID="txtName" runat="server" placeholder="Quiz Name" class="form-control"  required></asp:TextBox>
            </div>
            </div>
                                                        
            <div class="form-group col-md-12">
															 
                <label class="col-form-label bold_class" for="example-textarea">Description</label>
                <asp:TextBox ID="txtCategory" runat="server" placeholder="Quiz Category" class="form-control" TextMode="MultiLine" Rows="5" Wrap="true"  ></asp:TextBox>
                                                        
            </div>
            <div class="form-row col-md-8">
            <div class="form-group col-md-6">
                <label for="" class="col-form-label bold_class"><b>Quiz Time</b></label>                
                <asp:TextBox ID="txtQtime" runat="server" placeholder="Quiz Time" class="form-control" ></asp:TextBox>
            </div>
            </div>
                                                    

                                                       
            <div class="form-row col-md-12">
            <div class="form-group col-md-6">
            </div>
            <div class="form-group col-md-2">
            </div>
            <div class="form-group col-md-2">
            <a href="/Admin/FssNew/ManageQuiz.aspx" class="btn back_btn">BACK</a>
            </div>
            <div class="form-group col-md-2">
                <asp:Button ID="Button1" runat="server" Text="Update" class="quiz_submit_btn" onclick="btnSave_Click"  />                
            </div>
            </div>
    </div>
    </div>
                                             
    </div>

                    
</div>
    <%--<div class="col-lg-5 col-lg-offset-4">
    <div class="panel panel-danger">
 <div class="panel-heading">
  <h3 class="panel-title"><span  class="glyphicon glyphicon-plus" > </span> Edit&nbsp; Quiz&nbsp;</h3>
     
  </div> 
  <div class="panel-body">   
   
            
            <br /><br />
                <asp:Label ID="Label2" runat="server" Text="Name" class="col-lg-2 control-label"></asp:Label>
                <br />
                
           
       
                <asp:Label ID="Label3" runat="server" Text="Category" class="col-lg-2 control-label" ></asp:Label>
                <br />
                
         
     
           <asp:Label ID="Label11" runat="server" Text="Quiz Time" class="col-lg-3 control-label" ></asp:Label> <br />
                
           
                <br />                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtQtime" ErrorMessage="Number Only EX: 400" ToolTip="EX: 400" 
                    ValidationExpression="\d{3}"></asp:RegularExpressionValidator>
                    <p>
                    &nbsp;&nbsp;&nbsp;
                    <a href="" class="btn btn-danger">Back</a>
                    
                    </p>
     
       
    
    </div>
    </div>
        </div>--%>
</asp:Content>
