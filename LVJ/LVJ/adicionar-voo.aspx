<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar-voo.aspx.cs" Inherits="LVJ.adicionarVoo" %>

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
                <a class="navbar-brand" href="inicio-restrito.aspx">
                    <img src="img/logo.png" /></a>
                <span id="titulo" class="navbar-text">Cadastro de Voos e Viagens</span>
            </nav>

            <div id="divVoosAdd" class="container">

                <h6>Adicionando novo voo</h6>

                <label for="lblAeronave">Aeronave:</label><br />
                <asp:DropDownList ID="ddlAeronave" CssClass="form-control" runat="server" AutoPostBack="false"></asp:DropDownList>
                <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="ddlAeronave" EnableClientScript="false" ErrorMessage="Selecione a aeronave"></asp:RequiredFieldValidator>

                <div class="row">
                    <div class="col-6">
                        <label for="lblOrigem">Origem:</label><br />
                        <asp:DropDownList ID="ddlOrigem" CssClass="form-control" runat="server" AutoPostBack="false"></asp:DropDownList>
                        <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="ddlOrigem" EnableClientScript="false" ErrorMessage="Selecione a origem"></asp:RequiredFieldValidator>
                    </div>

                    <div class="col-6">
                        <label for="lblOrigem">Destino:</label><br />
                        <asp:DropDownList ID="ddlDestino" CssClass="form-control" runat="server" AutoPostBack="false"></asp:DropDownList>
                        <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="ddlDestino" EnableClientScript="false" ErrorMessage="Selecione o destino"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row">
                    <div class="col-6">
                        <label for="lblData">Data de partida:</label>
                        <input type="date" id="txtData" runat="server" class="form-control border" required />
                        <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtData" EnableClientScript="false" ErrorMessage="Informe a data de partida"></asp:RequiredFieldValidator>
                    </div>

                    <div class="col-6">
                        <label for="lblHora">Hora de partida:</label>
                        <input type="time" id="txtHora" runat="server" class="form-control" required />
                        <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtHora" EnableClientScript="false" ErrorMessage="Informe a hora de partida"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <button id="btnSalvarVoo" type="button" class="btn btn-dark" runat="server" onserverclick="btnSalvarVoo_ServerClick">Salvar</button>
            </div>
        </div>
    </form>
</body>
</html>
