<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.Master" AutoEventWireup="true" CodeBehind="PlayQuiz.aspx.cs" Inherits="helloWorld.Users.newQuiz.PlayQuiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
            <div class="col-lg-12 bg_class_Heading">
                <div class="add_user_class">
                  <div class="flot_left_class_ma ">
                 
                 <div class="form-row col-md-12">
                 <div class="form-group col-md-12">
                     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                     <div class="table-responsive">
                    <table class="table" style="color:#313a46;">
            <tr>
                <td class="style9">
                    <asp:Label ID="lbQuizName0" runat="server" 
                        style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: large" 
                        Text="Quiz Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbParticipant0" runat="server" Text="UserName" 
                        style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: large"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Question" style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: large"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Time" Visible="False"></asp:Label>
    
    </td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="lbqid" runat="server" Text="-" style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: large"></asp:Label>.
                    <asp:Label ID="lbQuizName" runat="server" 
                        style="font-weight: 700; font-family: 'Times New Roman', Times, serif; font-size: large" 
                        Text=".Quiz Name"></asp:Label>
                    <br />
                    <asp:HiddenField ID="hide_TestType" runat="server" />
                    <asp:HiddenField ID="hide_CourseId" runat="server" />
                    <asp:HiddenField ID="hide_Attempt" runat="server" />
                </td>
                <td>
                    <asp:Label ID="lbParticipant" runat="server" Text="Participant name" style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: large"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbNum" runat="server" style="font-weight: 700" Text="1"></asp:Label>
                    /
                    <asp:Label ID="lbTotalQue" runat="server" Text="lbTotalQue" style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: large"></asp:Label>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional" Visible="False">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:Label ID="lbTime" runat="server" style="font-weight: 700"  Text="-" Visible="False"></asp:Label>
                            /<asp:Label ID="lbtotalTime" runat="server" Text="10" Visible="False"></asp:Label>
                            <asp:HiddenField ID="hide_timeout" runat="server" />                            
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    
                </td>
            </tr>
        </table>
                         <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick" >
                         </asp:Timer>
                    </div>
                </div>                
                
                 </div>

            </div>
        </div> 

    </div>   
        <div class="row">
           <div class="col-md-12">                                                      
                <div class="add_user_class bold_class">
                    <div class="table-responsive">
                    <table class="table">
            <tr>
                <td >
                  Q.<asp:Label ID="lbid" runat="server" Text="id" style="font-weight: 700"></asp:Label></td>
                <td class="panel panel-default" colspan="3">
    
        <asp:Label ID="lbQuestion" runat="server"  Font-Names="verdana" Font-size="18pt" class="panel-body"  Text="lbQuestion" ></asp:Label>   
                    <br />
                </td>
            </tr>
            <tr>
                <td >A.</td>
                <td style="width:70px;height:70px;">
                    <label class="container_label col-form-label">
                   <asp:RadioButton ID="RbA" GroupName="op" runat="server"   />                     
                    <span class="checkmark"></span>
                    </label>  
                </td>                  
                <td >
                    <asp:Label ID="lbl_AnswerA" runat="server" class="label label-warning" Font-Names="verdana" Font-size="15px"></asp:Label>
                </td>
                <td rowspan="5">
                    <asp:Image ID="img_QuestionImage" runat="server" ImageUrl="~/Image/imagenotavailable.png" height="250" width="350" />
                </td>
            </tr>            
            
                <tr>
                    <td>B.</td>
                    <td style="width:70px;height:70px;">
                    <label class="container_label col-form-label">
                    <asp:RadioButton ID="RbB" GroupName="op" runat="server"   />                     
                    <span class="checkmark"></span>
                    </label>  
                </td>                  
                <td >
                    <asp:Label ID="lbl_AnswerB" runat="server" class="label label-warning" Font-Names="verdana" Font-size="15px"></asp:Label>
                </td>
                </tr>
                
                <tr id="rowC" runat="server">
                    <td >C.</td>
                    <td style="width:70px;height:70px;">
                    <label class="container_label col-form-label">
                    <asp:RadioButton ID="RbC" GroupName="op" runat="server"   />                     
                    <span class="checkmark"></span>
                    </label>  
                </td>                  
                <td >
                    <asp:Label ID="lbl_AnswerC" runat="server" class="label label-warning" Font-Names="verdana" Font-size="15px"></asp:Label>
                </td>
                </tr>                
                <tr id="rowD" runat="server">
                    <td>D.</td>
                    <td style="width:70px;height:70px;">
                    <label class="container_label col-form-label">
                    <asp:RadioButton ID="RbD" GroupName="op" runat="server"   />                     
                    <span class="checkmark"></span>
                    </label>  
                </td>                  
                <td >
                    <asp:Label ID="lbl_AnswerD" runat="server" class="label label-warning" Font-Names="verdana" Font-size="15px"></asp:Label>
                </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="text-align: left">
                        <br />
                        <asp:Button ID="btnSubAns" runat="server" class="btn btn-primary btn-lg" Width="200" Text="Submit My Answer" OnClick="btnSubAns_Click" />
                        <br /><br />
                        <asp:Label ID="lbmsg" runat="server" style="color: #006600; font-weight: 700" Text="lbmsg"></asp:Label>
                        &nbsp;<asp:Label ID="lbans" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>            
        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPH_Scripts" runat="server">
</asp:Content>
