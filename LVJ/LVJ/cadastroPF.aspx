<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastroPF.aspx.cs" Inherits="LVJ.cadastroPF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastre-se | LVJ Travel</title>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/jquery.maskedinput.js"></script>
    <link rel="stylesheet" type="text/css" href="Estilos/cadastroPF.css">

    <script type="text/javascript">
        $(document).ready(
            function () {
                $("#txtCPF").mask("999.999.999-99");
                $("#txtCEP").mask("99.999-999");
                $("#txtTelefone").mask("(99) 9999-9999");
                $("#txtCelular").mask("(99) 99999-9999");
            });
    </script>

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

        <img id="imgCadastro" src="img/cadastre-se.png" />

        <div id="conteudo" class="container">
            <h4>Faça seu cadastro e agilize sua reserva. É rápido!​</h4>
            <p id="pOpcao">Todos os campos são obrigatórios.​</p>

            <div id="dadosPessoais">
                <div class="card">
                    <div class="card-header"><strong>Dados Pessoais</strong></div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="lbNome">Nome:</label>
                                    <input type="text" id="txtNome" class="form-control" runat="server" required maxlength="45" />
                                    <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtNome" EnableClientScript="false" ErrorMessage="Preencha o nome"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="form-group">
                                    <label for="lblSobrenome">Sobrenome:</label>
                                    <input type="text" id="txtSobrenome" class="form-control" runat="server" required maxlength="45" />
                                    <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtSobrenome" EnableClientScript="false" ErrorMessage="Preencha o sobrenome"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="form-group">
                                    <label for="lblNascimento">Data de Nascimento:</label>
                                    <input type="date" id="txtDtNascimento" class="form-control" runat="server" required />
                                    <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtDtNascimento" EnableClientScript="false" ErrorMessage="Preencha a data de nascimento"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-6">
                                <label for="lblGenero">Gênero:</label><br />
                                <asp:RadioButton ID="masculino" Text="Masculino" GroupName="genero" runat="server" /><br />
                                <asp:RadioButton ID="feminino" Text="Feminino" GroupName="genero" runat="server" />
                            </div>

                            <div class="col-6">
                                <div class="form-group">
                                    <label for="lblCPF">CPF:</label>
                                    <input type="text" id="txtCPF" class="form-control" runat="server" required />
                                    <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtCPF" EnableClientScript="false" ErrorMessage="Preencha o CPF"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="form-group">
                                    <label for="lblRG">RG:</label>
                                    <input type="text" id="txtRG" class="form-control" runat="server" required  maxlength="45"/>
                                    <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtRG" EnableClientScript="false" ErrorMessage="Preencha o RG"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group col-6">
                                <label for="lblTelefone">Telefone:</label>
                                <input type="text" id="txtTelefone" class="form-control" runat="server" maxlength="14" />
                            </div>

                            <div class="form-group col-6">
                                <label for="lblCelular">Celular:</label>
                                <input type="text" id="txtCelular" class="form-control" runat="server" maxlength="15" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="dadosAcesso">
                <div class="card">
                    <div class="card-header"><strong>Dados de Acesso</strong></div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="lblEmail">Email:</label>
                                    <input type="text" id="txtEmail" runat="server" class="form-control" required maxlength="45" />
                                    <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtEmail" EnableClientScript="false" ErrorMessage="Preencha o e-mail"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="form-group">
                                    <label for="lblSenha">Senha:</label>
                                    <input type="password" id="txtsenha" runat="server" class="form-control" required maxlength="15" />
                                    <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtSenha" EnableClientScript="false" ErrorMessage="Preencha a senha"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="endereco">
                <div class="card">
                    <div class="card-header"><strong>Endereço</strong></div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="lblCEP">CEP:</label>
                                    <input type="text" id="txtCEP" runat="server" class="form-control" required maxlength="10" />
                                    <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtCEP" EnableClientScript="false" ErrorMessage="Preencha o CEP"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="form-group">
                                    <label for="lblEstado">Estado:</label><br />
                                    <asp:DropDownList ID="ddlEstado" CssClass="form-control" runat="server" AutoPostBack="false"></asp:DropDownList>
                                    <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="ddlEstado" EnableClientScript="false" ErrorMessage="Selecione o estado"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="form-group">
                                    <label for="lblCidade">Cidade:</label>
                                    <input type="text" id="txtCidade" runat="server" class="form-control" required maxlength="45" />
                                    <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtCidade" EnableClientScript="false" ErrorMessage="Preencha a cidade"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="form-group">
                                    <label for="lblLogradouro">Logradouro:</label>
                                    <input type="text" id="txtLogradouro" runat="server" class="form-control" required maxlength="45" />
                                    <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtLogradouro" EnableClientScript="false" ErrorMessage="Preencha o logradouro"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="form-group">
                                    <label for="lblNcasa">Número:</label>
                                    <input type="text" id="txtNcasa" runat="server" class="form-control" required maxlength="45" />
                                    <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtNcasa" EnableClientScript="false" ErrorMessage="Preencha o número"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="form-group">
                                    <label for="lblBairro">Bairro:</label>
                                    <input type="text" id="txtBairro" runat="server" class="form-control" maxlength="45" />
                                    <asp:RequiredFieldValidator Display="Static" ValidationGroup="validacao" runat="server" ControlToValidate="txtBairro" EnableClientScript="false" ErrorMessage="Preencha o bairro"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="btnSalvar" class="form-group">
                <button class="btn btn-dark" id="salvarPF" type="submit" runat="server" onserverclick="salvarPF_ServerClick1">Salvar</button>
            </div>
        </div>

        <div id="footer"></div>
    </form>
</body>
</html>
