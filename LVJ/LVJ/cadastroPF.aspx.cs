using LVJ.Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace LVJ
{
    public partial class cadastroPF : System.Web.UI.Page
    {
        nCadastroPF PF = new nCadastroPF();
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

        protected void preencherEstado()
        {
            DataTable estados = new DataTable();
            nEstado estado = new nEstado();
            estado.recuperarEstado(estados);

            ddlEstado.DataSource = estados;
            ddlEstado.DataTextField = "nomeEstado";
            ddlEstado.DataValueField = "idestado";
            ddlEstado.DataBind();

            ddlEstado.Items.Insert(0, new ListItem("Selecione o estado", "0"));

        }

        protected void salvarPF_ServerClick1(object sender, EventArgs e)
        {
            try
            {
                Page.Validate();
                if (Page.IsValid == true)
                {
                    PF.cepCliente = txtCEP.Value;
                    PF.logradouroCliente = txtLogradouro.Value;
                    PF.numeroCliente = txtNcasa.Value;
                    PF.bairroCliente = txtBairro.Value;
                    PF.estado.idestado = Convert.ToInt32(ddlEstado.SelectedValue);
                    PF.municipioCliente = txtCidade.Value;
                    PF.emailCliente = txtEmail.Value;
                    PF.senhaCliente = txtsenha.Value;
                    PF.telefoneCliente = txtTelefone.Value;
                    PF.celularCliente = txtCelular.Value;

                    PF.nomePF = txtNome.Value;
                    PF.sobrenomePF = txtSobrenome.Value;
                    PF.masculino = masculino.Checked;
                    PF.feminino = feminino.Checked;
                    PF.cpfPF = txtCPF.Value;
                    PF.rgPF = txtRG.Value;
                    PF.dataNascimentoPF = txtDtNascimento.Value;
                
                    PF.cadastarNovo();

                    Session["cadastrando"] = "sim";
                    
                    Response.Redirect("sucesso.aspx");
                }
            }
            catch (Exception exp)
            {
                string erro = exp.Message;
            }
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