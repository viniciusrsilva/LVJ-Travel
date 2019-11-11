<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vacinas.aspx.cs" Inherits="LVJ.vacinas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Vacinas | LVJ Travel</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>

    <script>
        $(function () {
            $("#footer").load("footer.html");
        });
    </script>

    <link rel="stylesheet" type="text/css" href="Estilos/vacinas.css">
    <link rel="shortcut icon" href="img/favicon.ico" />
</head>
<body>
    <form id="form1" runat="server">
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

        <img id="imgVacina" src="img/vacinas.png">

        <div id="conteudo" class="container">
            <h4 style="text-align: center">Antes de viajar, verifique se é necessário tomar alguma vacina</h4>

            <p>
                Atualmente, a vacina de imunização contra a febre amarela é uma recomendação no Brasil, porém é obrigatória
            em alguns países da América Latina e deve ser tomada pelo menos 11 dias antes da data de embarque. Em locais
            em que a imunização é obrigatória, o viajante deverá apresentar o Certificado Internacional de Vacinação.
            </p>

            <p>
                Consulte seu médico. A entrada no país pode ser eventualmente negada ao cliente que não cumprir este
            requerimento.
            </p>
        </div>

        <div id="destinosObrigatorios" class="container">
            <h5>Destinos com vacinação obrigatória*</h5>

            <strong>Destinos internacionais</strong>
            <p>Suriname, Assunção**, Santa Cruz De La Sierra, Equador e República Dominicana.</p>

            <p>
                Para mais informações, acesse o site da <a href="http://portal.anvisa.gov.br/" target="_blank">Agência Nacional de
                Vigilância Sanitária (Anvisa)
                </a>.
            </p>
        </div>

        <div id="observacoes" class="container">
            <p>
                * Esta é uma recomendação geral, alguns destinos podem requerer a imunização contra a febre amarela e
            outras
            como mandatória. Sempre verifique as recomendações e obrigatoriedades do destino antes de viajar, se
            atentando que a vacinação contra a febre amarela deve ocorrer pelo menos 11 dias antes da data de
            embarque.
            </p>

            <p>
                ** Passageiros, com entrada e/ou saída em Assunção, deverão obrigatoriamente apresentar o Certificado
            Internacional de Vacinação contra a Febre Amarela. A exigência passou a valer em 1º de fevereiro de
            2018.
            </p>
        </div>

        <div id="footer"></div>
    </form>
</body>
</html>
