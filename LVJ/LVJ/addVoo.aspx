<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addVoo.aspx.cs" Inherits="LVJ.addVoo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Cadastro de Voos e Viagens | LVJ Travel</title>

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/jquery.maskedinput.js"></script>

    <link rel="stylesheet" type="text/css" href="Estilos/addVoo.css">
    <link rel="shortcut icon" href="img/favicon.ico" />

    <meta name="viewport" content="width = device-width, initial-scale=1">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
                <a class="navbar-brand" href="inicioRestrito.html">
                    <img src="img/logo.png" /></a>
                <span id="titulo" class="navbar-text">Cadastro de Voos e Viagens</span>
            </nav>

            <div id="divVoosAdd" class="container">

                <h6>Adicionando novo voo</h6>

                <label for="lblAeronave">Aeronave:</label><br />
                <asp:DropDownList ID="ddlAeronave" CssClass="form-control" runat="server" AutoPostBack="false"></asp:DropDownList>

                <div class="row">
                    <div class="col-6">
                        <label for="lblOrigem">Origem:</label><br />
                        <asp:DropDownList ID="ddlOrigem" CssClass="form-control" runat="server" AutoPostBack="false"></asp:DropDownList>
                    </div>

                    <div class="col-6">
                        <label for="lblOrigem">Destino:</label><br />
                        <asp:DropDownList ID="ddlDestino" CssClass="form-control" runat="server" AutoPostBack="false"></asp:DropDownList>
                    </div>
                </div>

                <div class="row">
                    <div class="col-6">
                        <label for="lblData">Data de partida:</label>
                        <div id="data" class="form-control">
                            <input type="text" id="txtData" runat="server" required />
                            <img id="imgCalendario" src="img/calendario.png" />
                        </div>
                    </div>

                    <div class="col-6">
                        <label for="lblHora">Hora de partida:</label>
                        <input type="text" id="txtHora" runat="server" class="form-control" required />
                    </div>
                </div>

                <button id="btnSalvarVoo" type="submit" class="btn btn-dark" runat="server" onserverclick>Salvar</button>
            </div>
        </div>

    </form>
</body>
</html>
