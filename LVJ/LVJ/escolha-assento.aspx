<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="escolha-assento.aspx.cs" Inherits="LVJ.escolhaAssento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Escolha de assento | LVJ Travel</title>

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

    <link rel="stylesheet" type="text/css" href="Estilos/escolhaAssento.css">
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

        <img id="imgBusca" src="img/reserva-passagem.png" />

        <div id="conteudo" class="container">
        <div id="origemDestino" class="form-group">
            <div class="row">
                <div class="col-3">
                    <label><b>Saindo de</b></label>
                    <input type="text" id="txtOrigem" runat="server" class="form-control" disabled />
                </div>

                <div class="col-3">
                    <label><b>Chegando em</b></label>
                    <input type="text" id="txtDestino" runat="server" class="form-control" disabled />
                </div>

                <div class="col-3">
                    <label id="lblTitulo"><b>Dia</b></label>
                    <input type="text" id="txtDia" runat="server" class="form-control" disabled />
                </div>

                <div class="col-3">
                    <label id="lblTitulo"><b>Hora</b></label>
                    <input type="text" id="txtHora" runat="server" class="form-control" disabled />
                </div>
            </div>
        </div>
            
            
            
            <h5>Assentos disponíveis:</h5>

            <div class="row">
                <div class="col-4">
                    <div class="card">
                        <div class="card-header"><strong>First</strong></div>
                        <div class="card-body">
                            <input type="text" id="txtFirst" runat="server" class="form-control" disabled>
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card">
                        <div class="card-header"><strong>Business</strong></div>
                        <div class="card-body">
                            <input type="text" id="txtBusiness" runat="server" class="form-control" disabled>
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card">
                        <div class="card-header"><strong>Economy</strong></div>
                        <div class="card-body">
                            <input type="text" id="txtEconomy" runat="server" class="form-control" disabled>
                        </div>
                    </div>
                </div>
            </div>


            <h5 id="tituloReservar">Reservar:</h5>
            <div class="row" id="reserva">
                <div class="col-4">
                    <div class="card">
                        <div class="card-header"><strong>First</strong></div>
                        <div class="card-body">
                            <input type="number" id="resFirst" runat="server" class="form-control" value="0" min="0">
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card">
                        <div class="card-header"><strong>Business</strong></div>
                        <div class="card-body">
                            <input type="number" id="resBusiness" runat="server" class="form-control" value="0" min="0">
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card">
                        <div class="card-header"><strong>Economy</strong></div>
                        <div class="card-body">
                            <input type="number" id="resEconomy" runat="server" class="form-control" value="0" min="0">
                        </div>
                    </div>
                </div>
            </div>

            <div class="alert alert-danger" id="divErro" style="display: none;" runat="server"><strong>Erro!</strong> Você precisa escolher no mínimo uma passagem para continuar.</div>
            <div class="alert alert-danger" id="divErro2" style="display: none;" runat="server"><strong>Erro!</strong> Não é possível reservar menos de uma passagem.</div>
            <div class="alert alert-danger" id="erroFirst" style="display: none;" runat="server"><strong>Erro!</strong> Quantidade de assentos na classe First indisponível. Por favor verifique a quantidade solicitada.</div>
            <div class="alert alert-danger" id="erroBusiness" style="display: none;" runat="server"><strong>Erro!</strong> Quantidade de assentos na classe Business indisponível. Por favor verifique a quantidade solicitada.</div>
            <div class="alert alert-danger" id="erroEconomy" style="display: none;" runat="server"><strong>Erro!</strong> Quantidade de assentos na classe Economy indisponível. Por favor verifique a quantidade solicitada.</div>

            <button id="btnSalvar" class="btn btn-dark" runat="server" onserverclick="btnSalvar_ServerClick" type="button">Salvar</button>
        </div>

        <div id="footer"></div>
    </form>
</body>
</html>
