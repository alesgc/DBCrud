<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FormGenerico.aspx.vb" Inherits="DBCrud.FormGenerico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="formGenerico" runat="server">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="razaoSocial" runat="server" placeholder="Razão Social" />
                    <label for="razaoSocial">Razão Social</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="nomeFantasia" runat="server" placeholder="Nome Fantasia" />
                    <label for="nomeFantasia">Nome Fantasia</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="cnpj" runat="server" placeholder="CNPJ" />
                    <label for="cnpj">CNPJ</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="endereco" runat="server" placeholder="Endereço" />
                    <label for="endereco">Endereço</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="bairro" runat="server" placeholder="Bairro" />
                    <label for="bairro">Bairro</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="cep" runat="server" placeholder="CEP" />
                    <label for="cep">CEP</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="cidade" runat="server" placeholder="Cidade" />
                    <label for="cidade">Cidade</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:DropDownList CssClass="form-select" ID="uf" runat="server">
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
                    <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="E-mail" TextMode="Email" />
                    <label for="email">E-mail</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="confirmarEmail" runat="server" placeholder="Confirmar E-mail" />
                    <label for="confirmarEmail">E-mail</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="telefone" runat="server" placeholder="Telefone" />
                    <label for="telefone">Telefone</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="fax" runat="server" placeholder="Fax" />
                    <label for="fax">Fax</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="representante" runat="server" placeholder="Representante" />
                    <label for="representante">Representante</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="observacao" runat="server" placeholder="Observação" TextMode="MultiLine" Rows="3" />
                    <label for="observacao">Observação</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="apelido" runat="server" placeholder="Apelido" />
                    <label for="apelido">Apelido</label>
                </div>
                <div class="form-check mb-3">
                    <asp:CheckBox CssClass="form-check-input" ID="operacional" runat="server" />
                    <label class="form-check-label" for="operacional">Operacional</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="tipoTributacao" runat="server" placeholder="Tipo de Tributação" />
                    <label for="tipoTributacao">Tipo de Tributação</label>
                </div>
                <div class="form-check mb-3">
                    <asp:CheckBox CssClass="form-check-input" ID="verificaExtrato" runat="server" />
                    <label class="form-check-label" for="verificaExtrato">Verifica Extrato</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="codigoTransmissao" runat="server" placeholder="Código de Transmissão" />
                    <label for="codigoTransmissao">Código de Transmissão</label>
                </div>
                <div class="form-check mb-3">
                    <asp:CheckBox CssClass="form-check-input" ID="cancelado" runat="server" />
                    <label class="form-check-label" for="cancelado">Cancelado</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="caminhoArquivoContasPagar" runat="server" placeholder="Caminho Arquivo Contas Pagar" />
                    <label for="caminhoArquivoContasPagar">Caminho Arquivo Contas Pagar</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="caminhoArquivoContasReceber" runat="server" placeholder="Caminho Arquivo Contas Receber" />
                    <label for="caminhoArquivoContasReceber">Caminho Arquivo Contas Receber</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="nomeArquivoContasPagar" runat="server" placeholder="Nome Arquivo Contas Pagar" />
                    <label for="nomeArquivoContasPagar">Nome Arquivo Contas Pagar</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="nomeArquivoContasReceber" runat="server" placeholder="Nome Arquivo Contas Receber" />
                    <label for="nomeArquivoContasReceber">Nome Arquivo Contas Receber</label>
                </div>
                <div class="form-check mb-3">
                    <asp:CheckBox CssClass="form-check-input" ID="matriz" runat="server" />
                    <label class="form-check-label" for="matriz">Matriz</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="emailCobranca" runat="server" placeholder="E-mail Cobrança" TextMode="Email" />
                    <label for="emailCobranca">E-mail Cobrança</label>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox CssClass="form-control" ID="nomeLogo" runat="server" placeholder="Nome Logo" />
                    <label for="nomeLogo">Nome Logo</label>
                </div>
                <div class="form-group d-flex justify-content-center col-5 col-md-7 col-lg-3 mx-auto">
                    <asp:Button CssClass="btn btn-primary" ID="btnINSERT" runat="server" Text="Cadastrar" />
                </div>
                <div class="form-group">
                    <asp:Label ID="lblError" CssClass="text-danger" runat="server" />
                </div>
                <div class="form-group">
                    <asp:Label ID="lblSuccess" CssClass="text-success" runat="server" />
                </div>
            </div>
        </div>
    </form>
    <!--Jquery-->
    <script src="scripts/jquery-3.7.0.min.js"></script>
    <!--JavaScript Bootstrap-->
    <script src="scripts/bootstrap.js"></script>
</body>
</html>
