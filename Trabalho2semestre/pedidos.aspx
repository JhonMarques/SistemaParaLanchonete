<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pedidos.aspx.cs" Inherits="pedidos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style24 {
            font-size: x-large;
            width: 13%;
            height: 460px;
            background-color: #FFFFFF;
        }
    .auto-style28 {
        text-align: center;
        width: 1057px;
        margin-left: 0;
        margin-bottom: 0px;
    }
    .auto-style29 {
        margin-left: 0px;
        font-size: medium;
        font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
        background-color: #FFFF66;
    }
    .auto-style30 {
        vertical-align:top;
        background-color: #FFFF99;
    }
    .auto-style31 {
        width: 106%;
        height: 793px;
        background-color: #FFFF99;
    }
    .auto-style32 {
        background-color: #FFFF66;
    }
    .auto-style33 {
        font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
    }
        .auto-style34 {
            vertical-align:top;
            height: 685px;
        }
    .auto-style35 {
        vertical-align: top;
        height: 685px;
        width: 282px;
    }
    .auto-style36 {
        width: 282px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="auto-style31">
    <tr>
        <td class="auto-style30">
            <strong>PEDIDOS</strong><br class="auto-style32" />
            <table align="center" cellpadding="0" cellspacing="0" class="nav-justified">
                <tr>
                    <td class="auto-style33">&nbsp;</td>
                </tr>
            </table>
            <table align="center" cellpadding="0" cellspacing="0" class="nav-justified">
                <tr>
                    <td class="auto-style35"></td>
                    <td class="auto-style34">
                        <div>
            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" CssClass="auto-style29" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="113px" Width="804px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="  ID" InsertVisible="False" ReadOnly="True" SortExpression="id" >
                    <FooterStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="cliente" HeaderText="Cliente" SortExpression="cliente" />
                    <asp:BoundField DataField="mesa" HeaderText="Mesa" SortExpression="mesa" />
                    <asp:BoundField DataField="valor" HeaderText="Valor" SortExpression="valor" DataFormatString="{0:C2}" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
                        </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PRODUTOSConnectionString %>" SelectCommand="SELECT Pedido.id, Pedido.cliente, Pedido.mesa, Vendas.valor, Pedido.status FROM Pedido INNER JOIN Vendas ON Pedido.id = Vendas.idPedido" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style34"></td>
                </tr>
                <tr>
                    <td class="auto-style36">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br class="auto-style32" />
        </td>
    </tr>
</table>
</asp:Content>

