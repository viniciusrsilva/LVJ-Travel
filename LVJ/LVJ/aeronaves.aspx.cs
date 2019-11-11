using LVJ.Negocio;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LVJ.restrito
{
    public partial class aeronaves1 : System.Web.UI.Page
    {
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
                    DataTable aer = new DataTable();
                    nAeronave aeronave = new nAeronave();

                    aeronave.recuperarAeronave(aer);

                    gdvAeronaves.DataSource = aer;
                    gdvAeronaves.DataBind();
                }
            }
        }

        protected void gdvAeronaves_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            nAeronave aer = new nAeronave();
            aer.idaeronave = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "apagar")
            {
                aer.excluirAeronave();

                Response.Redirect("aeronaves.aspx");
            }
        }
    }
}