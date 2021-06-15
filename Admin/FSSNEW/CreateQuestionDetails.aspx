<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="CreateQuestionDetails.aspx.cs" Inherits="helloWorld.Admin.FSSNEW.CreateQuestionDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start Content-->
<div class="container-fluid">
<h4 class="heading_class">CREATE QUIZ</h4>
<div class="row">
   <div class="col-md-12">
                                                      
    <div class="add_user_class">
    <div class="form-row col-md-8">
            <div class="form-group col-md-6">
                <label for="" class="col-form-label"><b>Name</b></label>
                <asp:TextBox ID="txtName" runat="server" placeholder="Quiz Name" class="form-control" required ></asp:TextBox>                
            </div>
            </div>
                                                        
            <div class="form-group col-md-12">
															 
                        <label class="col-form-label bold_class" for="example-textarea">Description</label>
                        <asp:TextBox ID="txtDescription" runat="server" placeholder="Quiz Category" class="form-control" TextMode="MultiLine" Rows="5" Wrap="true" ></asp:TextBox>                                                           
                                                        
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
            <a href="/Admin/AdminHomePage.aspx" class="btn back_btn">BACK</a>
            </div>
            <div class="form-group col-md-2">
                <asp:Button ID="btnSave" runat="server" Text="SUBMIT" class="quiz_submit_btn" onclick="btnSave_Click" />            
            </div>
            </div>
    </div>
    </div>
                                             
    </div>

                    
</div>
     <%--<div class="col-lg-5 col-lg-offset-4">
<div class="panel panel-danger">
 <div class="panel-heading">
  <h3 class="panel-title"><span  class="glyphicon glyphicon-plus" > </span> Create&nbsp; Quiz&nbsp;
     
     </h3>
     
              </div> 
  <div class="panel-body">   
   
   
                <asp:Label ID="Label2" runat="server" Text="Name" class="col-lg-2 control-label"></asp:Label>
                <br />
                
           
       
                <asp:Label ID="Label3" runat="server" Text="Category" class="col-lg-2 control-label" ></asp:Label>
                <br />
                
         
     
           <asp:Label ID="Label11" runat="server" Text="Quiz Time" class="col-lg-3 control-label" ></asp:Label> <br />
                
           
                <br />
                <a href="#" class="class="glyphicon glyphicon-cog"> 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtQtime" ErrorMessage="Number Only EX: 400" ToolTip="EX: 400" 
                    ValidationExpression="\d{3}"></asp:RegularExpressionValidator>
                    <p>
         &nbsp;&nbsp;&nbsp;
        <a href="/Admin/AdminHomePage.aspx" class="btn btn-danger">Back</a>
        
                        </p>
                
     
       
    
    </div>
    </div>
</div>  --%>
</asp:Content>
