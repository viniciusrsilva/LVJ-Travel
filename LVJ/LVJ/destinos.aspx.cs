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
    public partial class destinos : System.Web.UI.Page
    {
        nDestinos destino = new nDestinos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idAdm"] == null || Session["idAdm"].ToString() == "0")
            {
                Response.Redirect("administrativo.aspx");
            }
            else
            {
                DataTable des = new DataTable();
                nDestinos destino = new nDestinos();

                destino.recuperarDestino(des);

                gdvDestinos.DataSource = des;
                gdvDestinos.DataBind();
            }
        }

        protected void btnSalvar_ServerClick(object sender, EventArgs e)
        {
            try
            {
                Page.Validate();
                if (Page.IsValid == true)
                {
                    destino.cidadeDestino = txtDestino.Value;
                    destino.cadastrarNovo();

                    Response.Redirect("destinos.aspx");
                }
            }
            catch (Exception ex)
            {
                string erro = ex.Message;
            }
        }

        protected void gdvDestinos_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}