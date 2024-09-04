﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FormViews.aspx.vb" Inherits="DBCrud.FormViews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>
    <style>
        w-60 {
            width: 60%;
        }

        .table-responsive-container {
            max-width: 1000px; /* Largura máxima da tabela */
            max-height: 900px; /* Altura máxima da tabela */
            overflow-y: auto; /* Barra de rolagem vertical */
            overflow-x: auto; /* Barra de rolagem horizontal */
            align-content: center;
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
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <form id="formView" runat="server">
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="razaoSocial" runat="server" placeholder="Razão Social" Enabled="False" />
                    <label for="razaoSocial">Razão Social</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="nomeFantasia" runat="server" placeholder="Nome Fantasia" Enabled="False" />
                    <label for="nomeFantasia">Nome Fantasia</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="cnpj" runat="server" placeholder="CNPJ" Enabled="False" />
                    <label for="cnpj">CNPJ</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="endereco" runat="server" placeholder="Endereço" Enabled="False" />
                    <label for="endereco">Endereço</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="bairro" runat="server" placeholder="Bairro" Enabled="False" />
                    <label for="bairro">Bairro</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="cep" runat="server" placeholder="CEP" Enabled="False" />
                    <label for="cep">CEP</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="cidade" runat="server" placeholder="Cidade" Enabled="False" />
                    <label for="cidade">Cidade</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:DropDownList CssClass="form-select" ID="uf" runat="server" Enabled="False">
                        <asp:ListItem Value="AC">AC</asp:ListItem>
                        <asp:ListItem Value="AL">AL</asp:ListItem>
                        <asp:ListItem Value="AP">AP</asp:ListItem>
                        <asp:ListItem Value="AM">AM</asp:ListItem>
                        <asp:ListItem Value="BA">BA</asp:ListItem>
                        <asp:ListItem Value="CE">CE</asp:ListItem>
                        <asp:ListItem Value="DF">DF</asp:ListItem>
                        <asp:ListItem Value="ES">ES</asp:ListItem>
                        <asp:ListItem Value="GO">GO</asp:ListItem>
                        <asp:ListItem Value="MA">MA</asp:ListItem>
                        <asp:ListItem Value="MT">MT</asp:ListItem>
                        <asp:ListItem Value="MS">MS</asp:ListItem>
                        <asp:ListItem Value="MG">MG</asp:ListItem>
                        <asp:ListItem Value="PA">PA</asp:ListItem>
                        <asp:ListItem Value="PB">PB</asp:ListItem>
                        <asp:ListItem Value="PR">PR</asp:ListItem>
                        <asp:ListItem Value="PE">PE</asp:ListItem>
                        <asp:ListItem Value="PI">PI</asp:ListItem>
                        <asp:ListItem Value="RJ">RJ</asp:ListItem>
                        <asp:ListItem Value="RN">RN</asp:ListItem>
                        <asp:ListItem Value="RS">RS</asp:ListItem>
                        <asp:ListItem Value="RO">RO</asp:ListItem>
                        <asp:ListItem Value="RR">RR</asp:ListItem>
                        <asp:ListItem Value="SC">SC</asp:ListItem>
                        <asp:ListItem Value="SP">SP</asp:ListItem>
                        <asp:ListItem Value="SE">SE</asp:ListItem>
                        <asp:ListItem Value="TO">TO</asp:ListItem>
                    </asp:DropDownList>
                    <label for="uf">UF</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="E-mail" TextMode="Email" Enabled="False" />
                    <label for="email">E-mail</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="confirmarEmail" runat="server" placeholder="Confirmar E-mail" Enabled="False" />
                    <label for="confirmarEmail">E-mail</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="telefone" runat="server" placeholder="Telefone" Enabled="False" />
                    <label for="telefone">Telefone</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="fax" runat="server" placeholder="Fax" Enabled="False" />
                    <label for="fax">Fax</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="representante" runat="server" placeholder="Representante" Enabled="False" />
                    <label for="representante">Representante</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="observacao" runat="server" placeholder="Observação" TextMode="MultiLine" Rows="3" Enabled="False" />
                    <label for="observacao">Observação</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="apelido" runat="server" placeholder="Apelido" Enabled="False" />
                    <label for="apelido">Apelido</label>
                </div>
                <div class="form-check mb-3">
                    <asp:CheckBox CssClass="form-check-input" ID="operacional" runat="server" Enabled="False" />
                    <label class="form-check-label" for="operacional">Operacional</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="tipoTributacao" runat="server" placeholder="Tipo de Tributação" Enabled="False" />
                    <label for="tipoTributacao">Tipo de Tributação</label>
                </div>
                <div class="form-check mb-3">
                    <asp:CheckBox CssClass="form-check-input" ID="verificaExtrato" runat="server" Enabled="False" />
                    <label class="form-check-label" for="verificaExtrato">Verifica Extrato</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="codigoTransmissao" runat="server" placeholder="Código de Transmissão" Enabled="False" />
                    <label for="codigoTransmissao">Código de Transmissão</label>
                </div>
                <div class="form-check mb-3">
                    <asp:CheckBox CssClass="form-check-input" ID="cancelado" runat="server" Enabled="False" />
                    <label class="form-check-label" for="cancelado">Cancelado</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="caminhoArquivoContasPagar" runat="server" placeholder="Caminho Arquivo Contas Pagar" Enabled="False" />
                    <label for="caminhoArquivoContasPagar">Caminho Arquivo Contas Pagar</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="caminhoArquivoContasReceber" runat="server" placeholder="Caminho Arquivo Contas Receber" Enabled="False" />
                    <label for="caminhoArquivoContasReceber">Caminho Arquivo Contas Receber</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="nomeArquivoContasPagar" runat="server" placeholder="Nome Arquivo Contas Pagar" Enabled="False" />
                    <label for="nomeArquivoContasPagar">Nome Arquivo Contas Pagar</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="nomeArquivoContasReceber" runat="server" placeholder="Nome Arquivo Contas Receber" Enabled="False" />
                    <label for="nomeArquivoContasReceber">Nome Arquivo Contas Receber</label>
                </div>
                <div class="form-check mb-3">
                    <asp:CheckBox CssClass="form-check-input" ID="matriz" runat="server" Enabled="False" />
                    <label class="form-check-label" for="matriz">Matriz</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="emailCobranca" runat="server" placeholder="E-mail Cobrança" TextMode="Email" Enabled="False" />
                    <label for="emailCobranca">E-mail Cobrança</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="nomeLogo" runat="server" placeholder="Nome Logo" Enabled="False" />
                    <label for="nomeLogo">Nome Logo</label>
                </div>
                <div class="form-group d-flex justify-content-between col-10 col-md-7 col-lg-6 mx-auto">
                    <asp:Button CssClass="btn btn-primary" ID="btnUPDATE" runat="server" Text="Editar Perfil" />
                    <asp:Button CssClass="btn btn-primary" ID="btnDELETRE" runat="server" Text="Deletar Perfil" />
                </div>
                <div class="form-group">
                    <asp:Label ID="lblError" CssClass="text-danger" runat="server" />
                </div>
                <div class="form-group">
                    <asp:Label ID="lblSuccess" CssClass="text-success" runat="server" />
                </div>
            </form>
        </div>
    </div>
    <!--Jquery-->
    <script src="scripts/jquery-3.7.0.min.js"></script>
    <!--JavaScript Bootstrap-->
    <script src="scripts/bootstrap.js"></script>
</body>
</html>
