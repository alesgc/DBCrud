<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FormViews.aspx.vb" Inherits="DBCrud.FormViews" %>

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
    <form id="form1" runat="server">
        <asp:ListView ID="ListView1" runat="server">
        </asp:ListView>
    </form>
</body>
</html>
