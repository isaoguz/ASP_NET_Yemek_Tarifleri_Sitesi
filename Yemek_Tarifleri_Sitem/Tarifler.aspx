<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            background-color: #CCCCCC;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            width: 395px;
            text-align: left;
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
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style17" Height="50px"  Text="-" Width="50px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style11">&nbsp;<span class="auto-style12">ONAYSIZ TARİF LİSTESİ</span></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    <asp:Panel runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style14">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style12">
                          <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>" ><asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/icon/068-readonly_file-text-document-eye-view-512_105627.png" Width="50px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style11">
        <table class="auto-style19">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style17" Height="50px"  Text="+" Width="50px" OnClick="Button3_Click"/>
                    </strong></td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style17" Height="50px"  Text="-" Width="50px" OnClick="Button4_Click"  />
                    </strong></td>
                <td class="auto-style11">&nbsp;ONAYLI<span class="auto-style12"> TARİF LİSTESİ</span></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
    <asp:Panel runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style14">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style12">
                          <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>" ><asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/icon/068-readonly_file-text-document-eye-view-512_105627.png" Width="50px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

    </asp:Panel>
</asp:Content>
