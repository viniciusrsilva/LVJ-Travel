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
    public partial class addVoo : System.Web.UI.Page
    {
        nVoo voos = new nVoo();
        protected void Page_Load(object sender, EventArgs e)
        {
            preencherAeronave();

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

          //  ddlAeronave.Items.Insert(0, new ListItem("Selecione a aeronave", "0"));
        }
    }
}