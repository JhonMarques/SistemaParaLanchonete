<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vendas.aspx.cs" Inherits="vendas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style30 {
        vertical-align:top;
        background-color: #FFFF99;
        width: 1458px;
        height: 710px;
    }
        .auto-style31 {
            width: 113%;
            height: 793px;
            margin-bottom: 0px;
        background-color: #FFFFCC;
    }
        .auto-style32 {
            background-color: #FFFFCC;
        }
    .auto-style33 {
        font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
            text-align: center;
        }
    .auto-style35 {
        width: 50%;
    }
    .auto-style36 {
        font-size: x-large;
        font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
        width: 245px;
    }
    .auto-style37 {
        width: 245px;
    }
    .auto-style38 {
        width: 100%;
        background-color: #FFFF99;
    }
    .auto-style39 {
        background-color: #FFFFCC;
        height: 710px;
    }
        .auto-style43 {
            font-size: medium;
        }
        .auto-style44 {
            width: 390px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table align="center" cellpadding="0" cellspacing="0" class="auto-style31">
        <tr>
            <td class="auto-style39"></td>
            <td class="auto-style30">
                <table align="center" cellpadding="0" cellspacing="0" class="auto-style38">
                    <tr>
                        <td class="auto-style33"><strong><span class="auto-style27">Vendas Efetuadas</span></strong></td>
                    </tr>
                </table>
                <br />
                <table align="center" cellpadding="0" cellspacing="0" class="nav-justified">
                    <tr>
                        <td class="auto-style44">&nbsp;</td>
                        <td class="text-left">
                            <br />
                            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style43" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="541px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="cliente" HeaderText="cliente" SortExpression="cliente" />
                                    <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor" />
                                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
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
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style44">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PRODUTOSConnectionString %>" DeleteCommand="DELETE FROM [Vendas] WHERE [id] = @id" InsertCommand="INSERT INTO [Vendas] ([valor], [idPedido]) VALUES (@valor, @idPedido)" SelectCommand="SELECT Vendas.id, Pedido.cliente, Vendas.valor, Vendas.status FROM Vendas INNER JOIN Pedido ON Vendas.idPedido = Pedido.id" UpdateCommand="UPDATE [Vendas] SET [valor] = @valor, [idPedido] = @idPedido WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="valor" Type="Single" />
                        <asp:Parameter Name="idPedido" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="valor" Type="Single" />
                        <asp:Parameter Name="idPedido" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <table align="center" cellpadding="0" cellspacing="0" class="auto-style35">
                    <tr>
                        <td class="auto-style37">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style36"><strong>TOTAL:</strong></td>
                        <td class="text-left">
                            <asp:TextBox ID="txTot" runat="server" CssClass="auto-style27" Width="296px" OnTextChanged="txTot_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style39"></td>
        </tr>
    </table>
    <br class="auto-style32" />
</p>
</asp:Content>

