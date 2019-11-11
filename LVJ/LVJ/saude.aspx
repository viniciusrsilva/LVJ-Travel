<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="saude.aspx.cs" Inherits="LVJ.saude" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Dicas de saúde  em viagem | LVJ Travel</title>

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

    <link rel="stylesheet" type="text/css" href="Estilos/saude.css">
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

        <img id="img" src="img/saude.png">

        <div id="conteudo" class="container">
            <h4 style="text-align: center">Separamos aqui algumas informações que podem tornar a sua<br>
                viagem mais segura e
            confortável
            </h4>

            <h3>
                <img src="img/saude/iconAlergias.png">
                Alergias
            </h3>
            <p id="itens">
                Se você sofre de alguma alergia ou intolerância alimentar, leve a medicação necessária na sua bagagem de
            mão. É importante lembrar que, em caso de emergência a bordo, nossos tripulantes não estão autorizados a
            aplicar qualquer medicação injetável.
            </p>
            <p id="itens">
                Não podemos garantir que os alimentos servidos no avião sejam completamente livres de amendoim ou outros
            ingredientes que provoquem alergia. Também não asseguramos que outros passageiros não tragam tais alimentos
            a bordo.
            </p>

            <h3>
                <img src="img/saude/iconDor.png">
                Dor de ouvidos, garganta e obstrução nasal
            </h3>
            <div id="itens">
                <p>
                    Caso você sofra de inflamações nas vias aéreas ou esteja resfriado, consulte o seu médico antes de
                viajar. A diferença de pressão no voo pode causar dor intensa, principalmente durante a aterrissagem.
                </p>
                <p>
                    Para minimizar estes sintomas orientamos que, preferencialmente, esteja acordado e acorde as crianças
                durante a decolagem e o pouso para poder realizar as manobras de descompressão (simular deglutição,
                bocejos e, para as crianças, estimular sucção, oferecendo o bico e mamadeira).
                </p>
            </div>

            <h3>
                <img src="img/saude/iconMergulho.png">
                Mergulhos
            </h3>
            <div id="itens">
                <p>
                    A pressurização da cabine de um avião é equivalente à pressão atmosférica de 2.400 m de altitude. Se
                você realizou um mergulho submarino (com cilindro) 24 horas antes do voo, existe o risco de embolia
                gasosa. Por isso, orientamos a realizar a viagem após esse período.
                </p>
            </div>

            <h3>
                <img src="img/saude/iconVacina.png">
                Vacinas e outras medidas preventivas
            </h3>
            <div id="itens">
                <p>
                    Conheça os destinos que recomendam imunização prévia na área <a href="vacinas.html">Vacinas</a>.
                </p>
            </div>

            <h3>
                <img src="img/saude/iconJetlag.png">
                Jet lag
            </h3>
            <div id="itens">
                <p>
                    Viagens para lugares com fusos horários diferentes costumam causar alterações no ritmo do nosso corpo.
                Por isso, são comuns sintomas como cansaço, dor de cabeça e dificuldade de concentração. Para ajudar a
                evitá-los, ajuste o relógio para o horário de destino antes de iniciar o voo. Durante a viagem, beba
                bastante água. Na chegada, tente dormir o suficiente na primeira noite, sem recorrer a soníferos ou
                similares. Também tente entrar imediatamente no ritmo da cidade, fazendo as refeições na hora local.
                </p>
            </div>

            <h3>
                <img src="img/saude/iconTrombose.png">
                Trombose
            </h3>
            <div id="itens">
                <p>
                    Ficar muito tempo sentado aumenta o risco de trombose, além de alguns fatores de risco, como idade acima 
                de 60 anos, gravidez, obesidade, uso de anticoncepcionais, cirurgias recentes, entre outros. Por isso, é 
                importante movimentar as pernas e os braços durante voos longos. Também procure usar meias elásticas ou
                de compressão e ingerir bastante água.
                </p>
                <p>
                    Se você tiver algum fator de risco, vale consultar o seu médico antes da viagem.
                </p>
            </div>

            <h3>
                <img src="img/saude/iconDiarreia.png">
                Diarreia
            </h3>
            <div id="itens">
                <p>
                    A diarreia pode ocorrer, de forma geral, por conta de uma infecção alimentar, em qualquer país do mundo,
                sendo mais comum no verão. Assim, faça sempre refeições em ambientes seguros, com água tratada ou mineral.
                Dê preferência a alimentos cozidos, evitando pratos que ficam expostos por muito tempo (como em buffets) e 
                vendidos em barracas de rua.
                </p>
            </div>

            <h3>
                <img src="img/saude/iconClima.png">
                Mudanças de clima
            </h3>
            <div id="itens">
                <p>
                    Viajar para lugares com variações climáticas muito intensas pode causar desconforto e dificuldade de adaptação.
                Por isso, providencie o vestuário adequado às condições de clima do local para onde você vai viajar.
                </p>
            </div>

            <h3>
                <img src="img/saude/iconSol.png">
                Cuidados com o sol
            </h3>
            <div id="itens">
                <p>
                    Lugares com muito sol e calor pedem cuidados com a saúde. Use sempre protetor solar com FPS alto, além de roupas
                leves de mangas compridas, chapéus e óculos de sol. Evite a desidratação bebendo água com frequência e não se 
                exponha ao sol nos horários de mais calor.
                </p>
            </div>

            <h3>
                <img src="img/saude/iconSaude.png">
                Seguro saúde
            </h3>
            <div id="itens">
                <p>
                    Se você tem um plano ou seguro saúde, verifique a cobertura dele junto à operadora, especialmente em viagens
                internacionais. Isso porque, em alguns países, os custos com a saúde podem ser muito elevados.
                </p>
            </div>

            <h3>
                <img src="img/saude/IconCuidados.png">
                Cuidados a bordo
            </h3>
            <div id="itens">
                <p>
                    Procure sempre usar roupas e calçados confortáveis e, se possível, meias de compressão. Em viagens longas, 
                caminhe pelo corredor da aeronave a cada duas horas e tente não ficar sentado por muito tempo. Beba água 
                para se manter hidratado. Também use creme hidratante e protetor labial periodicamente. Se possível, evite 
                as lentes de contato, optando pelos óculos.
                </p>
            </div>

            <h3>
                <img src="img/saude/iconDoenças.png">
                Doenças infectocontagiosas
            </h3>
            <div id="itens">
                <p>
                    Em casos de doenças infectocontagiosas o passageiro poderá ser impedido de embarcar, a fim de garantir a
                segurança de todos a bordo.
                </p>
            </div>
        </div>

        <div id="footer"></div>
    </form>
</body>
</html>
