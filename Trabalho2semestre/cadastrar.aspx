<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cadastrar.aspx.cs" Inherits="cadastrar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style7 {
        font-size: x-large;
        text-align: center;
    }
        .auto-style24 {
            font-size: x-large;
            width: 13%;
            height: 460px;
            text-align: center;
            background-color: #FFFFFF;
        }
    .auto-style28 {
        margin-left: 0px;
        background-color: #FFFFCC;
    }
    .auto-style29 {
        height: 353px;
    }
    .auto-style30 {
        height: 353px;
        width: 49px;
    }
    .auto-style31 {
        height: 353px;
        width: 1026px;
    }
    .auto-style32 {
        width: 55%;
    }
    .auto-style33 {
        width: 266px;
    }
    .auto-style34 {
        width: 16px;
    }
    .auto-style35 {
        width: 266px;
        text-align: right;
    }
    .auto-style36 {
        width: 32%;
    }
    .auto-style37 {
        width: 106%;
        background-color: #FFFF99;
        height: 657px;
    }
    .auto-style38 {
        width: 188px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="auto-style37">
    <tr>
        <td class="auto-style30"></td>
        <td class="auto-style31">
            
            <table align="center" cellpadding="0" cellspacing="0" class="auto-style32">
                <tr>
                    <td class="auto-style35">ID:</td>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="text-left">
                        <asp:TextBox ID="txtIdCad" runat="server" Width="85px" OnTextChanged="txtIdCad_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style35">&nbsp;</td>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="text-left">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style35">Item:</td>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="text-left">
                        <asp:TextBox ID="txtDesCad" runat="server" Width="269px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style34">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style35">Valor:</td>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="text-left">
                        <asp:TextBox ID="txtValCad" runat="server" Width="218px">R$ </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style34">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style35">Qtde:</td>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="text-left">
                        <asp:TextBox ID="txtQtdCad" runat="server" Width="105px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style34">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table align="center" cellpadding="0" cellspacing="0" class="auto-style36">
                <tr>
                    <td class="auto-style38">
                        <asp:Button ID="btnInserir" runat="server" Text="Inserir" />
                    </td>
                    <td>
                        <asp:Button ID="btnCancelaCad" runat="server" Text="Cancelar" />
                    </td>
                </tr>
            </table>
        </td>
        <td class="auto-style29"></td>
    </tr>
</table>
&nbsp;
</asp:Content>

