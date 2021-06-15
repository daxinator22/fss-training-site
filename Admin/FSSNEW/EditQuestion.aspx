<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="EditQuestion.aspx.cs" Inherits="helloWorld.Admin.FSSNEW.EditQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
<h4 class="heading_class"><asp:Label ID="lbqid" runat="server" Text="lbquizid"></asp:Label>. Edit QUESTION</h4>
        <asp:Label ID="lbQuizName" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="lbCategory" runat="server" Text="" Visible="false"></asp:Label>
<div class="row">
<div class="col-md-12">       
            <div class="add_user_class bold_class">
                <asp:ValidationSummary runat="server" CssClass="alert alert-danger" ValidationGroup="Question" />                                               
                <asp:HiddenField ID="hide_QuestionId" runat="server" />
            <div class="form-group col-md-10">
                                                             
                    <label class="col-form-label bold_class" for="example-textarea">Question</label>
                    <asp:TextBox ID="txtQueName" runat="server" CssClass="form-control" placeholder="Quiz Question" Rows="5" TextMode="MultiLine" ></asp:TextBox>                                                                    
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Please insert Option A" ForeColor="Red" Font-Bold="true"
                    ControlToValidate="txtop1" ValidationGroup="Question">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-md-6">
						<label for="" class="col-form-label bold_class">B</label>
                        <asp:TextBox ID="txtop2" runat="server" placeholder="Option B" CssClass="form-control" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" CssClass="col-sm-1"
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="Please insert Answer" ForeColor="Red" Font-Bold="true"
                    ControlToValidate="DDLAns" ValidationGroup="Question">*</asp:RequiredFieldValidator>                       
                    </div>
                                                        
                    </div>
                  </div>
                    <div class="col-md-4">
                        <img id="img_category" runat="server" src="../../Image/imagenotavailable.png" height="200" width="300" />
                        <asp:HiddenField ID="hide_imgpath" runat="server" />
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
                        <asp:Button ID="Button1" runat="server" ValidationGroup="Question" Text="Submit" CssClass="register_btn" OnClick="btnSave_Click" />
                    
                    </div>
                    </div>
            </div>
            </div>
                                             
            </div>

                    
</div>
    
   <%-- <table class="table-info" style="width:100%;">
            <tr>
                <td class="style9">
                    <asp:Label ID="lbQuizName0" runat="server" 
                        style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: large" 
                        Text="Quiz Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbCategory0" runat="server" Text="Category" ></asp:Label>
                </td>                
                
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="lbqid" runat="server" Text="-"></asp:Label>.
                    <asp:Label ID="lbQuizName" runat="server" 
                        style="font-weight: 700; font-family: 'Times New Roman', Times, serif; font-size: large" 
                        Text=".Quiz Name"></asp:Label>
                    
                    <br />
                </td>
                <td>
                    <asp:Label ID="lbCategory" runat="server" Text="Participant name"></asp:Label>
                </td>
                               
            </tr>
        </table>
    <br />
        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" ValidationGroup="Question" />

     <div class="container">
            
           <div class="form-group row">
                <asp:Label ID="Label3" runat="server" Text="Question:" class="control-label col-sm-1"></asp:Label>    
            <div class="col-sm-10">
              <asp:TextBox ID="txtQueName" runat="server" placeholder="Quiz Question" class="form-control" TextMode="MultiLine" ></asp:TextBox>
                
            </div>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="col-sm-1"
                    ErrorMessage="Please insert Question" ForeColor="Red" Font-Bold="true"
                    ControlToValidate="txtQueName" ValidationGroup="Question">*</asp:RequiredFieldValidator>
          </div>
            <div class="form-group row">
               <label class="control-label col-sm-1">Image</label> 
            <div class="col-sm-10">
                <input type="file" id="fu_QuestionImage" runat="server" onchange="loadFile(event);" />
              
            </div>
          </div>
            <div class="row">
                <div class="col-sm-8">
            <div class="form-group row">
               <label class="control-label col-sm-2">A:</label> 
            <div class="col-sm-9">
              <asp:TextBox ID="txtop1" runat="server" placeholder="Option A" class="form-control" ></asp:TextBox>
                
            </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="col-sm-1"
                    ErrorMessage="Please insert Option A" ForeColor="Red" Font-Bold="true"
                    ControlToValidate="txtop1" ValidationGroup="Question">*</asp:RequiredFieldValidator>
          </div>
            <div class="form-group row">
               <label class="control-label col-sm-2">B:</label> 
            <div class="col-sm-9">
              <asp:TextBox ID="txtop2" runat="server" placeholder="Option B" class="form-control" ></asp:TextBox>
                
            </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="col-sm-1"
                    ErrorMessage="Please insert Option B" ForeColor="Red" Font-Bold="true"
                    ControlToValidate="txtop2" ValidationGroup="Question">*</asp:RequiredFieldValidator>
          </div>
            <div class="form-group row">
               <label class="control-label col-sm-2">C:</label> 
            <div class="col-sm-9">
              <asp:TextBox ID="txtop3" runat="server" placeholder="Option C" class="form-control" ></asp:TextBox>
            </div>
                
          </div>
            <div class="form-group row">
               <label class="control-label col-sm-2">D:</label> 
            <div class="col-sm-9">
              <asp:TextBox ID="txtop4" runat="server" placeholder="Option D" class="form-control" ></asp:TextBox>
            </div>
                
          </div>
            <div class="form-group row">
               <label class="control-label col-sm-2">Answer</label> 
            <div class="col-sm-9">
              <asp:DropDownList ID="DDLAns" runat="server" placeholder="Answer" class="form-control">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                        </asp:DropDownList>
            </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass="col-sm-1"
                    ErrorMessage="Please insert Answer" ForeColor="Red" Font-Bold="true"
                    ControlToValidate="DDLAns" ValidationGroup="Question">*</asp:RequiredFieldValidator>
          </div>
                </div>
                <div class="col-sm-4">
                    <img id="img_category" runat="server" src="../../Image/imagenotavailable.png" height="200" width="300" />
                    
                </div>
        </div>
          <div class="form-group row">
              <div class="col-sm-1"></div>
            <div class="col-sm-10">
              <asp:Button ID="btnSave" runat="server" ValidationGroup="Question" Text="Submit" class="btn btn-success" OnClick="btnSave_Click" />
              &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Back" runat="server" Text="Back" class="btn btn-danger" OnClick="btn_Back_Click" />

            </div>
          </div>
        </div>--%>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="CPH_Scripts">
    <script src="/assets/libs/bootstrap-filestyle2/bootstrap-filestyle.min.js"></script>

    <script type="text/javascript">
     function loadFile(event) {
         var image = document.getElementById('ContentPlaceHolder1_img_category');
         image.src = URL.createObjectURL(event.target.files[0]);
     }
 </script>  
</asp:Content>