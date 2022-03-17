<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Save.aspx.cs" Inherits="classWork1.Save" %>

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
        .inp {
            border: none;
            border-bottom:1px solid black;
        }
        .btn {
            width:40%;
            border-radius: 0.5rem;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table runat="server" CssClass="tab" BorderStyle="Groove" CellPadding="3" Caption="用户注册">
                 <asp:TableRow CssClass="row" runat="server" >
                     <asp:TableCell runat="server">
                         用户名
                     </asp:TableCell>
                     <asp:TableCell runat="server">
                         <asp:TextBox ID="txtName" runat="server" CssClass="inp"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="row" runat="server">
                     <asp:TableCell runat="server">
                         密码
                     </asp:TableCell>
                     <asp:TableCell runat="server">
                         <asp:TextBox ID="txtPass" runat="server" CssClass="inp"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow CssClass="row" runat="server">
                     <asp:TableCell CssClass="" runat="server">
                         再次输入
                     </asp:TableCell>
                     <asp:TableCell runat="server">
                         <asp:TextBox ID="txtPassAgain" runat="server" CssClass="inp"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                <asp:TableRow CssClass="row" runat="server" HorizontalAlign="Center">
                    <asp:TableCell runat="server" ColumnSpan="2">
                        <asp:Button runat="server" CssClass="btn" Text="注册" OnClick="SaveClick"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="row" runat="server" HorizontalAlign="Center" ID="messageRow">
                    <asp:TableCell runat="server" ColumnSpan="2">
                        <asp:Label runat="server" ID="saveMessage"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="row" runat="server" HorizontalAlign="Center" ID="ToInfoRow">
                    <asp:TableCell runat="server" ColumnSpan="2">
                        <asp:LinkButton runat="server" Text="去完善个人信息" OnClick="ToFullInfoClick"></asp:LinkButton>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
