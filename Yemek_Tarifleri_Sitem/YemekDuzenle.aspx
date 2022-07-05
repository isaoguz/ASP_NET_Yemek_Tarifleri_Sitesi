<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            color: #FFFFFF;
        }
        .auto-style13 {
            font-weight: bold;
            color: #3399FF;
            font-size: large;
            background-color: #FFFFFF;
        }
        .auto-style14 {
            color: #0099FF;
            font-weight: bold;
            font-size: large;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">YEMEK AD : </td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">YEMEK MALZEME :</td>
            <td>
                <asp:TextBox ID="TxtMalzeme" runat="server" Height="141px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">YEMEK TARİF : </td>
            <td>
                <asp:TextBox ID="TxtTarif" runat="server" Height="275px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">KATEGORİ : </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="300px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">YEMEK RESİM : </td>
            <td class="auto-style5">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5"><strong>
                <asp:Button ID="BtnDuzenle" runat="server" CssClass="auto-style13" Height="31px" Text="Güncelle" Width="250px" OnClick="BtnDuzenle_Click" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5"><strong><em>
                <asp:Button ID="GununYemegi" runat="server" CssClass="auto-style14" Height="36px" OnClick="GununYemegi_Click" Text="Günün Yemeği Yap" Width="250px" />
                </em></strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
