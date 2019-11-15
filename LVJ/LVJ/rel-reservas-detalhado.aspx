<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rel-reservas-detalhado.aspx.cs" Inherits="LVJ.rel_reservas_detalhado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Relatórios | LVJ Travel</title>

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/jquery.maskedinput.js"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

    <link rel="shortcut icon" href="img/favicon.ico" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h4>
                <img src="img/logo-cinza.png" />
                Reservas por cliente
            </h4>

            <asp:GridView ID="gdvReservas" CssClass="table table-bordered" runat="server" AutoGenerateColumns="false" OnRowCommand="gdvReservas_RowCommand">
                <Columns>
                    <asp:BoundField HeaderText="ID Cliente" DataField="cliente_idcliente" />
                    <asp:BoundField HeaderText="Nome Cliente" DataField="nomeCliente" />
                    <asp:BoundField HeaderText="Origem" DataField="cidadeOrigem" />
                    <asp:BoundField HeaderText="Destino" DataField="cidadeDestino" />
                    <asp:BoundField HeaderText="Data" DataField="dataViagem" />
                    <asp:BoundField HeaderText="Hora" DataField="horaPartida" />
                    <asp:BoundField HeaderText="Data/Hora Reserva" DataField="emissao" />
                    <asp:BoundField HeaderText="First" DataField="reservaFirst" />
                    <asp:BoundField HeaderText="Business" DataField="reservaBusiness" />
                    <asp:BoundField HeaderText="Economy" DataField="reservaEconomy" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
