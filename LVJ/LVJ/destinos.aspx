<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="destinos.aspx.cs" Inherits="LVJ.destinos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Destinos | LVJ Travel</title>

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/jquery.maskedinput.js"></script>

    <link rel="stylesheet" type="text/css" href="Estilos/origensDestinos.css">
    <link rel="shortcut icon" href="img/favicon.ico" />

    <meta charset="utf-8">
    <meta name="viewport" content="width = device-width, initial-scale=1">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
                <a class="navbar-brand" href="inicio-restrito.aspx">
                    <img src="img/logo.png" /></a>
                <span id="titulo" class="navbar-text">Destinos de viagens</span>
            </nav>

            <div id="divConteudo" class="container">
                <div id="adicionar">
                    <div class="form-group">

                        <label id="lblNome">País / Cidade:</label>
                        <input type="text" id="txtDestino" runat="server" class="form-control" />
                        <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtDestino" EnableClientScript="false" ErrorMessage="Informe o nome do destino"></asp:RequiredFieldValidator>

                        <button type="submit" id="btnSalvar" runat="server" class="btn btn-dark" onserverclick="btnSalvar_ServerClick">Salvar</button>
                    </div>
                </div>

                <div id="tabelaOrigensdestinos">

                    <asp:GridView ID="gdvDestinos" CssClass="table table-bordered" runat="server" AutoGenerateColumns="false" OnRowCommand="gdvDestinos_RowCommand">
                        <Columns>
                            <asp:BoundField HeaderText="País / Cidade" DataField="cidadeDestino" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
