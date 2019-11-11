using LVJ.Negocio;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LVJ
{
    public partial class informacoes_clientePF : System.Web.UI.Page
    {
        nCadastroPF PF = new nCadastroPF();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["idCliente"] == null || Session["idCliente"].ToString() == "0")
                {
                    Response.Redirect("login.aspx");
                }
                else
                {
                    int idCliente = Convert.ToInt32(Session["idCliente"]);

                    preencherEstado();
                    if (idCliente != 0)
                    {
                        PF.buscarPF(idCliente);
                        txtNome.Value = PF.nomePF;
                        txtSobrenome.Value = PF.sobrenomePF;
                        txtNascimento.Value = PF.dataNascimentoPF;
                        txtCPF.Value = PF.cpfPF;
                        txtRG.Value = PF.rgPF;
                        txtTelefone.Value = PF.telefoneCliente;
                        txtCelular.Value = PF.celularCliente;
                        txtCEP.Value = PF.cepCliente;
                        ddlEstado.SelectedValue = PF.estado.idestado.ToString();
                        txtCidade.Value = PF.municipioCliente;
                        txtLogradouro.Value = PF.logradouroCliente;
                        txtNcasa.Value = PF.numeroCliente;
                        txtBairro.Value = PF.bairroCliente;
                    }
                }

                if (Session["nomeCliente"] != null)
                {
                    loginNome.InnerHtml = Session["nomeCliente"].ToString();
                    loginNome.Style.Value = "color:white; display:block;";

                    linkLogin.Style.Value = "display:none;";
                    linkCadastro.Style.Value = "display:none;";
                    reservas.Style.Value = "color:white; display:block;";
                    sair.Style.Value = "color:white; display:block;";

                    if (Session["tipoPessoa"].ToString() == "PF")
                    {
                        dadosPF.Style.Value = "color:white; display:block;";
                    }
                    else
                    {
                        dadosPJ.Style.Value = "color:white; display:block;";
                    }
                }
            }
        }

        protected void salvar_ServerClick(object sender, EventArgs e)
        {
            int idCliente = Convert.ToInt32(Session["idCliente"]);

            PF.cepCliente = txtCEP.Value;
            PF.logradouroCliente = txtLogradouro.Value;
            PF.numeroCliente = txtNcasa.Value;
            PF.bairroCliente = txtBairro.Value;
            PF.estado.idestado = Convert.ToInt32(ddlEstado.SelectedValue);
            PF.municipioCliente = txtCidade.Value;
            PF.telefoneCliente = txtTelefone.Value;
            PF.celularCliente = txtCelular.Value;

            PF.editarPF(idCliente);
            Session["idCliente"] = null;
        }

        protected void preencherEstado()
        {
            DataTable estados = new DataTable();
            nEstado estado = new nEstado();
            estado.recuperarEstado(estados);

            ddlEstado.DataSource = estados;
            ddlEstado.DataTextField = "nomeEstado";
            ddlEstado.DataValueField = "idestado";
            ddlEstado.DataBind();

            ddlEstado.Items.Insert(0, new ListItem("Selecione a origem", "0"));
        }

        protected void sair_ServerClick(object sender, EventArgs e)
        {
            Session["nomeCliente"] = null;
            Session["idCliente"] = null;
            Session["tipoPessoa"] = null;

            loginNome.Style.Value = "color:white; display:none;";
            linkLogin.Style.Value = "display:block;";
            linkCadastro.Style.Value = "display:block;";
            reservas.Style.Value = "color:white; display:none;";
            sair.Style.Value = "color:white; display:none;";
            dadosPF.Style.Value = "color:white; display:none;";
            dadosPJ.Style.Value = "color:white; display:none;";

            Response.Redirect("inicio.aspx");
        }
    }
}