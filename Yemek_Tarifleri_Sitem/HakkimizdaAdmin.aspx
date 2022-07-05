<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.HakkimizdaAdmin" %>
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
        width: 100%;
    }
    .auto-style21 {
        color: #3399FF;
        font-size: large;
        font-weight: bold;
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
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style17" Height="50px" Text="-" Width="50px" OnClick="Button2_Click"  />
                    </strong></td>
                <td class="auto-style16">HAKKIMIZDA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style20">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="300px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style21" Height="39px" Text="GÜNCELLE" Width="435px" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
