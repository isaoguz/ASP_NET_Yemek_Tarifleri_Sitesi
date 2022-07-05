<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.KategoriAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            color: #3399FF;
            font-size: large;
            font-weight: bold;
        }
        .auto-style13 {
            text-align: right;
            width: 176px;
        }
        .auto-style14 {
            width: 176px;
        }
        .auto-style15 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">KATEGORİ AD : </td>
            <td class="auto-style15">
                <asp:TextBox ID="TxtAd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">ADET : </td>
            <td class="auto-style15">
                <asp:TextBox ID="TxtAdet" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">RESİM : </td>
            <td class="auto-style15">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td><strong><em>
                <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style12" Height="37px" OnClick="BtnGuncelle_Click" Text="Güncelle" Width="118px" />
                </em></strong></td>
        </tr>
    </table>
</asp:Content>
