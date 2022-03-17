<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="classWork1.Info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>第二次实验</title>
    <style>
        .tab {
            margin:50px auto 0;
            width:300px;
        }
        .row {
            height:30px;
            line-height:30px;
        }
            .row>td:first-child {
                width:75px;
            }
        .img {
            width:55px;
            height:55px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table runat="server" CssClass="tab" BorderStyle="Groove" CellPadding="3" Caption="完善信息">
                <asp:TableRow CssClass="row" runat="server">
                    <asp:TableCell runat="server">
                         性别
                     </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:RadioButtonList runat="server" ID="SexRadio" RepeatDirection="Horizontal">
                            <asp:ListItem Text="男" Value="男" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="女" Value="女"></asp:ListItem>
                        </asp:RadioButtonList>
                     </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="row">
                    <asp:TableCell runat="server" Wrap="true">
                         生源地
                     </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:RadioButtonList runat="server" ID="CityRadio" RepeatDirection="Horizontal" RepeatColumns="2">
                            <asp:ListItem Text="武汉市" Value="武汉市" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="市外省内" Value="市外省内"></asp:ListItem>
                            <asp:ListItem Text="湖北省外" Value="湖北省外"></asp:ListItem>
                        </asp:RadioButtonList>
                     </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="row" runat="server">
                    <asp:TableCell runat="server">
                         常用联系方式
                     </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:CheckBoxList runat="server" ID="ChatCheck" RepeatDirection="Horizontal">
                            <asp:ListItem Text="QQ" Value="QQ"></asp:ListItem>
                            <asp:ListItem Text="微信" Value="微信"></asp:ListItem>
                            <asp:ListItem Text="电话" Value="电话"></asp:ListItem>
                        </asp:CheckBoxList>
                     </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="row" runat="server">
                    <asp:TableCell runat="server">
                         爱好
                     </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:CheckBoxList runat="server" ID="LikeCheck" RepeatDirection="Horizontal" RepeatColumns="3">
                            <asp:ListItem Text="阅读" Value="阅读"></asp:ListItem>
                            <asp:ListItem Text="电影" Value="电影"></asp:ListItem>
                            <asp:ListItem Text="运动" Value="运动"></asp:ListItem>
                            <asp:ListItem Text="音乐" Value="音乐"></asp:ListItem>
                            <asp:ListItem Text="旅游" Value="旅游"></asp:ListItem>
                            <asp:ListItem Text="上网" Value="上网"></asp:ListItem>
                        </asp:CheckBoxList>
                     </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="row" runat="server">
                    <asp:TableCell runat="server">
                         入学年份
                     </asp:TableCell>
                    <asp:TableCell runat="server">
                         <asp:DropDownList runat="server" ID="YearList"></asp:DropDownList>
                     </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="row" runat="server">
                    <asp:TableCell runat="server">
                         头像
                     </asp:TableCell>
                    <asp:TableCell runat="server">
                         <asp:DropDownList runat="server" ID="ImgList" AutoPostBack="True" OnSelectedIndexChanged="ImgChange"></asp:DropDownList>
                        <asp:Image runat="server" ID="Photo" CssClass="img"/>
                     </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="row" runat="server">
                    <asp:TableCell runat="server">
                         出生日期
                     </asp:TableCell>
                    <asp:TableCell runat="server">
                         <asp:TextBox runat="server" ID="txtDate"></asp:TextBox>
                     </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="row" runat="server">
                    <asp:TableCell runat="server">
                         电子邮件
                     </asp:TableCell>
                    <asp:TableCell runat="server">
                         <asp:TextBox runat="server" ID="txtEmail"></asp:TextBox>
                     </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="row" runat="server">
                    <asp:TableCell runat="server"  ColumnSpan="2">
                         <asp:Button runat="server" CssClass="btn" Text="确定" OnClick="SaveClick"/>
                     </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="row" runat="server">
                    <asp:TableCell runat="server" ColumnSpan="2">
                         <asp:Label runat="server" ID="saveMessage"></asp:Label>
                     </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
