<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
    .auto-style1 {
        text-align: center;
        width:1248px;
        height:500px;
        margin:auto;
        text-align:center;
        background-color:aquamarine;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wecontent" class="auto-style1"> 
        <div>
            <asp:Label ID="time" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
</asp:Content>

