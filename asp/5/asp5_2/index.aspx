<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
     <title>学生信息管理系统</title>
    <style type="text/css">
        .backgourd-image {           
            background: url('/images/login_background.jpg') ;            
           
        }
        .style1 {
            width: 137%;
            float: left;
            height: 91px;
        }

        .style2 {
            text-align: right;
        }

        .style3 {
            text-align: center;
            height: 33px;
        }

        .style4 {
            height: 33px;
        }

        .style5 {
            width: 862px;
            height: 237px;
        }

        .style6 {
            width: 100%;
            height: 248px;
        }

        .style7 {
            width: 108px;
        }

        .style8 {
            width: 108px;
            height: 130px;
        }

        .style9 {
            height: 130px;
        }

        .auto-style3 {
            width: 142px;
        }

        .auto-style4 {
            width: 778px;
            height: 237px;
        }

        .auto-style5 {
            text-align: right;
            height: 5px;
            width: 363px;
        }

        .auto-style6 {
            height: 5px;
        }

        .auto-style7 {
            width: 140%;
            float: left;
            height: 91px;
            margin-top: 0px;
        }

        .auto-style8 {
            text-align: right;
            width: 363px;
        }

        .auto-style9 {
            text-align: right;
            height: 33px;
            width: 363px;
        }

        .auto-style11 {
            text-align: left;
        }

        .auto-style12 {
            margin-left: 50px;
        }

        .auto-style13 {
            width: 100%;
            height: 261px;
        }

        .auto-style14 {
            width: 142px;
            height: 19px;
        }
        .auto-style15 {
            text-align: right;
            height: 13px;
        }
        .auto-style16 {
            text-align: left;
            height: 13px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" cellpadding="0" cellspacing="0" class="auto-style4 backgourd-image" >
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0" class="auto-style13">
                        <tr>
                            <td class="auto-style14"></td>
                            <td class="auto-style15"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="height: 70px">
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                                        </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td>
                                <table align="left" cellpadding="0" cellspacing="0" class="auto-style7"
                                    style="font-size: small;">
                                    <tr>
                                        <td class="auto-style8">
                                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="微软雅黑" ForeColor="White" Text="用户名："></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtname" runat="server" Width="120px" AutoPostBack="True"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="请输入用户名！" ForeColor="Red">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"></td>
                                        <td class="auto-style6"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8">
                                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="微软雅黑" ForeColor="White" Text="密码："></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="120px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd" ErrorMessage="请输入密码！" ForeColor="Red">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="微软雅黑" ForeColor="White" Text="身份："></asp:Label>
                                        </td>
                                        <td class="style4">
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem Value="1">管理员</asp:ListItem>
                                                <asp:ListItem Value="2">学生</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="height: 15px"></td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
                                        </td>
                                        <td class="auto-style11">
                                            <asp:Button ID="Button2" runat="server" Text="取消" CssClass="auto-style12" OnClick="Button2_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"></td>
                                        <td class="auto-style16"></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 10px" class="style2">
                                            &nbsp;</td>
                                        <td class="auto-style17">
                                            <asp:Label ID="LoginMessage" runat="server" Font-Names="微软雅黑" ForeColor="White"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
