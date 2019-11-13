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
	public partial class inicio : System.Web.UI.Page
	{
        nInicio marketing = new nInicio();
        
		protected void Page_Load(object sender, EventArgs e)
        { 
            if (!IsPostBack)
            {
                preencherOrigem();

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

        protected void preencherOrigem()
        {
            DataTable origens = new DataTable();
            nMostrarDados origem = new nMostrarDados();
            origem.recuperarOrigem(origens);

            ddlOrigem.DataSource = origens;
            ddlOrigem.DataTextField = "cidadeOrigem";
            ddlOrigem.DataValueField = "idorigem";
            ddlOrigem.DataBind();

            ddlOrigem.Items.Insert(0, new ListItem("Selecione a origem", "0"));
        } 

        protected void ddlOrigem_SelectedIndexChanged(object sender, EventArgs e)
        {
            preencherDestino();
            ddlDestino.Enabled = true;
        }  

        protected void ddlDestino_SelectedIndexChanged(object sender, EventArgs e)
        {
            preencherData();
            ddlDataPartida.Enabled = true;
        }

        protected void ddlDataPartida_SelectedIndexChanged(object sender, EventArgs e)
        {
            preencherHora();
            ddlHoraPartida.Enabled = true;
        }

        protected void ddlHoraPartida_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnProcurar.Disabled = false;
        }

        protected void preencherDestino()
        {
            string selOrigem = ddlOrigem.SelectedValue;
            DataTable destinos = new DataTable();
            nMostrarDados destino = new nMostrarDados();

            destino.recuperarDestino(selOrigem, destinos);

            ddlDestino.DataSource = destinos;
            ddlDestino.DataTextField = "cidadeDestino";
            ddlDestino.DataValueField = "iddestinos";
            ddlDestino.DataBind();

            ddlDestino.Items.Insert(0, new ListItem("Selecione o destino", "0"));
        }

        protected void preencherData()
        {
            string selOrigem = ddlOrigem.SelectedValue;
            string selDestino = ddlDestino.SelectedValue;
            DataTable datas = new DataTable();
            nMostrarDados data = new nMostrarDados();

            data.recuperarData(selOrigem, selDestino, datas);

            ddlDataPartida.DataSource = datas;
            ddlDataPartida.DataTextField = "dataViagem";
            ddlDataPartida.DataValueField = "dataViagem";
            ddlDataPartida.DataBind();

            ddlDataPartida.Items.Insert(0, new ListItem("Selecione", "0"));
        }

        protected void preencherHora()
        {
            string selOrigem = ddlOrigem.SelectedValue;
            string selDestino = ddlDestino.SelectedValue;

            DataTable horas = new DataTable();
            nMostrarDados hora = new nMostrarDados();
            hora.recuperarHora(selOrigem, selDestino, horas);

            ddlHoraPartida.DataSource = horas;
            ddlHoraPartida.DataTextField = "horaPartida";
            ddlHoraPartida.DataValueField = "horaPartida";
            ddlHoraPartida.DataBind();

            ddlHoraPartida.Items.Insert(0, new ListItem("Selecione", "0"));
        }

        protected void btnCadastrar_ServerClick(object sender, EventArgs e)
        {
            try
            {
                Page.Validate();
                if (IsValid == true)
                {
                    marketing.emailMarketing = txtnewsletter.Value;

                    marketing.cadastrarNovo();

                    divEmail.Style.Value = "display:block;";

                    txtnewsletter.Value = "";
                }
            }
            catch (Exception ex)
            {
                string erro = ex.Message;
            }
        }

        protected void btnProcurar_ServerClick(object sender, EventArgs e)
        {
            Session["origem"] = ddlOrigem.SelectedValue.ToString();
            Session["destino"] = ddlDestino.SelectedValue.ToString();
            Session["data"] = ddlDataPartida.SelectedValue.ToString();
            Session["hora"] = ddlHoraPartida.SelectedValue.ToString();

            if (Session["idCliente"] == null || Session["idCliente"].ToString() == "0")
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Redirect("escolha-assento.aspx");
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