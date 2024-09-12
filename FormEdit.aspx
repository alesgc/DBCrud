<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FormEdit.aspx.vb" Inherits="DBCrud.FormEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>
</head>
<body class="container my-4">
    <form id="form1" runat="server">
    <header class="bg-light py-3 border-bottom text-center">
        <h1 class="m-0 fs-2 text-dark">Consulta de Clientes</h1>
        <p>Visualize as informações detalhadas de clientes cadastrados</p>
    </header>
    <main class="container mt-4">
        <div class="d-flex justify-content-center align-items-start flex-column w-100">
        
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" EmptyDataText="&amp;nbsp" Height="1000px" HorizontalAlign="Center" Width="1600px">
                <EditRowStyle BorderColor="Black" BorderWidth="5px" HorizontalAlign="Center" VerticalAlign="Middle" />
                <EmptyDataRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" VerticalAlign="Middle" />
                <FooterStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" VerticalAlign="Middle" />
                <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SelectedRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Justify" VerticalAlign="Top" Wrap="True" />
                <SortedAscendingCellStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SortedAscendingHeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SortedDescendingCellStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SortedDescendingHeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
        
        </div>
    </main>
    <!--Jquery-->
    <script src="scripts/jquery-3.7.0.min.js"></script>
    <!--JavaScript Bootstrap-->
    <script src="scripts/bootstrap.js"></script>
    </form>
</body>
</html>
