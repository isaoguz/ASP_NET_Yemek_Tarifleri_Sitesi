<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 39px;
        }
        .auto-style7 {
            color: #FFFFFF;
        }
    .auto-style8 {
        color: #FFFFFF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" style="text-align: center" Width="450px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" style="font-size: x-large" Text='<%# Eval("YemekAd") %>' CssClass="auto-style8"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style8">Malzemeler :</span> &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>' style="color: #000000"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style8">Tarif : &nbsp; </span>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image1" runat="server" Height="154px" Width="388px" ImageUrl='<%# Eval("YemekResim") %>' />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center"><span class="auto-style8">Puan : </span>&nbsp;<asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        &nbsp;&nbsp; <span class="auto-style8">Tarih : </span>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
