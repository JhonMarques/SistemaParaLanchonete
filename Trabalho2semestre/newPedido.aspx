<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newPedido.aspx.cs" Inherits="newPedido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style29 {
            width: 105%;
            height: 601px;
        }
        .auto-style30 {
             vertical-align:top;
             background-color: #FFFF99;
        }
        .auto-style31 {
            width: 400px;
            background-color: #FFFF99;
        }
        .auto-style32 {
            margin-left: 0px;
        }
        .auto-style33 {
            width: 50%;
            font-size: x-large;
        }
        .auto-style34 {
            width: 33px;
        }
        .auto-style35 {
        font-size: x-large;
        text-align: left;
    }
    .auto-style36 {
        height: 767px;
        margin-right: 36;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style36">
        <table align="center" cellpadding="0" cellspacing="0" class="auto-style29">
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">
                    <table align="center" cellpadding="0" cellspacing="0" class="nav-justified">
                        <tr>
                            <td class="auto-style35"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NOVO PEDIDO</strong></td>
                        </tr>
                    </table>
                    <br />
                    <asp:GridView ID="GridView3" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Height="129px" Width="650px" CssClass="auto-style32">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="produto" HeaderText="Item" SortExpression="produto" />
                            <asp:BoundField DataField="cliente" HeaderText="Cliente" SortExpression="cliente" />
                            <asp:BoundField DataField="mesa" HeaderText="Mesa" SortExpression="mesa" />
                            <asp:BoundField DataField="qtd" HeaderText="Qtd" SortExpression="qtd" />
                            <asp:BoundField DataField="valor" HeaderText="Valor" SortExpression="valor" DataFormatString="{0:C2} " />
                            <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" />
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
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PRODUTOSConnectionString %>" SelectCommand="SELECT Pedido.id, Produto.produto, Pedido.cliente, Pedido.mesa, Produto.qtd, Produto.valor, Pedido.status, Pedido.total FROM Pedido INNER JOIN Produto ON Pedido.id_produto = Produto.id INNER JOIN Vendas ON Pedido.id = Vendas.idPedido"></asp:SqlDataSource>
                    <br />
                    <br />
                    <table cellpadding="0" cellspacing="0" class="auto-style33">
                        <tr>
                            <td class="text-right">ID:</td>
                            <td class="auto-style34">&nbsp;</td>
                            <td class="text-left">
                                <asp:TextBox ID="idPed" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style34">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-right">Item:</td>
                            <td class="auto-style34">&nbsp;</td>
                            <td class="text-left">
                                <asp:TextBox ID="itemPed" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style34">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-right">Qtde:</td>
                            <td class="auto-style34">&nbsp;</td>
                            <td class="text-left">
                                <asp:TextBox ID="QtdePed" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style34">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-right">Mesa:</td>
                            <td class="auto-style34">&nbsp;</td>
                            <td class="text-left">
                                <asp:TextBox ID="mesaPed" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style34">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-right">Cliente:</td>
                            <td class="auto-style34">&nbsp;</td>
                            <td class="text-left">
                                <asp:TextBox ID="clienPed" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style34">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-right">
                                <asp:Button ID="btnInserePed" runat="server" Text="Inserir" />
                            </td>
                            <td class="auto-style34">&nbsp;</td>
                            <td class="text-left">
                                <asp:Button ID="btnCancelPed" runat="server" Text="Cancelar" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style34">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style34">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style34">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <siteMapNode url="pedidos.aspx" title="PEDIDOS"  description="">
    </p>
</asp:Content>

