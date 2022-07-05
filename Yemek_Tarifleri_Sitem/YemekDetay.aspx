<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            color: #FF9900;
            font-size: x-large;
            background-color: #FFFFFF;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style11 {
            font-size: medium;
            color: #FFFFFF;
        }
        .auto-style12 {
            text-align: center;
            color: #FFFFFF;
            background-color: #FFCC66;
        }
    .auto-style13 {
        font-weight: bold;
        background-color: #FFFF99;
    }
    .auto-style14 {
        color: #333333;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Label" CssClass="auto-style8"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server" Width="449px">
        <ItemTemplate>
            <table class="auto-style9">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style10" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #FFFFFF">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorum") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div class="auto-style12">
        <br />
        YORUM YAPMA PANELİ<br />
        <br />
    </div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style9">
            <tr>
                <td class="auto-style14">Ad Soyad : </td>
                <td>
                    <asp:TextBox ID="TxtAdSoyad" runat="server" Width="200px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Mail : </td>
                <td>
                    <asp:TextBox ID="TxtMail" runat="server" Width="200px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Yorumunuz : </td>
                <td>
                    <asp:TextBox ID="TxtYorum" runat="server" Height="84px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnYorum" runat="server" CssClass="auto-style13" Height="37px" OnClick="BtnYorum_Click" Text="Yorum Yap" Width="135px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
