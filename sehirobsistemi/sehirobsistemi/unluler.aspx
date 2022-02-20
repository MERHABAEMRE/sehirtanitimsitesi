<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="unluler.aspx.cs" Inherits="sehirobsistemi.unluler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Repeater ID="Repeater2" runat="server">
    <ItemTemplate>
<div class="ana" style="height:500px;">
    <div style="float:left; width:200px; height:200px;">
        <img src='<%# "/unluresim/" + Eval("unlu_resim") %>' width:"100" , height:"100" />
        
    </div>

        <div style="float:left;margin-left:15px;margin-top:100px;">
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("unlu_isim")%>'></asp:Label><br />
            <p>'<%# Eval("unlu_aciklama") %>' </p>
            
        </div>
    </div>
        </ItemTemplate>
       </asp:Repeater>
</asp:Content>
