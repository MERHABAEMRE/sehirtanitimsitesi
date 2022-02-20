<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="yiyecekler.aspx.cs" Inherits="sehirobsistemi.yiyecekler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Repeater ID="Repeater4" runat="server">
    <ItemTemplate>
<div class="ana" style="height:800px;">
    <div style="float:left; width:400px; height:450px;">
        <img src='<%# "/yiyecekler/" + Eval("urun_resim") %>' width:"100px" , height:"100px" />
        
    </div>

        <div style="float:left;margin-left:15px;margin-top:200px;">
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("urun_isim")%>'></asp:Label><br />
            <p>'<%# Eval("urun_aciklama") %>' </p><br />
            <h3>ÜRÜN PUANI</h3><br />
            <p>'<%# Eval("urun_puan") %>' </p><br />
        </div>
    </div>
        </ItemTemplate>
       </asp:Repeater>
</asp:Content>
