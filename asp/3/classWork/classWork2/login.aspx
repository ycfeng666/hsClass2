<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="classWork2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>聊天室-登陆</title>
    <link href="static/css/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            <h5>登陆用户</h5>
            <div class="control">
                <asp:TextBox ID="txtUser" CssClass="input" runat="server" Height="30px"></asp:TextBox>
            </div>
            <div class="control">
                <asp:Button runat="server" ID="BtnLogin" CssClass="btn" OnClick="BtnLogin_Click" Text="登 陆"/>
            </div>
        </div>
    </form>
</body>
</html>
