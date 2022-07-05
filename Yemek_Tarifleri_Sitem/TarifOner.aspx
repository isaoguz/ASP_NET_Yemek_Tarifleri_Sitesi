<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        text-align: left;
    }
    .auto-style8 {
            text-align: left;
            color: #CCFFFF;
        }
        .auto-style9 {
            color: #FF6600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">Tarif&nbsp; Ad : </td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Malzemeler : </td>
        <td>
            <asp:TextBox ID="TxtMalzeme" runat="server" Height="183px" TextMode="MultiLine" Width="205px" CssClass="tb5"></asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Yapılış : </td>
        <td>
            <asp:TextBox ID="TxtYapilis" runat="server" Height="183px" TextMode="MultiLine" Width="205px" CssClass="tb5"></asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Resim : </td>
        <td>
            <asp:FileUpload ID="FileResimYukle" runat="server" Width="258px" CssClass="tb5" />
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Tarif Öneren</td>
        <td>
            <asp:TextBox ID="TxtTarifOneren" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Mail Adresi : </td>
        <td>
            <asp:TextBox ID="TxtMailAdresi" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="BtnTarifOner" runat="server" Height="35px" style="font-weight: 700; background-color: #FFFF66" Text="Tarif Öner" Width="212px" CssClass="auto-style9" OnClick="BtnTarifOner_Click" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
