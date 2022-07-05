<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Yorumlar" %>
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
        .auto-style12 {
        width: 100%;
    }
    .auto-style15 {
        color: #FFFFFF;
        font-size: large;
    }
        .auto-style20 {
            font-size: medium;
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
                <td class="auto-style16">&nbsp;<span class="auto-style20">ONAYLANAN YORUM&nbsp; LİSTESİ</span></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    <asp:Panel runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style12">
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style5">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icon/remove-icon-png-26.png" Width="30px" />
                        </td>
                        <td class="auto-style13">
                           <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/icon-for-update-15.jpg" Width="30px" />
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
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style17" Height="50px" Text="+" Width="50px" OnClick="Button3_Click1"    />
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style17" Height="50px" Text="-" Width="50px" OnClick="Button4_Click1"    />
                    </strong></td>
                <td class="auto-style16">&nbsp;<span class="auto-style20">ONAYSIZ YORUM&nbsp; LİSTESİ</span></td>
            </tr>
        </table>
    </asp:Panel>
    <div>
        <asp:Panel ID="Panel4" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="449px">
                <ItemTemplate>
                    <table class="auto-style12">
                        <tr>
                            <td class="auto-style14">
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style15" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td class="auto-style5">
                                <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/icon/remove-icon-png-26.png" Width="30px" />
                            </td>
                            <td class="auto-style13">
                                <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/icon/icon-for-update-15.jpg" Width="30px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </div>
    </asp:Content>
