<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rel-clientes.aspx.cs" Inherits="LVJ.rel_clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Relatórios | LVJ Travel</title>

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/jquery.maskedinput.js"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

    <link rel="shortcut icon" href="img/favicon.ico" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h4>Total de clientes por tipo de pessoa</h4>

            <asp:GridView ID="gdvClientes" CssClass="table table-bordered" runat="server" AutoGenerateColumns="false" OnRowCommand="gdvClientes_RowCommand">
                <Columns>
                    <asp:BoundField HeaderText="Tipo de Pessoa" DataField="tipoPessoa" />
                    <asp:BoundField HeaderText="Total" DataField="total" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
