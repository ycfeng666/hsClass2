<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 158px;
            text-align: right;
        }
        .auto-style2 {
            width: 34%;
            height: 163px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style2">
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="22pt" Text="登录页面"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="姓名："></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" Height="22px" Width="258px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="密码："></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpwd" runat="server" Height="22px" Width="258px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Button ID="Button1" runat="server" Height="26px" Text="登录" Width="62px" OnClick="Button1_Click" />
                        <br />
                        <asp:Label ID="LoginMessage" runat="server" Font-Names="微软雅黑" ForeColor="White"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
