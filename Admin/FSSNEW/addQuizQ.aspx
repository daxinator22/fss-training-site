<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="addQuizQ.aspx.cs" Inherits="helloWorld.Admin.FSSNEW.addQuizQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container-fluid">
<h4 class="heading_class"><asp:Label ID="lbquizid" runat="server" Text="lbquizid"></asp:Label>. ADD QUESTION</h4>
<div class="row">
<div class="col-md-12">       
            <div class="add_user_class bold_class">
                <asp:ValidationSummary runat="server" CssClass="alert alert-danger" ValidationGroup="Question" />                                               
            <div class="form-group col-md-10">
                                                             
                    <label class="col-form-label bold_class" for="example-textarea">Question</label>
                    <asp:TextBox ID="txtQueName" runat="server" CssClass="form-control" placeholder="Quiz Question" Rows="5" TextMode="MultiLine" ></asp:TextBox>                                                                    
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please insert Question" ForeColor="Red" Font-Bold="true"
                    ControlToValidate="txtQueName" ValidationGroup="Question">*</asp:RequiredFieldValidator>                                   
                    </div>
                    <div class="form-row col-md-8">
                    <div class="form-group col-md-6">
                       <label class="col-form-label bold_class" for="example-textarea">Image</label>
                        <input type="file" id="fu_QuestionImage" runat="server" onchange="loadFile(event);" class="filestyle" data-input="false" />                    
                </div>
                </div>
                <div class="row">
                    <div class="col-md-8">
            <div class="form-row col-md-12">
                    <div class="form-group col-md-6">
                        <label for="" class="col-form-label bold_class">A</label>
                        <asp:TextBox ID="txtop1" runat="server" placeholder="Option A" CssClass="form-control" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please insert Option A" ForeColor="Red" Font-Bold="true"
                    ControlToValidate="txtop1" ValidationGroup="Question">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-md-6">
						<label for="" class="col-form-label bold_class">B</label>
                        <asp:TextBox ID="txtop2" runat="server" placeholder="Option B" CssClass="form-control" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="col-sm-1"
                        ErrorMessage="Please insert Option B" ForeColor="Red" Font-Bold="true"
                        ControlToValidate="txtop2" ValidationGroup="Question">*</asp:RequiredFieldValidator>                                  
                    </div>
                    </div>
                    <div class="form-row col-md-12">

                    <div class="form-group col-md-6">
                        <label for="" class="col-form-label bold_class">C</label>
                        <asp:TextBox ID="txtop3" runat="server" placeholder="Option C" CssClass="form-control" ></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
						<label for="" class="col-form-label bold_class">D</label>
						<asp:TextBox ID="txtop4" runat="server" placeholder="Option D" CssClass="form-control" ></asp:TextBox>
                                                           
                    </div>
                    </div>
                                                       
                    <div class="form-row col-md-12">

                    <div class="form-group col-md-12">
                        <label for="" class="col-form-label bold_class">Answer</label>
                        <asp:DropDownList ID="DDLAns" runat="server" CssClass="ans_select_class">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                        </asp:DropDownList> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Please insert Answer" ForeColor="Red" Font-Bold="true"
                    ControlToValidate="DDLAns" ValidationGroup="Question">*</asp:RequiredFieldValidator>                       
                    </div>
                                                        
                    </div>
                  </div>
                    <div class="col-md-4">
                        <img id="img_category" src="../../Image/imagenotavailable.png" height="200" width="300" />
                    </div>
                </div>                                      

                                                        
                    <div class="form-row">
                    <div class="form-group col-md-3">
                    </div>
                    <div class="form-group col-md-3">
                    </div>
                    <div class="form-group col-md-3">
                    </div>
                    <div class="form-group col-md-3">
                        <asp:Button ID="btnSave" runat="server" ValidationGroup="Question" Text="Submit" CssClass="register_btn" OnClick="btnSave_Click" />
                    
                    </div>
                    </div>
            </div>
            </div>
                                             
            </div>

                    
</div>
    
            <%--<div class="well well-sm">
                
                .
                <asp:Label ID="lbPagetitle" Font-Bold="true" runat="server" Text="Edit Question"></asp:Label>
                
            </div>
        <br />--%>
        <%-- add Question  Form control  Start --%>
        <%--
    <br />
        <div class="container">
            
           <div class="form-group row">
                <asp:Label ID="Label3" runat="server" Text="Question:" class="control-label col-sm-1"></asp:Label>    
            <div class="col-sm-10">
              
                
            </div>
               
          </div>
            <div class="form-group row">
               <label class="control-label col-sm-1">Image</label> 
            <div class="col-sm-10">
                
              
            </div>
          </div>
            <div class="row">
                <div class="col-sm-8">
            <div class="form-group row">
               <label class="control-label col-sm-2">A:</label> 
            <div class="col-sm-9">
              
                
            </div>
                
          </div>
            <div class="form-group row">
               <label class="control-label col-sm-2">B:</label> 
            <div class="col-sm-9">
              
                
            </div>
                
          </div>
            <div class="form-group row">
               <label class="control-label col-sm-2">C:</label> 
            <div class="col-sm-9">
              
            </div>--%>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="col-sm-1"
                    ErrorMessage="Please insert Option C" ForeColor="Red" Font-Bold="true"
                    ControlToValidate="txtop3" ValidationGroup="Question">*</asp:RequiredFieldValidator>--%>
          <%--</div>
            <div class="form-group row">
               <label class="control-label col-sm-2">D:</label> 
            <div class="col-sm-9">
              
            </div>--%>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="col-sm-1"
                    ErrorMessage="Please insert Option D" ForeColor="Red" Font-Bold="true"
                    ControlToValidate="txtop4" ValidationGroup="Question">*</asp:RequiredFieldValidator>--%>
          <%--</div>
            <div class="form-group row">
               <label class="control-label col-sm-2">Answer</label> 
            <div class="col-sm-9">
              
            </div>
                
          </div>
                </div>
                <div class="col-sm-4">
                    
                </div>
        </div>--%>
          <%--<div class="form-group row">
              <div class="col-sm-1"></div>
            <div class="col-sm-10">
              
                &nbsp;&nbsp;&nbsp;
              <a href="/Admin/FssNew/ManageQuiz.aspx" class="btn btn-danger">Back</a>
            </div>
          </div>
        </div>--%>
        <%-- add Question  Form control -------  End --%>
    
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="CPH_Scripts">
    <script src="/assets/libs/bootstrap-filestyle2/bootstrap-filestyle.min.js"></script>

    <script type="text/javascript">
     function loadFile(event) {
         var image = document.getElementById('img_category');
         image.src = URL.createObjectURL(event.target.files[0]);
     }
 </script>  
</asp:Content>