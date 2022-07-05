<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            background-color: #CCCCCC;
        }
        .auto-style12 {
            font-size: medium;
        }
    .auto-style14 {
        font-size: medium;
        width: 426px;
    }
    .auto-style15 {
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11">
        <table class="auto-style19">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="50px"  Text="+" Width="50px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style17" Height="50px" Text="-" Width="50px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style11">&nbsp;<span class="auto-style12">ONAYLANAN YORUM&nbsp; LİSTESİ</span></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    <asp:Panel runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style14">
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style15">
                          <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>">  <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/icon/068-readonly_file-text-document-eye-view-512_105627.png" Width="50px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

    </asp:Panel>
</asp:Content>
