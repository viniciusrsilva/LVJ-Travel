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
    public partial class adicionarVoo : System.Web.UI.Page
    {
        nAdicionarVoo voo = new nAdicionarVoo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["idAdm"] == null || Session["idAdm"].ToString() == "0")
                {
                    Response.Redirect("administrativo.aspx");
                }
                else
                {
                    preencherAeronave();
                    preencherOrigem();
                    preencherDestino();
                }
            }
        }

        protected void btnSalvarVoo_ServerClick(object sender, EventArgs e)
        {
            try
            {
                Page.Validate();
                if (Page.IsValid == true)
                {
                    voo.aeronave.idaeronave = Convert.ToInt32(ddlAeronave.SelectedValue);
                    voo.origem.idorigem = Convert.ToInt32(ddlOrigem.SelectedValue);
                    voo.destino.iddestinos = Convert.ToInt32(ddlDestino.SelectedValue);
                    voo.dataViagem = txtData.Value;
                    voo.horaPartida = txtHora.Value;

                    voo.cadastrarNovo();

                    txtData.Value = "";
                    txtHora.Value = "";

                    Response.Redirect("voos.aspx");
                }
            }
            catch (Exception exp)
            {
                string erro = exp.Message;
            }
        }

        protected void preencherAeronave()
        {
            DataTable aeronaves = new DataTable();
            nAeronave aeronave = new nAeronave();
            aeronave.recuperarAeronave(aeronaves);

            ddlAeronave.DataSource = aeronaves;
            ddlAeronave.DataTextField = "nomeAeronave";
            ddlAeronave.DataValueField = "idAeronave";
            ddlAeronave.DataBind();

            ddlAeronave.Items.Insert(0, new ListItem("Selecione a aeronave", "0"));

        }

        protected void preencherOrigem()
        {
            DataTable origens = new DataTable();
            nOrigens origem = new nOrigens();
            origem.recuperarOrigem(origens);

            ddlOrigem.DataSource = origens;
            ddlOrigem.DataTextField = "cidadeOrigem";
            ddlOrigem.DataValueField = "idorigem";
            ddlOrigem.DataBind();

            ddlOrigem.Items.Insert(0, new ListItem("Selecione a origem", "0"));
        }

        protected void preencherDestino()
        {
            DataTable destinos = new DataTable();
            nDestinos destino = new nDestinos();
            destino.recuperarDestino(destinos);

            ddlDestino.DataSource = destinos;
            ddlDestino.DataTextField = "cidadeDestino";
            ddlDestino.DataValueField = "iddestinos";
            ddlDestino.DataBind();

            ddlDestino.Items.Insert(0, new ListItem("Selecione o destino", "0"));
        }
    }
}