<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio-restrito.aspx.cs" Inherits="LVJ.inicio_restrito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Acesso Restrito | LVJ Travel</title>

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>

    <link rel="stylesheet" type="text/css" href="Estilos/inicioRestrito.css">
    <link rel="shortcut icon" href="img/favicon.ico" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
        <a class="navbar-brand" href="inicio-restrito.aspx"><img src="/img/logo.png" /></a>
    </nav>

    <div id="restrito" class="container">

        <h5>Bem vindo ao administrativo da LVJ Travel.</h5>
        <p>Escolha uma opção abaixo para continuar:</p>

        <a href="inicio.aspx" class="btn btn-outline-secondary">
            <img src="img/restrito/inicio.png" />
            <p id="btnTitulo">Acesso Público</p>
        </a>

        <a href="usuarios.aspx" class="btn btn-outline-secondary">
            <img src="img/restrito/usuario.png" />
            <p id="btnTitulo">Usuários</p>
        </a>

        <a href="aeronaves.aspx" class="btn btn-outline-secondary">
            <img src="img/restrito/aeronaves.png" />
            <p id="btnTitulo">Aeronaves</p>
        </a>

        <a href="origens.aspx" class="btn btn-outline-secondary">
            <img src="img/restrito/origensDestinos.png" />
            <p id="btnTitulo">Origens</p>
        </a>

        <a href="destinos.aspx" class="btn btn-outline-secondary">
            <img src="img/restrito/origensDestinos.png" />
            <p id="btnTitulo">Destinos</p>
        </a>

        <a href="voos.aspx" class="btn btn-outline-secondary">
            <img src="img/restrito/viagens.png" />
            <p id="btnTitulo">Voos e Viagens</p>
        </a>

        <a href="relatorios.aspx" class="btn btn-outline-secondary">
            <img src="img/restrito/relatorios.png" />
            <p id="btnTitulo">Relatórios</p>
        </a>
    </div>
    </form>
</body>
</html>
