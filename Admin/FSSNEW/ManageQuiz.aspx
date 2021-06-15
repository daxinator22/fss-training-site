<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.Master" AutoEventWireup="true" CodeBehind="ManageQuiz.aspx.cs" Inherits="helloWorld.Admin.FSSNEW.ManageQuiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                 <a class="btn btn2" href="CreateQuestionDetails.aspx" >CREATE QUIZ
</a>
                 </div>
                 </div>
                 <div class="form-row col-md-8 buttom_class">
                 <h3><span style="text-decoration: underline;">TOTAL<br></span> <span style="color: #606FEF"><asp:Label runat="server" ID="lbtotalRow"></asp:Label></span></h3>
</div>

<div class="form-row col-md-8 buttom_class">
    <h3 style="color: red;">MANAGE QUIZ</h3></div>

         <asp:GridView runat="server"  Font-Size="12px"  class="table manage_airports" ID="manage_airports">
            <Columns>
                <asp:TemplateField   HeaderText="Add Que">
                  <ItemTemplate>                  
                         <asp:ImageButton    ID="imgbtndetails" runat="server" ImageUrl="~/assets/images/add_que_icon.png"  ToolTip="Add Question"   OnClick="imgbtn_Click"    /> 
                  </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="All Que">
                    <ItemTemplate>                                    
                        <asp:LinkButton ID="btnAllQue" runat="server"     ToolTip="All Question" CssClass="btn-icon" OnClick="btnAllQue_Click"  >
                            <i class="fa fa-list"></i>
                        </asp:LinkButton> 
                    
                      </ItemTemplate>
                   </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>                                    
                        <asp:LinkButton ID="btnEdit" runat="server"     ToolTip="Edit Quiz info" CssClass="btn-icon"      OnClick="btnEdit_click"   >
                            <i class="fa fa-edit"></i>
                        </asp:LinkButton> 
                    
                      </ItemTemplate>
                   </asp:TemplateField>
                  
                  <asp:TemplateField HeaderText="Details">
                                    <ItemTemplate>
                     <asp:LinkButton ID="btnDetails" runat="server"     ToolTip="Details" class="glyphicon glyphicon-fullscreen"      OnClick="btnDetails_click"   /> 
                    
                      </ItemTemplate>
                   </asp:TemplateField>  
                     
                    
                    <asp:TemplateField HeaderText="Result">
                    <ItemTemplate>                                    
                        <asp:LinkButton ID="btnResult" runat="server"     ToolTip="Show Result Sheet" class="glyphicon glyphicon-list-alt"   OnClick="btnResult_click"   /> 
                    
                      </ItemTemplate>
                   </asp:TemplateField>               
            </Columns>
        </asp:GridView>

                    <%--<table >
                      <tr>
                        <th><label class="label_class">ADD QUE</label></th>
                        <th><label class="label_class">DETAILS</label></th>
                        <th><label class="label_class">EDIT</label></th>
                        <th><label class="label_class">RESULTS</label></th>
                         <th><label class="label_class">QUIZ ID</label></th>
                          <th><label class="label_class">QUIZ NAME</label></th>
                           <th><label class="label_class">DESCRIPTION</label></th>
                            <th><label class="label_class">STATUS</label></th>
                            
                        
                    </tr>
                    <tr>
                        <td><img src="http://5.189.174.164/fss/assets/images/add_que_icon.png"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>150</td>
                        <td>Test For Single Page PDF</td>
                        <td>Single Page PDF</td>
                        <td>On Air</td>
                       
                    </tr>
                     <tr>
                        <td><img src="http://5.189.174.164/fss/assets/images/add_que_icon.png"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>149</td>
                        <td>Kishor & Mali</td>
                        <td>AA</td>
                        <td>On Air</td>
                       
                    </tr>
                     <tr>
                        <td><img src="http://5.189.174.164/fss/assets/images/add_que_icon.png"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>148</td>
                        <td>TestQuiz</td>
                        <td>Test</td>
                        <td>On Air</td>
                       
                    </tr>
                     <tr>
                        <td><img src="http://5.189.174.164/fss/assets/images/add_que_icon.png"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>147</td>
                        <td>Lead Training Quiz</td>
                        <td>Lead Training Quiz</td>
                        <td>On Air</td>
                       
                    </tr>
                   
                   
                    
                </table>--%>
            </div>
        </div> 

    </div>   </div> 
      <%--<div class="col-lg-8 col-lg-offset-2"> 
        <div class="well well-sm">
                <asp:button id="btnBack" runat="server"  class="btn btn-warning btn-xs"   Text="Back"
                OnClientClick="JavaScript: window.history.back(1); return false;">
                </asp:button> 
                <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-primary btn-xs"
                NavigateUrl="~/Admin/FSSNEW/CreateQuestionDetails.aspx"> <span class="glyphicon glyphicon-plus"></span> Create Quiz</asp:HyperLink>    
                <span style="padding-left:380px"><asp:Label ID="lbtotalRow" runat="server" Text="Label"></asp:Label>  </span>  
            
        </div>
