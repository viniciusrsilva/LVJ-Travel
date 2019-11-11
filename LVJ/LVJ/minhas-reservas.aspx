<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="minhas-reservas.aspx.cs" Inherits="LVJ.minhasreservas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Minhas Reservas | LVJ Travel</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/jquery.maskedinput.js"></script>
    <link rel="stylesheet" type="text/css" href="Estilos/minhas-reservas.css">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

    <script>
        $(function () {
            $("#footer").load("footer.html");
        });
    </script>

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
                        <a id="navReservas" runat="server" class="nav-link" style="color: white; display: none" href="minhas-reservas.aspx">Minhas reservas</a>
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

        <img id="imgReservas" src="img/reservas.png" />

        <div id="reservas" class="container">

            <asp:GridView ID="gdvReservas" CssClass="table table-bordered" runat="server" AutoGenerateColumns="false" OnRowCommand="gdvReservas_RowCommand">
                <Columns>
                    <asp:BoundField HeaderText="Origem" DataField="cidadeOrigem" />
                    <asp:BoundField HeaderText="Destino" DataField="cidadeDestino" />
                    <asp:BoundField HeaderText="Data" DataField="dataViagem" />
                    <asp:BoundField HeaderText="Hora" DataField="horaPartida" />
                    <asp:BoundField HeaderText="First" DataField="reservaFirst" />
                    <asp:BoundField HeaderText="Business" DataField="reservaBusiness" />
                    <asp:BoundField HeaderText="Economy" DataField="reservaEconomy" />
                    <asp:TemplateField ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:LinkButton ID="Apagar" runat="server" CommandName="apagar" CommandArgument='<%# Eval("idviagem") %>'> <span class="fa fa-trash-alt"></span></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>

        <div id="footer"></div>
    </form>
</body>
</html>
