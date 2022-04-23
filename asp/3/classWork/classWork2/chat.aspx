<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chat.aspx.cs" Inherits="classWork2.chat" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>聊天室</title>
    <link href="static/css/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
           <div class="list">
               <div class="message">
                   <%
                       ArrayList MessageList = new ArrayList();
                       if (Application["MessageList"] != null) {
                           MessageList = (ArrayList)Application["MessageList"];
                           foreach (var item in MessageList) {
                                Response.Write(item + "<br>");
                           }
                       }
                   %>
               </div>
               <div class="user">
                   <%
                       ArrayList UserList = new ArrayList();
                       if (Application["UserList"] != null) {
                            UserList = (ArrayList)Application["UserList"];                          
                            foreach (var item in UserList) {
                                Response.Write(item + "<br>");
                            }
                       }
                    %>
               </div>
           </div>
            <div class="send">
                <div class="control">
                    输入：<asp:TextBox ID="txtMessage" CssClass="input" runat="server" Height="45px"></asp:TextBox>
                </div>
                <div class="control">
                    <asp:Button runat="server" ID="btnSend" CssClass="btn" OnClick="BtnSend_Click" Text="发 送"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