</div>

<div class="col-lg-8 col-lg-offset-2"> 
<div class="panel panel-info">
     <div class="panel-heading">
      <h3 class="panel-title"><span  class="glyphicon glyphicon-list" > </span> Manage Quiz  </h3>
    </div> 
  <div class="panel-body">    
   <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Height="289px">
        
      </asp:Panel>
      </div>
    </div>
</div>
          <asp:Button ID="btnShowPopup" runat="server" style="display:none" />
         
      


        <asp:Panel ID="pnlpopup2"  class="panel panel-primary" runat="server" BackColor="White" style="display:none"  Width="500px">
                <div class="panel-heading">
                    <h3 class="panel-title"> Update Quiz 
                        <asp:Label ID="lbquizid" runat="server" Text="qID"></asp:Label>
                    <span style="padding-left:300px"> 
                    <asp:LinkButton ID="btnCancel" runat="server" ForeColor="#FFFFCC" class="btn btn-Default btn-xs" data-dismiss="alert" >X</asp:LinkButton> </span>
                 </h3></div> 
         
                  <div class="panel-body">
                                            <asp:Label ID="Label2" runat="server" Text="Name" class="col-lg-2 control-label"></asp:Label>
                                            <br />
                                            <asp:TextBox ID="txtName" runat="server" placeholder="Quiz Name" class="form-control"   ></asp:TextBox>
                               
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ValidationGroup="Vgp4"
                                                ErrorMessage="Please insert Quiz Name" ForeColor="Red" Font-Bold="true" 
                                                ControlToValidate="txtName"></asp:RequiredFieldValidator>
                             
                                                   <asp:Label ID="Label3" runat="server" Text="Description" class="col-lg-2 control-label" ></asp:Label><br />
                                                    <asp:TextBox ID="txtDescription" runat="server" placeholder="Quiz Description" class="form-control" TextMode="MultiLine"  ></asp:TextBox>
          
                       <asp:Label ID="Label11" runat="server" Text="Quiz Time" class="col-lg-3 control-label" ></asp:Label> <br />
                        <asp:TextBox ID="txtQtime" runat="server" placeholder="Quiz Time" class="form-control"  ></asp:TextBox>

                        <asp:Label ID="Label1" runat="server" Text="Status" ></asp:Label> <br />
                            <asp:DropDownList ID="DDLStatus" runat="server">               
                            <asp:ListItem Value="1">Active</asp:ListItem>
                            <asp:ListItem Value="2">Inactive</asp:ListItem>              
                        </asp:DropDownList>
            
                   </div>
        
                      
                    <div class="panel-footer">
                    <asp:Button ID="btnupdate" runat="server" Text="Save" class="btn btn-info" 
                            onclick="btnupdate_Click"  />
                    </div>
                    

                 </asp:Panel>--%>
</asp:Content>
