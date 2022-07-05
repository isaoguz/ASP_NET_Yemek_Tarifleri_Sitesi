<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            color: #3399FF;
            font-size: large;
            font-weight: bold;
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
            <td>Ad Soyad :</td>
            <td>&nbsp;<asp:TextBox ID="Txtadsoyad" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mail Adresi : </td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Yorum : </td>
            <td>
                <asp:TextBox ID="Txticerik" runat="server" Height="281px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Yemek : </td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="43px" Text="Onayla" Width="120px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
