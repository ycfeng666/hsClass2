<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        .auto-style1 {
            width: 351px;
            height: 155px;
            float: left;
        }

        .auto-style2 {
            width: 721px;
            height: 525px;
            float: left;
        }

        .auto-style3 {
            width: 96%;
            height: 469px;
        }

        .auto-style4 {
            text-align: center;
        }

        .auto-style5 {
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
                    <td class="auto-style5">
                        <asp:Label ID="lblWelcome" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="22pt" Text="图书查询"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="查询方式："></asp:Label>
                        &nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="sid">书籍ID</asp:ListItem>
                            <asp:ListItem Value="sname">书籍名称</asp:ListItem>
                        </asp:RadioButtonList>
                        &nbsp;
                        <asp:TextBox ID="txtbooks" runat="server" Width="129px"></asp:TextBox>
                        &nbsp;<asp:Button ID="btnsel" runat="server" Text="查询" OnClick="btnsel_Click" />
                        &nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:GridView ID="gvBooks" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="186px" Width="680px" AutoGenerateColumns="False" AllowCustomPaging="True" PageSize="5" OnRowCommand="gvBooks_RowCommand">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="bookid" HeaderText="书籍ID" />
                                <asp:BoundField DataField="bookname" HeaderText="书籍名称" />
                                <asp:BoundField DataField="type" HeaderText="书籍类型" />
                                <asp:BoundField DataField="autor" HeaderText="书籍作者" />
                                <asp:BoundField DataField="pubname" HeaderText="出版社" />
                                <asp:BoundField DataField="price" HeaderText="价格" />
                                <asp:BoundField DataField="page" HeaderText="页数" />

                                <asp:TemplateField HeaderText="操作">
                                    <ItemTemplate>
                                        <asp:Button runat="server" Text="删除" CommandArgument='<%#Eval("bookid") %>' CommandName="delect" OnClientClick='return confirm("是否删除？")' />
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <br />
                        <asp:Label ID="delmain" runat="server" Font-Names="微软雅黑" ForeColor="White" style="text-align: center"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
