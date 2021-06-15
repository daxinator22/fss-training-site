<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo1.aspx.cs" Inherits="helloWorld.Users.Demo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 48px;
        }
        .auto-style2 {
            width: 233px;
        }
        .auto-style3 {
            height: 48px;
            width: 233px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table>
        <tr>
            <td class="auto-style16">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="Take Quiz" OnClick="Button1_Click" />&nbsp;<hr />

                 <asp:Panel ID="Panel1" runat="server" Visible="False" Height="280px">

                     <table class="auto-style18" style="border: thin dashed #008000">
                         <tr>
                             <td class="auto-style21">
                                 
                                 Question</td>
                             <td colspan="3">
                                 
                                 <asp:Label ID="lvlQuestion" runat="server"></asp:Label>
                                 
                             </td>
                             
                         </tr>
                         <tr>
                             <td class="auto-style21">
                               </td>
                             <td>
                                 
                             </td>
                             <td>
                                 
                             </td>
                             <td class="auto-style2">
                                 
                             </td>
                             
                         </tr>
                        <tr>
                             <td class="auto-style21">
                                 Answer Options:</td>
                             <td>
                                 
                             </td>
                             <td>
                                 
                                 &nbsp;</td>
                             <td class="auto-style2">
                                 
                                 <asp:Label ID="lvlQuestionID" runat="server" Visible="False"></asp:Label>
                                 
                                 <asp:Label ID="lvlTestRecordID" runat="server"></asp:Label>
                                 
                             </td>
                             
                         </tr>
                          <tr>
                             <td class="auto-style20">
                              </td>
                             <td>
                                 
                             </td>
                             <td>
                                 
                             </td>
                             <td class="auto-style2">
                                 
                             </td>
                             
                         </tr>

                         </tr>
                         <tr>
                             <td class="auto-style20">&nbsp;</td>
                             <td>
                                 <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="DSoptions" DataTextField="option" DataValueField="optionNumber">
                                 </asp:RadioButtonList>
                             </td>
                             <td>
                                 <asp:Label ID="lvltimer" runat="server" Visible="False"></asp:Label>
                             </td>
                             <td class="auto-style2">
                                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                                 </asp:ScriptManager>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style20"></td>
                             <td class="auto-style22"></td>
                             <td class="auto-style22"></td>
                             <td class="auto-style2">
                                 <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick" Enabled="False" />
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style20">&nbsp;</td>
                             <td>
                                 <asp:Button ID="btnPrevious" runat="server" OnClick="btnPrevious_Click" Text="Previous" BackColor="#00FF99" ForeColor="Black" />
                             </td>
                             <td>
                                 <asp:Button ID="btnNext" runat="server" OnClick="btnNext_Click" Text="Next" BackColor="#66FF99" />
                             </td>
                             <td class="auto-style2">
                                 <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" BackColor="#00CC00" />
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style1"></td>
                             <td class="auto-style1">
                                 <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" BackColor="Lime" BorderColor="#CC0000" />
                             </td>
                             <td class="auto-style1"></td>
                             <td class="auto-style3"></td>
                         </tr>
                     </table>

                     <asp:SqlDataSource ID="DSquestion" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [questionID], [question] FROM [FSS_Questions] ORDER BY [questionID] DESC"></asp:SqlDataSource>
                     <asp:SqlDataSource ID="DStestRecord" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [questionID] FROM [FSS_quizRecord] WHERE ([userID] = @userID)">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="Label1" Name="userID" PropertyName="Text" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                     <asp:SqlDataSource ID="DStest" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [FSS_quizRecord] WHERE [quizID] = @quizID" InsertCommand="INSERT INTO [FSS_quizRecord] ([answerOption]) VALUES (@answerOption)" SelectCommand="SELECT [quizID], [answerOption] FROM [FSS_quizRecord]" UpdateCommand="UPDATE [FSS_quizRecord] SET [answerOption] = @answerOption WHERE [quizID] = @quizID">
                         <DeleteParameters>
                             <asp:Parameter Name="quizID" Type="Int32" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="answerOption" Type="String" />
                         </InsertParameters>
                         <UpdateParameters>
                             <asp:Parameter Name="answerOption" Type="String" />
                             <asp:Parameter Name="quizID" Type="Int32" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                     <asp:SqlDataSource ID="DSanswersBoth" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT FSS_quizRecord.answerOption, FSS_correctAnswer.correctOption FROM FSS_quizRecord LEFT OUTER JOIN FSS_correctAnswer ON FSS_quizRecord.questionID = FSS_correctAnswer.questionID WHERE (FSS_quizRecord.userID = @stdID)">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="Label1" Name="stdID" PropertyName="Text" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                     <asp:SqlDataSource ID="DScurrentTest" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [FSS_quizRecord] WHERE [quizID] = @quizID" InsertCommand="INSERT INTO [FSS_quizRecord] ([userID], [questionID]) VALUES (@userID, @questionID)" SelectCommand="SELECT FSS_Questions.questionID, FSS_Questions.question, FSS_quizRecord.quizID, FSS_quizRecord.answerOption FROM FSS_quizRecord INNER JOIN FSS_Questions ON FSS_quizRecord.questionID = FSS_Questions.questionID WHERE (FSS_quizRecord.userID = @userID)" UpdateCommand="UPDATE [FSS_quizRecord] SET [userID] = @userID, [questionID] = @questionID WHERE [quizID] = @quizID">
                         <DeleteParameters>
                             <asp:Parameter Name="quizID" Type="Int32" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="userID" Type="Int32" />
                             <asp:Parameter Name="questionID" Type="Int32" />
                         </InsertParameters>
                         <SelectParameters>
                             <asp:ControlParameter ControlID="Label1" Name="userID" PropertyName="Text" />
                         </SelectParameters>
                         <UpdateParameters>
                             <asp:Parameter Name="userID" Type="Int32" />
                             <asp:Parameter Name="questionID" Type="Int32" />
                             <asp:Parameter Name="quizID" Type="Int32" />
                         </UpdateParameters>
                     </asp:SqlDataSource>

                     <asp:SqlDataSource ID="DSoptions" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT optionNumber + N': ' + [option] AS [option], optionNumber FROM FSS_Options WHERE (questionID = @questionID)">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="lvlQuestionID" Name="questionID" PropertyName="Text" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>
     </asp:Panel>

                     <asp:Panel ID="pnlResult" runat="server" Height="101px" Width="604px" CssClass ="floatRight" Visible="False" >
                         <table>
                             <tr>
                                 <td class="auto-style25">

                                     <asp:Label ID="lvlResult" runat="server"></asp:Label>

                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style26">

                                     Percentage :
                                     <asp:Label ID="lvlPercentage" runat="server"></asp:Label>
                                     

                                 </td>
                                 <td>
                                     <asp:Label ID="lvlPassFail" runat="server" ForeColor="#00CC00"></asp:Label>
                                 </td>
                             </tr>
                         </table>
                     </asp:Panel>
        </div>
    </form>
</body>
</html>
