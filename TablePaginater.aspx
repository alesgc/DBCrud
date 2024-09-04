<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TablePaginater.aspx.vb" Inherits="DBCrud.TablePaginater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Consulta de Clintes</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style>
        .table-responsive-container {
            max-width: 1000px; /* Largura máxima da tabela */
            max-height: 900px; /* Altura máxima da tabela */
            overflow-y: auto; /* Barra de rolagem vertical */
            overflow-x: auto; /* Barra de rolagem horizontal */
        }

        header {
            background-color: #f8f9fa; /* Cor de fundo do cabeçalho */
            padding: 20px; /* Espaçamento interno */
            border-bottom: 1px solid #dee2e6; /* Borda inferior */
            text-align: center; /* Alinhamento do texto */
        }

            header h1 {
                margin: 0; /* Remover margem do título */
                font-size: 2rem; /* Tamanho da fonte do título */
                color: #343a40; /* Cor do texto */
            }
    </style>
</head>
<body class="container my-4">
    <form id="tablePaginater" runat="server">
        <header>
            <h1>Consulta de Clientes</h1>
            <p>Visualize as informações detalhadas de clientes cadastrados</p>
        </header>
        <main class="table-responsive-container border">
            <div>
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-hover" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="id_empresa" HeaderText="id" />
                        <asp:BoundField DataField="razaoSocial" HeaderText="razão social" />
                        <asp:BoundField DataField="nomeFantasia" HeaderText="nome fantasia" />
                        <asp:BoundField DataField="cnpj" HeaderText="cnpj" />
                        <asp:BoundField DataField="endereco" HeaderText="endereço" />
                        <asp:BoundField DataField="bairro" HeaderText="bairro" />
                        <asp:BoundField DataField="cep" HeaderText="cep" />
                        <asp:BoundField DataField="cidade" HeaderText="cidade" />
                        <asp:BoundField DataField="uf" HeaderText="uf" />
                        <asp:BoundField DataField="email" HeaderText="e-mail" />
                        <asp:BoundField DataField="telefone" HeaderText="telefone" />
                        <asp:BoundField DataField="fax" HeaderText="fax" />
                        <asp:BoundField DataField="representante" HeaderText="representante" />
                        <asp:BoundField DataField="observacao" HeaderText="observação" />
                        <asp:BoundField DataField="apelido" HeaderText="apelido" />
                        <asp:BoundField DataField="operacional" HeaderText="operacional" />
                        <asp:BoundField DataField="tipoTributacao" HeaderText="tipo de tributação" />
                        <asp:BoundField DataField="verificaExtrato" HeaderText="verifica extrato" />
                        <asp:BoundField DataField="codigoTransmissao" HeaderText="código de transmissão" />
                        <asp:BoundField DataField="cancelado" HeaderText="cancelado" />
                        <asp:BoundField DataField="caminhoArquivoContasPagar" HeaderText="caminho arquivo contas pagar" />
                        <asp:BoundField DataField="caminhoArquivoContasReceber" HeaderText="caminho arquivo contas receber" />
                        <asp:BoundField DataField="nomeArquivoContasPagar" HeaderText="nome arquivo contas pagar" />
                        <asp:BoundField DataField="nomeArquivoContasReceber" HeaderText="nome arquivo contas receber" />
                        <asp:BoundField DataField="matriz" HeaderText="matriz" />
                        <asp:BoundField DataField="emailCobranca" HeaderText="e-mail cobrança" />
                        <asp:BoundField DataField="nomeLogo" HeaderText="nome logo" />
                    </Columns>
                </asp:GridView>
            </div>
        </main>
    </form>
    <!--Jquery-->
    <script src="scripts/jquery-3.7.0.min.js"></script>
    <!--JavaScript Bootstrap-->
    <script src="scripts/bootstrap.js"></script>
</body>
</html>
