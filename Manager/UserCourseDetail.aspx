<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="UserCourseDetail.aspx.cs" Inherits="helloWorld.Manager.UserCourseDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h4 class="heading_class">Your Station User Course Details</h4>
        <div class="col-lg-12">
            <div class="add_user_class">
                <div class="flot_left_class_ma margin_class">
                    <div class="form-row col-md-8 buttom_class">
                  <table class="table">                
                <tr>
                    <td class="auto-style1">
                        User Name 
                    </td>
                    <td><asp:Label ID="lbl_UserName" runat="server" ></asp:Label></td>
                </tr>        
                <tr>
                    <td class="auto-style1">
                        Course Name
                    </td>
                    <td>
                        <asp:Label ID="lbl_CourseName" runat="server" ></asp:Label>
                        <asp:HiddenField runat="server" ID="hide_CourseId"  />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        Complete Date
                    </td>
                    <td>
                        <asp:Label ID="lbl_CompleteDate" runat="server" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        Score 
                    </td>
                    <td><asp:Label ID="lbl_TotalPoint" runat="server" Text="0" ></asp:Label>/<asp:Label ID="lbl_TotalQuestion" runat="server" Text="0" ></asp:Label>=<asp:Label ID="lbl_Score" runat="server" Text="0" Font-Bold="true" ></asp:Label>%</td>
                </tr>        
              </table>
                    </div>

                    <asp:DataList ID="dl_CourseDetail" runat="server" CellPadding="4" ForeColor="#333333" >  
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <ItemTemplate>  
                <table cellpadding="2" cellspacing="0" border="1" style="width:100%;" >  
                    <tr>
                        <td><%# Eval("QNo") %></td>  
                        <td colspan="2">  
                            <span ><%# Eval("Question_Name") %></span>
                        </td>
                          
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <b><span <%# Eval("Status").ToString()=="Correct"? "style='color:green;'" : "style='color:red;'" %>  ><%# Eval("Ans") %></span></b>
                        </td>
                        <td><b><span <%# Eval("Status").ToString()=="Correct"? "style='color:green;'" : "style='color:red;'" %>> <%# Eval("Status") %></span></b></td>
                    </tr>  
                </table>  
            </ItemTemplate>  
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:DataList>  
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
