<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quiz.aspx.cs" Inherits="helloWorld.Users.quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                Your result!
            </h1>
            
            <asp:Button ID="Button1" runat="server" Text="Back to Dash" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="lblcompliant" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="lblresult" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
