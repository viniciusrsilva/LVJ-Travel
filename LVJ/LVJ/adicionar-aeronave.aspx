<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar-aeronave.aspx.cs" Inherits="LVJ.restrito.aeronaves" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro de Aeronaves | LVJ Travel</title>

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/jquery.maskedinput.js"></script>

    <link rel="stylesheet" type="text/css" href="Estilos/addAeronaves.css">
    <link rel="shortcut icon" href="../img/favicon.ico" />

    <meta charset="utf-8">
    <meta name="viewport" content="width = device-width, initial-scale=1">
</head>
<body data-spy="scroll" data-targer=".navbar" data-offset="50">
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
                <a class="navbar-brand" href="inicio-restrito.aspx">
                    <img src="/img/logo.png" /></a>
                <span id="titulo" class="navbar-text">Cadastro de Aeronaves</span>
            </nav>

            <div id="divConteudo" class="container">
                <div id="adicionar">
                    <div class="form-group">
                        <label id="lblNome">Nome:</label>
                        <input type="text" id="txtNome" runat="server" class="form-control" />
                        <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtNome" EnableClientScript="false" ErrorMessage="Informe o nome da aeronave"></asp:RequiredFieldValidator>
                    </div>

                    <div class="card">
                        <div class="card-header"><strong>Quantidade de assentos</strong></div>
                        <div class="card-body">

                                <label id="lblFirst">First</label>
                                <input type="number" id="txtFirst" runat="server" class="form-control" />
                                <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtFirst" EnableClientScript="false" ErrorMessage="Informe a quantidade de assentos para a classe First<br>"></asp:RequiredFieldValidator>
                            
                                <label id="lblBusiness">Business</label>
                                <input type="number" id="txtBusiness" runat="server" class="form-control" />
                                <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtBusiness" EnableClientScript="false" ErrorMessage="Informe a quantidade de assentos para a classe Business<br>"></asp:RequiredFieldValidator>

                                <label id="lblEconomy">Economy</label>
                                <input type="number" id="txtEconomy" runat="server" class="form-control" />
                                <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtEconomy" EnableClientScript="false" ErrorMessage="Informe a quantidade de assentos para a classe Economy<br>"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <button type="button" id="btnSalvar" runat="server" class="btn btn-dark" onserverclick="btnSalvar_ServerClick">Salvar</button>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
