<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            font-size: x-large;
            color: #FF9900;
        }
        .auto-style10 {
            font-weight: normal;
        }
        .auto-style11 {
            color: #FFFFFF;
        }
        .auto-style12 {
            font-weight: normal;
            height: 32px;
        }
        .auto-style13 {
            font-weight: normal;
            text-align: left;
        }
        .auto-style14 {
            font-weight: normal;
            height: 30px;
        }
        .auto-style15 {
            text-align: center;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style15">
                            <a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>"><asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAd") %>'></asp:Label></a>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><span class="auto-style11">&nbsp;</span><strong><span class="auto-style11">Malzemeler :</span> </strong>&nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;<span class="auto-style11"><strong>Yemek Tarifi :</strong></span>&nbsp;
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14"><span class="auto-style11">&nbsp;<strong>Tarih :</strong></span>&nbsp;
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            &nbsp;&nbsp;<span class="auto-style11"> <strong>Puan : </strong>&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style12" style="border-bottom-style: dashed; border-bottom-width: medium; border-bottom-color: #666666"></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
