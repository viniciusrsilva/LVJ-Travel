<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="relatorios.aspx.cs" Inherits="LVJ.relatorios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Relatórios | LVJ Travel</title>

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/jquery.maskedinput.js"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="Estilos/relatorios.css">
    <link rel="shortcut icon" href="img/favicon.ico" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
            <a class="navbar-brand" href="inicio-restrito.html">
                <img src="../img/logo.png" /></a>
            <span id="titulo" class="navbar-text">Relatórios</span>
        </nav>

        <div id="divRelatorios" class="container">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Relatório</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Total de reservas por cliente</td>
                        <td><a href="rel-reservas.aspx"><i class="fas fa-print"></i></a></td>
                    </tr>
                    <tr>
                        <td>Total de clientes por tipo de pessoa</td>
                        <td><a href="rel-clientes.aspx"><i class="fas fa-print"></i></a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
