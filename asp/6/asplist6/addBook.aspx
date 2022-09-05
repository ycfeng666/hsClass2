<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addBook.aspx.cs" Inherits="addBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 351px;
            height: 155px;
            float: left;
        }

        .auto-style2 {
            width: 721px;
            height: 525px;
            float: left;
            text-align: center;
        }

        .auto-style3 {
            width: 97%;
            height: 152px;
        }

        .auto-style5 {
            text-align: left;
            height: 38px;
        }

        .auto-style4 {
            text-align: center;
            height: 52px;
        }

        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1">
            </asp:TreeView>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </div>
        <div class="auto-style2">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style5" colspan="2">
                        <asp:Label ID="lblWelcome" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="22pt" Text="添加书籍"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">书籍名称：</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtname" runat="server" Height="25px" Width="286px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="请输入书籍名称" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">书籍类别：</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txttype" runat="server" Height="25px" Width="286px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txttype" ErrorMessage="请输入书籍类别" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">书籍作者：</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtautor" runat="server" Height="25px" Width="286px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtautor" ErrorMessage="请输入书籍作者" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">出版社：</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtpubname" runat="server" Height="25px" Width="286px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpubname" ErrorMessage="请输入出版社" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">价格：</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtprice" runat="server" Height="25px" Width="286px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtprice" ErrorMessage="请输入价格" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">页数：</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtpage" runat="server" Height="25px" Width="286px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpage" ErrorMessage="请输入页数" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <asp:Button ID="Button1" runat="server" Height="28px" Text="添加" Width="91px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <div class="auto-style6">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" DisplayMode="List" HeaderText="注意：" />
            </div>
            <br />
            <asp:Label ID="labse" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
