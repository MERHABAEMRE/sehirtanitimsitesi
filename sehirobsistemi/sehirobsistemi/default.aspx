<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sehirobsistemi._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <asp:Repeater ID="Repeater3" runat="server">
    <ItemTemplate>
<div class="ana" style="height:500px;">
    <div style="float:left; width:200px; height:200px;">
        <img src='<%# "/model/" + Eval("yerler_resim") %>' width:"100" , height:"100" />
        
    </div>

        <div style="float:left;margin-left:15px;margin-top:100px;">
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("yerler_isim")%>'></asp:Label><br />
            <p>'<%# Eval("yerler_aciklama") %>' </p>
            <p>'<%# Eval("yerler_puan") %>' </p>
        </div>
    </div>
        </ItemTemplate>
       </asp:Repeater>
</asp:Content>
