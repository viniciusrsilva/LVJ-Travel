<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aeronaves.aspx.cs" Inherits="LVJ.restrito.aeronaves1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Aeronaves | LVJ Travel</title>

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/jquery.maskedinput.js"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="Estilos/aeronaves.css">
    <link rel="shortcut icon" href="/img/favicon.ico" />

    <meta charset="utf-8">
    <meta name="viewport" content="width = device-width, initial-scale=1">
</head>

<body data-spy="scroll" data-targer=".navbar" data-offset="50">
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
                <a class="navbar-brand" href="inicio-restrito.aspx">
                    <img src="../img/logo.png" /></a>
                <span id="titulo" class="navbar-text">Aeronaves</span>
            </nav>

            <div id="divConteudo" class="container">

                <a href="adicionar-aeronave.aspx" id="btnAdicionar" class="btn btn-dark">Adicionar</a>

                <div id="tabelaAeronaves">

                    <label for="lblMensagem" runat="server"></label>

                    <asp:GridView ID="gdvAeronaves" CssClass="table table-bordered" runat="server" AutoGenerateColumns="false" OnRowCommand="gdvAeronaves_RowCommand">
                        <Columns>
                            <asp:BoundField HeaderText="ID" DataField="idaeronave" />
                            <asp:BoundField HeaderText="Nome" DataField="nomeAeronave" />
                            <asp:BoundField HeaderText="Total de Assentos First" DataField="firstAeronave" />
                            <asp:BoundField HeaderText="Total de Assentos Business" DataField="businessAeronave" />
                            <asp:BoundField HeaderText="Total de Assentos Economy" DataField="economyAeronave" />

                            <asp:TemplateField ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:LinkButton ID="Apagar" runat="server" CommandName="apagar" CommandArgument='<%# Eval("idaeronave") %>'> <span class="fa fa-trash-alt"></span></asp:LinkButton>
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
