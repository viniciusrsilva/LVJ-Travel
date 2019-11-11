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
    public partial class voos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idAdm"] == null || Session["idAdm"].ToString() == "0")
            {
                Response.Redirect("administrativo.aspx");
            }
            else
            {
                DataTable voos = new DataTable();
                nVoo voo = new nVoo();

                voo.recuperarVoo(voos);

                gdvVoos.DataSource = voos;
                gdvVoos.DataBind();
            }
        }

        protected void gdvVoos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            nVoo voo = new nVoo();
            voo.idvoo = Convert.ToInt32(e.CommandArgument);

            if(e.CommandName == "apagar")
            {
                voo.excluirVoo();

                Response.Redirect("voos.aspx");
            }
        }
    }
}