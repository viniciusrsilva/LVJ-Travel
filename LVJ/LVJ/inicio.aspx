<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="LVJ.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>LVJ Travel</title>

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

    <link rel="stylesheet" type="text/css" href="Estilos/inicio.css">
    <link rel="shortcut icon" href="img/favicon.ico" />
</head>
<body data-spy="scroll" data-targer=".navbar" data-offset="50">
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

            <div id="escolheViagem" class="container">
                <h5>
                    <img src="img/aviao.png">
                    Reservar passagem
                </h5>

                <div id="opcoes">
                    <div class="row">
                        <div class="col-11 col-lg-3">
                            <h5>Saindo de</h5>

                            <div id="saindo" class="form-group">
                                <asp:DropDownList ID="ddlOrigem" OnSelectedIndexChanged="ddlOrigem_SelectedIndexChanged" CssClass="form-control" runat="server" AutoPostBack="true"></asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-11 col-lg-3">
                            <h5>Chegando em</h5>

                            <div id="chegando" class="form-group">
                                <asp:DropDownList ID="ddlDestino" OnSelectedIndexChanged="ddlDestino_SelectedIndexChanged" CssClass="form-control" runat="server" AutoPostBack="true" Enabled="false"></asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-10 col-lg-2">
                            <h5>Data de partida </h5>

                            <div id="data" class="form-group">
                                <asp:DropDownList ID="ddlDataPartida" OnSelectedIndexChanged="ddlDataPartida_SelectedIndexChanged" CssClass="form-control" runat="server" AutoPostBack="true" Enabled="false"></asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-10 col-lg-2">
                            <h5>Hora de partida</h5>

                            <div id="hora" class="form-group">
                                <asp:DropDownList ID="ddlHoraPartida" OnSelectedIndexChanged="ddlHoraPartida_SelectedIndexChanged" CssClass="form-control" runat="server" AutoPostBack="true" Enabled="false"></asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-10 col-lg-2">
                            <button id="btnProcurar" class="btn btn-dark" runat="server" type="submit" onserverclick="btnProcurar_ServerClick" disabled="disabled">Reservar!</button>
                        </div>
                    </div>
                </div>
            </div>

            <div id="carouselPai" class="carousel slide" data-ride="carousel">

                <ul class="carousel-indicators">
                    <li data-target="#carouselPai" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselPai" data-slide-to="1"></li>
                    <li data-target="#carouselPai" data-slide-to="2"></li>
                </ul>

                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/banner/banner1.png" class="img-responsive">
                    </div>
                    <div class="carousel-item">
                        <img src="img/banner/banner2.png" class="img-responsive">
                    </div>
                    <div class="carousel-item">
                        <img src="img/banner/banner3.png" class="img-responsive">
                    </div>
                </div>

                <a class="carousel-control-prev" href="#carouselPai" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#carouselPai" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>

            </div>

            <div id="divtravel" class="container-fluid">
                <div id="travel">
                    <center>
                <img src="img/travel.png" style="max-width:100%">
                <h1>LVJ Travel</h1>
                <h6>Os melhores destinos no Brasil, escolhidos pra você!</h6>
            </center>
                </div>

                <div class="row">
                    <div class="col-sm-3">
                        <div class="card">
                            <div class="card-header">
                                <a class="card-link">
                                    <img src="img/cards/bombinhas.jpg" class="card-img-top">
                                </a>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title">Bombinhas - SC</h4>
                                <p class="class-text"></p>
                                <a href="https://www.feriasbrasil.com.br/sc/bombinhas/" class="btn btn-dark"
                                    target="_blank">Saiba mais!</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3">
                        <div class="card">
                            <div class="card-header">
                                <a class="card-link">
                                    <img src="img/cards/capitolio.jpg" class="card-img-top">
                                </a>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title">Capitólio - MG</h4>
                                <p class="class-text"></p>
                                <a href="https://www.feriasbrasil.com.br/mg/capitolio/" class="btn btn-dark"
                                    target="_blank">Saiba
                            mais!
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3">
                        <div class="card">
                            <div class="card-header">
                                <a class="card-link">
                                    <img src="img/cards/gramado.jpg" class="card-img-top">
                                </a>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title">Gramado - RS</h4>
                                <p class="class-text"></p>
                                <a href="https://www.feriasbrasil.com.br/rs/gramado/" class="btn btn-dark" target="_blank">Saiba
                            mais!
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3">
                        <div class="card">
                            <div class="card-header">
                                <a class="card-link">
                                    <img src="img/cards/riodejaneiro.jpg" class="card-img-top">
                                </a>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title">Rio de Janeiro - RJ</h4>
                                <p class="class-text"></p>
                                <a href="https://www.feriasbrasil.com.br/rj/riodejaneiro/" class="btn btn-dark"
                                    target="_blank">Saiba mais!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br>

            <div id="newsletter" class="container">
                <form id="form_newsletter" class="need-validated">
                    <h5 style="color: #436389">
                        <img src="img/newsletter.png">
                        Pedimos permissão para pousar no seu e-mail
                    </h5>
                    <p style="color: #5f5f5f">Cadastre seu e-mail para receber destinos e viagens especiais.</p>

                    <div class="form-group">
                        <input type="email" id="txtnewsletter" runat="server" placeholder="Informe seu E-mail" class="form-control">
                        <button id="btnCadastrar" class="btn btn-dark" runat="server" type="submit" onserverclick="btnCadastrar_ServerClick">Cadastrar!</button>
                        <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtnewsletter" EnableClientScript="false" ErrorMessage="Informe o e-mail"></asp:RequiredFieldValidator>
                        <div id="divEmail" style="display: none;" runat="server" class="alert alert-success">
                            Seu cadastro foi enviado com sucesso!<br />
                            Agora é só aguardar e aproveitar as nossas novidades.
                        </div>
                    </div>
                </form>
            </div>

            <div id="footer"></div>
        </div>
    </form>
</body>
</html>
