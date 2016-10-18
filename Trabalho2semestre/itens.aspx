<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="itens.aspx.cs" Inherits="itens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style29 {
        height: 43px;
        font-size: x-large;
        background-color: #FFFF99;
        text-align: left;
    }
    .auto-style30 {
        width: 101%;
        height: 598px;
        background-color: #FFFF99;
    }
    .auto-style31 {
        width: 301px;
        height: 43px;
        background-color: #FFFF99;
        text-align: left;
    }
    .auto-style32 {
        vertical-align:top;
        width: 301px;
    }
        .auto-style33 {
            width: 100%;
            height: 435px;
        }
        .auto-style34 {
            height: 50px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="auto-style30">
    <tr>
        <td class="auto-style31"></td>
        <td class="auto-style29"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cardápio</strong></td>
    </tr>
    <tr>
        <td class="auto-style32">&nbsp;</td>
        <td>
            <table align="center" cellpadding="0" cellspacing="0" class="auto-style33">
                <tr>
                    <td class="auto-style34">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="86px" Width="566px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="produto" HeaderText="Produto" SortExpression="produto" />
                    <asp:BoundField DataField="valor" DataFormatString="{0:C2}" HeaderText="Valor" SortExpression="valor" />
                    <asp:BoundField DataField="qtd" HeaderText="Qtde" SortExpression="qtd" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PRODUTOSConnectionString %>" SelectCommand="SELECT * FROM [Produto]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

