<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style9 {
            width: 100%;
        }
        .auto-style11 {
            color: #3399FF;
            font-size: large;
            font-weight: bold;
            font-style: italic;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style9">
            <tr>
                <td class="auto-style14">Tarif Ad : </td>
                <td>
                    <asp:TextBox ID="Txttarifad" runat="server" Width="300px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Tarif Malzemeler : </td>
                <td>
                    <asp:TextBox ID="txtmalzeme" runat="server" Width="301px" Height="217px" TextMode="MultiLine"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Yapılış : </td>
                <td>
                    <asp:TextBox ID="txtyapilis" runat="server" Height="274px" TextMode="MultiLine" Width="303px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td>Resim : </td>
                <td>
                    <asp:FileUpload ID="fileresim" runat="server" Width="300px" />
                </td>
            </tr>
            <tr>
                <td>Tarif Öneren : </td>
                <td>
                    <asp:TextBox ID="tarifoneren" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Öneren Mail : </td>
                <td>
                    <asp:TextBox ID="onerenmail" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori : </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong><em>
                    <asp:Button ID="BtnOnayla0" runat="server" CssClass="auto-style11" Height="37px" OnClick="BtnOnayla_Click" Text="Onayla" Width="177px" />
                    </em></strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
