<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="GridV.aspx.vb" Inherits="DBCrud.GridV" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Consulta de Clientes</title>
    <!-- Inclua o Bootstrap 5 -->
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <!-- Inclua o JavaScript do Bootstrap 5 -->
    <!--Jquery-->
    <script src="scripts/jquery-3.7.0.min.js"></script>
    <!--JavaScript Bootstrap-->
    <script src="scripts/bootstrap.js"></script>

    <style>
        .pagination {
            display: flex;
            justify-content: center;
            list-style: none;
        }

        .page-item {
            margin: 0 5px;
        }

        .page-link {
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            border: 1px solid #007bff;
            text-decoration: none;
        }

            .page-link:hover {
                background-color: #0056b3;
                border-color: #0056b3;
            }

        .page-item.disabled .page-link {
            pointer-events: none;
            opacity: 0.6;
        }
    </style>
</head>
<body class="container mt-4">
    <form id="form1" runat="server">
        <!-- Adiciona a classe table-responsive para barra de rolagem -->
        <header class="bg-light p-4 mb-3 border-bottom text-center">
            <h1 class="mb-0 display-4 text-dark">Consulta de Clientes</h1>
            <p class="text-muted">Visualize as informações detalhadas de clientes cadastrados</p>
        </header>
        <main class="table-responsive">
            <div class="mt-3">
            </div>
            <asp:GridView ID="GridView1" runat="server" AllowCustomPaging="True" AllowPaging="True" AllowSorting="True" BorderStyle="Solid" EnableSortingAndPagingCallbacks="True" OnSelectedIndexChanged="BindGridViewd" Height="800px" Width="1000px">
                <FooterStyle BorderStyle="Solid" />
                <PagerStyle BorderStyle="Solid" />
                <SortedAscendingHeaderStyle BorderStyle="Solid" />
            </asp:GridView>
        </main>
    </form>
</body>
</html>
