<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style11 {
            color: #FFFFFF;
            background-color: #FFFF66;
            text-align: left;
        }
        .auto-style19 {
            width: 100%;
            background-color: #CCCCCC;
        }
        .auto-style17 {
            font-size: x-large;
        }
        .auto-style20 {
            width: 348px;
        }
        .auto-style21 {
            width: 427px;
        }
        .auto-style22 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11">
        <table class="auto-style19">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="50px" Text="+" Width="50px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style17" Height="50px" Text="-" Width="50px" OnClick="Button2_Click"   />
                    </strong></td>
                <td class="auto-style16">YEMEK&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    <asp:Panel runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style21">
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style22">
                            <a href="YemekDuzenle.aspx?Yemekid=<%# Eval("Yemekid") %>"><asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/icon/256-2562682_insert-a-_blank_-from-the-cutout-list-to-push-cutouts-choose-image.png" Width="50px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel></asp:Panel>
</asp:Content>
