<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TablePaginater.aspx.vb" Inherits="DBCrud.TablePaginater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Consulta de Clintes</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body class="container mt-4">
    <form id="form1" runat="server">
        <!-- Adiciona a classe table-responsive para barra de rolagem -->
        <header class="bg-light p-4 mb-3 border-bottom text-center">
            <h1 class="mb-0 display-4 text-dark">Consulta de Clientes</h1>
            <p class="text-muted">Visualize as informações detalhadas de clientes cadastrados</p>
        </header>
        <main class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-hover" AutoGenerateColumns="True" AllowSorting="True" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Height="1200px" HorizontalAlign="Center" Width="1500px">
                <AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <Columns>
                    <asp:BoundField DataField="id_empresa" HeaderText="ID Empresa" HtmlEncode="False" />
                    <asp:BoundField DataField="razao_social" HeaderText="Razão Social" HtmlEncode="False" />
                    <asp:BoundField DataField="nome_fantasia" HeaderText="Nome Fantasia" HtmlEncode="False" />
                    <asp:BoundField DataField="cnpj" HeaderText="CNPJ" HtmlEncode="False" />
                    <asp:BoundField DataField="endereco" HeaderText="Endereço" HtmlEncode="False" />
                    <asp:BoundField DataField="bairro" HeaderText="Bairro" HtmlEncode="False" />
                    <asp:BoundField DataField="cep" HeaderText="CEP" HtmlEncode="False" />
                    <asp:BoundField DataField="cidade" HeaderText="Cidade" HtmlEncode="False" />
                    <asp:BoundField DataField="uf" HeaderText="UF" HtmlEncode="False" />
                    <asp:BoundField DataField="e_mail" HeaderText="Email" HtmlEncode="False" />
                    <asp:BoundField DataField="telefone" HeaderText="Telefone" HtmlEncode="False" />
                    <asp:BoundField DataField="fax" HeaderText="Fax" HtmlEncode="False" />
                    <asp:BoundField DataField="representante" HeaderText="Representante" HtmlEncode="False" />
                    <asp:BoundField DataField="observacao" HeaderText="Observação" HtmlEncode="False" />
                    <asp:BoundField DataField="apelido" HeaderText="Apelido" HtmlEncode="False" />
                    <asp:BoundField DataField="operacional" HeaderText="Operacional" HtmlEncode="False" />
                    <asp:BoundField DataField="tipo_tributacao" HeaderText="Tipo Tributação" HtmlEncode="False" />
                    <asp:BoundField DataField="verifica_extrato" HeaderText="Verifica Extrato" HtmlEncode="False" />
                    <asp:BoundField DataField="codigo_transmissao" HeaderText="Código Transmissão" HtmlEncode="False" />
                    <asp:BoundField DataField="cancelado" HeaderText="Cancelado" HtmlEncode="False" />
                    <asp:BoundField DataField="caminho_arquivo_contas_pagar" HeaderText="Caminho Contas Pagar" HtmlEncode="False" />
                    <asp:BoundField DataField="caminho_arquivo_contas_receber" HeaderText="Caminho Contas Receber" HtmlEncode="False" />
                    <asp:BoundField DataField="nome_arquivo_contas_pagar" HeaderText="Arquivo Contas Pagar" HtmlEncode="False" />
                    <asp:BoundField DataField="nome_arquivo_contas_receber" HeaderText="Arquivo Contas Receber" HtmlEncode="False" />
                    <asp:BoundField DataField="matriz" HeaderText="Matriz" HtmlEncode="False" />
                    <asp:BoundField DataField="email_cobranca" HeaderText="Email Cobrança" HtmlEncode="False" />
                    <asp:BoundField DataField="nome_logo" HeaderText="Nome Logo" HtmlEncode="False" />
                </Columns>
                <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
            <!-- Navegação de paginação -->
            <div class="mt-3">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="40" PagedControlID="GridView1" CssClass="data-pager">
                    <Fields>
                        <asp:TemplatePagerField>
                        </asp:TemplatePagerField>
                        <asp:NextPreviousPagerField />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField />
                    </Fields>
                </asp:DataPager>
            </div>
        </main>
    </form>

    <!-- Inclua o JavaScript do Bootstrap 5 -->
    <!--Jquery-->
    <script src="scripts/jquery-3.7.0.min.js"></script>
    <!--JavaScript Bootstrap-->
    <script src="scripts/bootstrap.js"></script>
</body>
</html>
