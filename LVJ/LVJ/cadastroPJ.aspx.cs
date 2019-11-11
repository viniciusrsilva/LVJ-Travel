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
    public partial class cadastroPJ : System.Web.UI.Page
    {
        nCadastroPJ PJ = new nCadastroPJ();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                preencherEstado();

                if (Session["idCliente"] == null)
                {
                    Session["idCliente"] = "0";
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

        protected void salvarPJ_ServerClick(object sender, EventArgs e)
        {
            try
            {
                Page.Validate();
                if (Page.IsValid == true)
                {
                    PJ.cepCliente = txtCEP.Value;
                    PJ.logradouroCliente = txtLogradouro.Value;
                    PJ.numeroCliente = txtNcasa.Value;
                    PJ.bairroCliente = txtBairro.Value;
                    PJ.estado.idestado = Convert.ToInt32(ddlEstado.SelectedValue);
                    PJ.municipioCliente = txtCidade.Value;
                    PJ.emailCliente = txtEmail.Value;
                    PJ.senhaCliente = txtsenha.Value;
                    PJ.telefoneCliente = txtTelefone.Value;
                    PJ.celularCliente = txtCelular.Value;

                    PJ.razaoSocialPJ = txtRazao.Value;
                    PJ.cnpjPJ = txtCNPJ.Value;

                    PJ.cadastrarNovo();

                    Session["cadastrando"] = "sim";

                    Response.Redirect("sucesso.aspx");
                }
            } catch (Exception exp)
            {
                string erro = exp.Message;
            }  
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