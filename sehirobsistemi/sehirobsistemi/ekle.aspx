<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="ekle.aspx.cs" Inherits="sehirobsistemi.ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 198px;
        text-align: right;
    }
    .auto-style3 {
        width: 198px;
        height: 21px;
        text-align: right;
    }
    .auto-style4 {
        height: 21px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="uicerik">


        <table class="auto-style1">
            <tr>
                <td class="auto-style3">ÜYE OL</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">KULLANICI İSİM:</td>
                <td>
                    <asp:TextBox ID="txt1" runat="server" MaxLength="49" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">KULLANICI E-MAİL:</td>
                <td>
                    <asp:TextBox ID="txt2" runat="server" MaxLength="49" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">KULLANICI TELEFON:</td>
                <td>
                    <asp:TextBox ID="txt3" runat="server" MaxLength="11" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">KULLANICI ADRES:</td>
                <td>
                    <asp:TextBox ID="txt4" runat="server" Height="150px" MaxLength="249" Width="250px"></asp:TextBox>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [kullanici]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btn1" runat="server" Text="üye ol" Width="250px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lbltxt" runat="server" Width="250px"></asp:Label>
                </td>
            </tr>
        </table>


    </div>
</asp:Content>
