<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="voos.aspx.cs" Inherits="LVJ.voos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Voos e Viagens | LVJ Travel</title>

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/jquery.maskedinput.js"></script>

    <link rel="stylesheet" type="text/css" href="Estilos/voos.css">
    <link rel="shortcut icon" href="img/favicon.ico" />

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
                <a class="navbar-brand" href="inicio-restrito.aspx">
                    <img src="img/logo.png" /></a>
                <span id="titulo" class="navbar-text">Voos e Viagens</span>
            </nav>

            <div id="divVoos" class="container">

                <a href="adicionar-voo.aspx" id="btnAdicionarVoo" class="btn btn-dark">Adicionar</a>

                <div id="tabelaVoos">
                    <h6>Voos e Viagens Cadastrados</h6>
                    
                    <asp:GridView ID="gdvVoos" CssClass="table table-bordered" runat="server" AutoGenerateColumns="false" OnRowCommand="gdvVoos_RowCommand">
                        <Columns>
                            <asp:BoundField HeaderText="Nº Voo" DataField="idvoo" />
                            <asp:BoundField HeaderText="Aeronave" DataField="nomeAeronave" />
                            <asp:BoundField HeaderText="Origem" DataField="cidadeOrigem" />
                            <asp:BoundField HeaderText="Destino" DataField="cidadeDestino" />
                            <asp:BoundField HeaderText="Data" DataField="dataViagem" DataFormatString="{0:dd/MM/yyyy}"/>
                            <asp:BoundField HeaderText="Hora" DataField="horaPartida" />

                            <asp:TemplateField ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="Apagar" runat="server" CommandName="apagar" CommandArgument='<%# Eval("idvoo") %>'> <span class="fa fa-trash-alt"></span></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
