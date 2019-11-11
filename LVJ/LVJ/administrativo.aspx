<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="administrativo.aspx.cs" Inherits="LVJ.administrativo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Restrito | LVJ Travel</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/jquery.maskedinput.min.js"></script>

    <script>
        $(function () {
            $("#footer").load("footer.html");
        });
    </script>

    <script type="text/javascript">
        $(document).ready(
            function () {
                $("#txtCPF").mask("999.999.999-99");
            });
    </script>

    <link rel="stylesheet" type="text/css" href="Estilos/restrito.css">
    <link rel="shortcut icon" href="img/favicon.ico" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <nav class="navbar navbar-expand-md bg-primary navbar-dark fixed-top">
            <a class="navbar-brand" href="inicio.aspx">
                <img src="img/logo.png" /></a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#listaLinks">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div id="listaLinks" class="collapse navbar-collapse">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" style="color: white" href="vacinas.aspx">Vacinas</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" style="color: white" href="documentos.aspx">Documentos para embarcar</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" style="color: white" href="saude.aspx">Dicas de saúde</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" style="color: white" href="atendimento.aspx">Atendimento</a>
                    </li>

                    <li class="nav-item">
                        <a id="linkCadastro" runat="server" class="nav-link" style="color: white" href="cadastre-se.aspx">Cadastre-se</a>
                    </li>

                    <li class="nav-item">
                        <a id="linkLogin" runat="server" class="nav-link" style="color: white" href="login.aspx">Fazer login</a>
                    </li>

                    <li class="nav-item">
                        <a id="dadosPF" runat="server" class="nav-link" style="color: white; display: none" href="meus-dadosPF.aspx">Meus dados</a>
                        <a id="dadosPJ" runat="server" class="nav-link" style="color: white; display: none" href="meus-dadosPJ.aspx">Meus dados</a>
                    </li>

                    <li class="nav-item">
                        <a id="reservas" runat="server" class="nav-link" style="color: white; display: none" href="minhas-reservas.aspx">Minhas reservas</a>
                    </li>

                    <li class="nav-item">
                        <a id="loginNome" class="nav-link" style="color: white; display: none" runat="server"></a>
                    </li>

                    <li class="nav-item">
                        <a id="sair" class="nav-link" style="color: white; display: none" runat="server" onserverclick="sair_ServerClick">Sair</a>
                    </li>

                </ul>
            </div>
        </nav>

            <div id="apresentacaoLogin" class="container">
                <h3><strong>Acesso restrito</strong></h3>
                <p>Para acessar a área restrita identifique-se com CPF e sua senha pessoal.</p>
            </div>

            <div id="idloginadm" style="padding: 20px" class="container bg-light">

                <div class="form-group">
                    <label for="lblCPF"><strong>CPF:</strong></label>
                    <input type="text" id="txtCPF" runat="server" placeholder="Digite seu CPF" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="lblSenha"><strong>Senha:</strong></label>
                    <input type="password" id="txtsenha" runat="server" placeholder="Digite sua Senha" class="form-control" required>
                </div>
                <div id="acessar_adm" class="form-group">
                    <button id="btnAcessar" class="btn btn-dark" runat="server" type="submit" onserverclick="btnAcessar_ServerClick">Acessar</button>
                </div>

            <div class="alert alert-danger" id="divErro" style="display: none;" runat="server"><strong>Erro!</strong> CPF e/ou Senha inválidos.</div>
            
            </div>

            <div id="footer"></div>

        </div>
    </form>
</body>
</html>
