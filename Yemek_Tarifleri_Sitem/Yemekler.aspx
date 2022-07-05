<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            color: #FFFFFF;
            background-color: #FFFF66;
            text-align: left;
        }
    .auto-style12 {
        width: 100%;
    }
    .auto-style13 {
        text-align: right;
    }
    .auto-style14 {
        text-align: left;
    }
    .auto-style15 {
        color: #FFFFFF;
        font-size: large;
    }
        .auto-style16 {
            text-align: left;
            color: #000000;
            background-color: #CCCCCC;
        }
        .auto-style17 {
            font-size: x-large;
        }
        .auto-style18 {
            text-align: left;
            background-color: #CCCCCC;
        }
        .auto-style19 {
            width: 100%;
            background-color: #CCCCCC;
        }
        .auto-style20 {
            background-color: #CCCCCC;
        }
        .auto-style22 {
            font-weight: bold;
            font-style: italic;
            color: #0099FF;
            font-size: large;
            background-color: #FFFFFF;
        }
        .auto-style23 {
            width: 186px;
        }
        .auto-style24 {
            color: #FFFFFF;
            width: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11">
            <table class="auto-style19">
                <tr>
                    <td class="auto-style18"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="50px" Text="+" Width="50px" OnClick="Button1_Click" />
                        </strong></td>
                    <td class="auto-style18"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style17" Height="50px" Text="-" Width="50px" OnClick="Button2_Click"  />
                        </strong></td>
                    <td class="auto-style16">YEMEK&nbsp; LİSTESİ</td>
                </tr>
            </table>
            
        </asp:Panel>
    </div>
    <asp:Panel ID="Panel2" runat="server">
    <asp:Panel runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style12">
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style5">
                            <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icon/remove-icon-png-26.png" Width="30px"  /></a>
                        </td>
                        <td class="auto-style13">
                            <a href="YemekDuzenle.aspx?Yemekid=<%# Eval("Yemekid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/icon-for-update-15.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel></asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style20" style ="margin-top:15px;">
    <table class="auto-style12">
        <tr>
            <td class="auto-style14"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style17" Height="50px" Text="+" Width="50px" OnClick="Button3_Click"   />
                        </strong></td>
            <td class="auto-style14"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style17" Height="50px" Text="-" Width="50px" OnClick="Button4_Click"   />
                        </strong></td>
            <td>YEMEK EKLE</td>
        </tr>
    </table></asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style12">
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">YEMEK AD :</td>
                <td>
                    <asp:TextBox ID="TxtAd" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">MALZEMELER : </td>
                <td>
                    <asp:TextBox ID="TxtMalzeme" runat="server" Height="208px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">TARİF : </td>
                <td>
                    <asp:TextBox ID="TxtTarif" runat="server" Height="182px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">KATEGORİ : </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="260px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">RESİM : </td>
                <td class="auto-style5">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="255px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style5"><strong><em>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style22" Height="38px" OnClick="BtnEkle_Click" Text="Ekle" Width="96px" />
                    </em></strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
