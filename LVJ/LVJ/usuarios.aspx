<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="LVJ.restrito._usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Usuários Administrativos | LVJ Travel</title>

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script src="../Scripts/jquery.maskedinput.js"></script>


    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

    <script type="text/javascript">
        $(document).ready(
            function () {
                $("#txtCPF").mask("999.999.999-99");
            });
    </script>

    <link rel="stylesheet" type="text/css" href="Estilos/usuarios.css">
    <link rel="shortcut icon" href="img/favicon.ico" />

    <meta charset="utf-8">
    <meta name="viewport" content="width = device-width, initial-scale=1">
</head>

<body data-spy="scroll" data-targer=".navbar" data-offset="50">
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
                <a class="navbar-brand" href="inicio-restrito.aspx">
                    <img src="../img/logo.png" /></a>
                <span id="titulo" class="navbar-text">Usuários Administrativos</span>
            </nav>

            <div id="divUsuarios" class="container">

                <h5>Cadastro de usuários</h5>

                <div class="form-group">
                    <div class="row">
                        <div class="col-6">
                            <label for="lblNome">Nome:</label>
                            <input type="text" id="txtNome" runat="server" class="form-control" />
                            <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtNome" EnableClientScript="false" ErrorMessage="Informe o nome do usuário"></asp:RequiredFieldValidator>
                        </div>

                        <div class="col-6">
                            <label for="lblCPF">CPF:</label>
                            <input type="text" id="txtCPF" runat="server" class="form-control" />
                            <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtCPF" EnableClientScript="false" ErrorMessage="Informe o CPF"></asp:RequiredFieldValidator>
                        </div>

                        <div class="col-6">
                            <label for="lblEmail">E-mail:</label>
                            <input type="email" id="txtEmail" runat="server" class="form-control" />
                            <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtEmail" EnableClientScript="false" ErrorMessage="Informe o e-mail"></asp:RequiredFieldValidator>
                        </div>

                        <div class="col-6">
                            <label for="lblSenha">Senha:</label>
                            <input type="password" id="txtSenha" runat="server" class="form-control" />
                            <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtSenha" EnableClientScript="false" ErrorMessage="Informe a senha"></asp:RequiredFieldValidator>
                        </div>
                        
                        <button id="salvarUsuario" type="submit" runat="server" onserverclick="salvarUsuario_ServerClick" class="btn btn-dark">Salvar</button>
                    </div>
                </div>

                    <h6>Usuários Cadastrados</h6>
                    <asp:GridView ID="gdvUsuarios" CssClass="table table-bordered" runat="server" AutoGenerateColumns="false" OnRowCommand="gdvUsuarios_RowCommand">
                        <Columns>
                            <asp:BoundField HeaderText="Nome" DataField="nomeAdm" />
                            <asp:BoundField HeaderText="CPF" DataField="cpfAdm" />
                            <asp:BoundField HeaderText="E-mail" DataField="emailAdm" />

                            <asp:TemplateField ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:LinkButton ID="Apagar" runat="server" CommandName="apagar" CommandArgument='<%# Eval("idAdm") %>'> <span class="fas fa-user-minus"></span></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
    </form>
</body>
</html>
