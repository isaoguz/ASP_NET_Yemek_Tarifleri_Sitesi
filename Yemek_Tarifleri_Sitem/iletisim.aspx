<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        width: 100%;
    }
    .auto-style9 {
        text-align: center;
        background-color: #FFFFFF;
    }
    .auto-style10 {
        color: #FF9900;
    }
    .auto-style11 {
        font-size: x-large;
    }
        .auto-style12 {
            color: #FF9900;
            font-weight: bold;
            background-color: #FFFF99;
        }
        .auto-style13 {
            border : 2px solid #456879;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style8">
    <tr>
        <td class="auto-style9" colspan="2"><span class="auto-style10">
            <br />
            <span class="auto-style11">MESAJ PANELİ</span></span><span class="auto-style11">
            <br />
            </span></td>
    </tr>
    <tr>
        <td>
            <br />
            Ad Soyad : </td>
        <td>
            <br />
            <asp:TextBox ID="TxtAd" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Mail Adresi :</td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Konu : </td>
        <td>
            <asp:TextBox ID="TxtKonu" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Mesaj : </td>
        <td>
            <asp:TextBox ID="TxtMesaj" runat="server" Width="198px" CssClass="auto-style13" Height="129px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <strong>
            <asp:Button ID="BtnGonder" runat="server" Height="43px" Text="Mesaj Gönder" Width="138px" CssClass="auto-style12" OnClick="Button1_Click" />
            </strong>
        </td>
    </tr>
</table>
</asp:Content>
