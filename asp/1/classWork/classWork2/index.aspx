<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="classWork2.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>简易计算器</title>
    <style>
        .tab {margin: 0 0;Height: 290px;width: 220px;}
        .h {text-align: center;}
        .cellCss {Height: 40px;width: 50px;}
        .rowCss {Height: 40px;}
        .but_ac {width: 80px;height: 60px;font-size: 1.2em;}
        .but {width: 50px;height: 40px;font-size: 1.2em;}
        .butSign {width: 50px;height: 40px;font-size: 1.2em;}
        .btnBig {width: 50px;height: 80px;font-size: 1.2em;}
        .but0 {width: 100px;height: 40px;font-size: 1.2em;}
        .screen {width: 210px;height: 70px;font-size: 1.5em;text-align: right;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>         
            <asp:Table ID="Table1" runat="server" CssClass="tab" CellPadding="2" CellSpacing="0" HorizontalAlign="Center" BorderStyle="Double">
                <asp:TableRow CssClass="rowCss" runat="server" HorizontalAlign="Center">
                    <asp:TableCell CssClass="cellCss" runat="server" ColumnSpan="4">
                        <asp:TextBox ID="TextBox1" runat="server" readOnly="true" CssClass="screen"></asp:TextBox><br />
                    </asp:TableCell>
                    <asp:TableCell CssClass="cellCss" runat="server">
                        <asp:Button ID="Button1" CssClass="btnBig" runat="server" Text="AC"  OnClick="Button5_Click"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="rowCss" runat="server" HorizontalAlign="Center">
                    <asp:TableCell CssClass="cellCss" runat="server">
                        <asp:Button ID="Button5" CssClass="but" runat="server" Text="7" OnClick="Button1_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="cellCss" runat="server">
                        <asp:Button ID="Button6" CssClass="but" runat="server" Text="8" OnClick="Button1_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="cellCss" runat="server">
                        <asp:Button ID="Button7" CssClass="but" runat="server" Text="9" OnClick="Button1_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="cellCss" runat="server">
                        <asp:Button ID="Button3" runat="server" CssClass="butSign" Text="/" OnClick="Button3_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="cellCss" runat="server" RowSpan="2">
                        <asp:Button ID="Button4" runat="server" CssClass="btnBig" Text="←"  Onclick="Button6_Click"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="rowCss" runat="server" HorizontalAlign="Center">
                    <asp:TableCell CssClass="cellCss" runat="server">
                        <asp:Button ID="Button9" CssClass="but" runat="server" Text="4" OnClick="Button1_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="cellCss" runat="server">
                        <asp:Button ID="Button10" CssClass="but" runat="server" Text="5" OnClick="Button1_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="cellCss" runat="server">
                        <asp:Button ID="Button11" CssClass="but" runat="server" Text="6" OnClick="Button1_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="cellCss" runat="server">
                        <asp:Button ID="Button2" runat="server" CssClass="butSign" Text="×" OnClick="Button3_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="rowCss" runat="server" HorizontalAlign="Center">
                    <asp:TableCell CssClass="cellCss" runat="server">
                        <asp:Button ID="Button13" CssClass="but" runat="server" Text="1" OnClick="Button1_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="cellCss" runat="server">
                        <asp:Button ID="Button14" CssClass="but" runat="server" Text="2" OnClick="Button1_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="cellCss" runat="server">
                        <asp:Button ID="Button15" CssClass="but" runat="server" Text="3" OnClick="Button1_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="cellCss" runat="server">
                        <asp:Button ID="Button12" CssClass="butSign" runat="server" Text="-" OnClick="Button3_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="cellCss" runat="server" RowSpan="2">
                        <asp:Button ID="Button20" CssClass="btnBig" runat="server" Text="="  OnClick="Button4_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="rowCss" runat="server" HorizontalAlign="Center">
                    <asp:TableCell CssClass="cellCss" runat="server" ColumnSpan="2">
                        <asp:Button ID="Button17" CssClass="but0" runat="server" Text="0" OnClick="Button1_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="cellCss" runat="server">
                        <asp:Button ID="Button18" CssClass="but" runat="server" Text="." OnClick="Button2_Click" />
                    </asp:TableCell>
                    <asp:TableCell CssClass="cellCss" runat="server">
                        <asp:Button ID="Button8" CssClass="butSign" runat="server" Text="+" OnClick="Button3_Click" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
        </div>
    </form>
</body>
</html>
