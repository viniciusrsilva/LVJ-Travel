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
    public partial class minhasreservas : System.Web.UI.Page
    {
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
                    DataTable reser = new DataTable();
                    nMostrarDados reserva = new nMostrarDados();

                    int cliente = Convert.ToInt32(Session["idCliente"]);

                    reserva.recuperarReservas(reser, cliente);

                    gdvReservas.DataSource = reser;
                    gdvReservas.DataBind();
                }

                if (Session["nomeCliente"] != null)
                {
                    loginNome.InnerHtml = Session["nomeCliente"].ToString();
                    loginNome.Style.Value = "color:white; display:block;";

                    linkLogin.Style.Value = "display:none;";
                    linkCadastro.Style.Value = "display:none;";
                    navReservas.Style.Value = "color:white; display:block;";
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

        protected void gdvReservas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            nMostrarDados reser = new nMostrarDados();
            reser.idViagem = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "apagar")
            {
                reser.excluirReserva();

                Response.Redirect("minhas-reservas.aspx");
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
            navReservas.Style.Value = "color:white; display:none;";
            sair.Style.Value = "color:white; display:none;";
            dadosPF.Style.Value = "color:white; display:none;";
            dadosPJ.Style.Value = "color:white; display:none;";

            Response.Redirect("inicio.aspx");
        }
    }
}