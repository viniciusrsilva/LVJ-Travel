<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="documentos.aspx.cs" Inherits="LVJ.documentos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Documentos para embarcar | LVJ Travel</title>

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

    <link rel="stylesheet" type="text/css" href="Estilos/documentos.css">
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

        <img id="imgDocumentos" src="img/documentos.png">

        <div id="conteudo" class="container">
            <h4 style="text-align: center">Organize seus documentos antes de embarcar</h4>

            <p style="text-align: center">
                Eles devem estar em boas condições e possuir foto que permita a identificação do
            viajante.
            </p>

            <h3>
                <img src="img/documentos/iconInterrogacao.png" />
                Você sabia?
            </h3>
            <p id="itens">
                Se você é cidadão de algum país membro pleno ou estado associado do Mercosul (Argentina, Paraguai, Uruguai,
            Venezuela, Chile, Colômbia, Equador e Peru), basta apresentar a cédula de identidade original ou passaporte
            dentro do prazo de validade.*
            </p>

            <h3>
                <img src="img/documentos/iconDocumentos.PNG" />
                Documentos aceitos para voos nacionais
            </h3>
            <div id="itens">

                <div id="tiposPassageiros">
                    <strong>Passageiros brasileiros com 18 anos ou mais</strong>
                    <ul>
                        <li>Carteira de Identidade.</li>
                        <li>Passaporte.</li>
                        <li>Carteira Nacional de Habilitação (modelo físico com fotografia).</li>
                        <li>A CNH-e (Carteira Nacional de Habilitação Eletrônica) agora é aceita no embarque de passageiros em
                        trechos domésticos. Para ser um documento válido, suas informações devem ser compatíveis com as
                        informações do cartão de embarque. O documento deve ser apresentado dentro do próprio aplicativo
                        “CNH
                        Digital” no celular do passageiro.
                        </li>
                        <li>Carteira de Trabalho.</li>
                        <li>DNI (Documento Nacional de Identidade).</li>
                        <li>Título de Eleitor Eletrônico (com nome civil ou nome social).</li>
                        <li>Cartões de identidade expedidos pelo Poder Judiciário ou Legislativo, no nível federal ou estadual,
                        e
                        também cartões de identidade expedidos pelo ministério ou órgão subordinado à Presidência da
                        República,
                        incluindo o Ministério da Defesa e os Comandos da Aeronáutica, da Marinha e do Exército.
                        </li>
                        <li>Caso um destes documentos tenha sido furtado, roubado ou extraviado, o cliente pode apresentar o
                        Boletim
                        de Ocorrência (B.O.). O prazo de validade do B.O. compete às autoridades de segurança pública.
                        </li>
                    </ul>
                </div>

                <div id="tiposPassageiros">
                    <strong>Passageiros brasileiros entre 12 e 18 anos incompletos</strong>
                    <ul>
                        <li>Passaporte.</li>
                        <li>Carteira de Identidade (RG) original ou cópia autenticada.</li>
                        <li>DNI (Documento Nacional de Identidade).</li>
                        <li>A aceitação de Boletim de Ocorrência para crianças (0 a 12 anos incompletos) deverá ser feita
                        mediante consulta à Vara da Infância e da Juventude de cada localidade.
                        </li>
                    </ul>
                    <div id="formularioMenor" class="containter">
                        <strong>Modelo de formulário de autorização da ANAC</strong>
                        <p>
                            A Agência Nacional de Aviação Civil (ANAC) disponibiliza um modelo de formulário padrão para que
                        pais ou responsáveis autorizem o embarque de menores de 16 anos acompanhados de pessoas que não
                        têm até o 3° grau de parentesco. <a href="http://www.anac.gov.br/assuntos/passageiros/formulario-de-autorizacao-de-viagem"
                            _target="_blank">Clique aqui</a> para acessá-lo.
                        </p>
                    </div>
                </div>

                <div id="tiposPassageiros">
                    <strong>Passageiros estrangeiros</strong>
                    <p>
                        Se você é estrangeiro e quer embarcar em um voo nacional, você deverá apresentar um desses
                    documentos:
                    </p>
                    <ul>
                        <li>Passaporte Estrangeiro, dentro do prazo de validade;</li>
                        <li>Registro Nacional de Estrangeiros (RNE) ou Protocolo de Renovação expedido pelo Departamento de
                        Polícia Federal (DPF), no caso de estrangeiros residentes no Brasil;
                        </li>
                        <li>Identidades Diplomáticas e Consulares;</li>
                        <li>Cédula de identidade original ou passaporte dentro do prazo de validade (se você é cidadão de algum
                        país membro pleno ou estado associado do Mercosul).
                        </li>
                    </ul>
                    <p>
                        Se você é um estrangeiro de um país fora do Mercosul (e também não é de um Estado Associado), você
                    precisa obrigatoriamente apresentar o passaporte.
                    </p>
                    <p>
                        Os documentos argentinos “Libreta Cívica” e “Libreta de Enrolamento” não são mais aceitos em voos
                    internacionais e nacionais desde 15 de março de 2012.
                    </p>
                    <p>
                        Importante: todos os documentos precisam estar dentro do prazo de validade, com exceção do RNE para
                    idosos acima de 60 anos.
                    </p>
                </div>

            </div>

            <h3>
                <img src="img/documentos/iconPassaporte.png" />
                Documentos para voos internacionais
            </h3>
            <div id="itens">
                <p>
                    Países membros do Mercosul, ou que possuem acordos de viagem com o Brasil, como Argentina, Paraguai,
                Uruguai, Chile, Venezuela e Bolívia:
                </p>
                <ul>
                    <li>Carteira de Identidade (RG) original</li>
                    <li>Registro de Identidade Civil (RIC) original</li>
                    <li>Cédula de Identidade de Estrangeiro original expedida pela Polícia Federal (RNE)</li>
                    <li>Passaporte original e dentro da validade</li>
                </ul>
                <p>
                    Se você é cidadão de algum país membro pleno ou estado associado do Mercosul, é permitida a apresentação
                apenas da cédula de identidade original ou passaporte dentro do prazo de validade.
                </p>
                <p>
                    Se você é estrangeiro de algum país fora do Mercosul (e também não é de um Estado Associado), você
                precisa obrigatoriamente apresentar o passaporte.
                </p>
                <p>
                    Importante: todos os documentos precisam estar dentro do prazo de validade, com exceção do RNE para
                idosos acima de 60 anos.
                </p>
            </div>
        </div>

        <div id="footer"></div>
    </form>
</body>
</html>
