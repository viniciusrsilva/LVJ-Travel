<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="atendimento.aspx.cs" Inherits="LVJ.atendimento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Fale Conosco | LVJ Travel</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/jquery.maskedinput.js"></script>
    <link rel="stylesheet" type="text/css" href="Estilos/atendimento.css">

    <script>
        $(function () {
            $("#footer").load("footer.html");
        });
    </script>

    <script type="text/javascript">
        $(document).ready(
            function () {
                $("#txtCelular").mask("(99) 99999-9999");
            });
    </script>

    <link rel="stylesheet" type="text/css" href="atendimento.css">
    <link rel="shortcut icon" href="img/favicon.ico" />

    <meta name="viewport" content="width = device-width, initial-scale=1">
</head>
<body data-spy="scroll" data-targer=".navbar" data-offset="50">
    <form id="formAtendimento" runat="server">
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

            <img id="img" src="img/fale-conosco.png">

            <div id="conteudo" class="container">

                <h4>Nós estamos aqui pra te ouvir!</h4>
                <p>Preencha os campos abaixo e mande sua mensagem:</p>


                <div class="form-group">


                    <label for="txtNome">Nome:</label>
                    <input type="text" id="txtNome" runat="server" placeholder="Digite seu nome" class="form-control">
                    <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtNome" EnableClientScript="false" ErrorMessage="Informe seu nome"></asp:RequiredFieldValidator>

                    <div class="row">
                        <div class="col-6">
                            <label for="txtEmail">E-mail:</label>
                            <input id="txtEmail" type="email" runat="server" placeholder="Digite seu e-mail" class="form-control">
                            <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtEmail" EnableClientScript="false" ErrorMessage="Informe seu e-mail"></asp:RequiredFieldValidator>
                        </div>

                        <div class="col-6">
                            <label for="txtCelular">Celular:</label>
                            <input type="text" id="txtCelular" placeholder="Digite seu celular" runat="server" class="form-control">
                        </div>

                    </div>

                    <label for="txtMensagem">Mensagem:</label>
                    <textarea id="txtMensagem" runat="server" rows="5" placeholder="Digite sua mensagem" class="form-control"></textarea>
                    <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtMensagem" EnableClientScript="false" ErrorMessage="Informe sua mensagem"></asp:RequiredFieldValidator>

                    <button id="btnEnviar" type="submit" runat="server" onserverclick="btnEnviar_ServerClick" class="btn btn-dark">Enviar</button>

                    <div id="divAtendimento" class="alert alert-success" runat="server" style="display: none;">Sua mensagem foi enviada com sucesso.<br />
                        Retornaremos em breve!</div>
                </div>

            </div>

            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
