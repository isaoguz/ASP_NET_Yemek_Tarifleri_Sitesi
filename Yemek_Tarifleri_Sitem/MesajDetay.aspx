<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            height: 31px;
        }
        .auto-style13 {
            height: 31px;
            text-align: center;
            width: 132px;
        }
        .auto-style14 {
            width: 132px;
        }
        .auto-style15 {
            text-align: center;
            width: 132px;
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
            <td class="auto-style15">Mesaj Gönderen : </td>
            <td>
                <asp:TextBox ID="txtgonderen" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Başlık : </td>
            <td>
                <asp:TextBox ID="txtbaslik" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Mail Adresi : </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtmail" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Mesaj İçerik : </td>
            <td>
                <asp:TextBox ID="txticerik" runat="server" Height="358px" TextMode="MultiLine" Width="301px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
