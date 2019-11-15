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
    public partial class rel_reservas_detalhado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idAdm"] == null || Session["idAdm"].ToString() == "0")
            {
                Response.Redirect("administrativo.aspx");
            }
            else
            {
                DataTable reservas = new DataTable();
                nRelReservas reserva = new nRelReservas();

                reserva.recuperarReservasCompleto(reservas);

                gdvReservas.DataSource = reservas;
                gdvReservas.DataBind();
            }
        }

        protected void gdvReservas_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}