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
    public partial class aeronaves : System.Web.UI.Page
    {
        nAeronave aeronave = new nAeronave();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["idAdm"] == null || Session["idAdm"].ToString() == "0")
                {
                    Response.Redirect("administrativo.aspx");
                }
            }
        }

        protected void btnSalvar_ServerClick(object sender, EventArgs e)
        {
            try
            {
                Page.Validate();
                if (IsValid == true)
                {
                    aeronave.nomeAeronave = txtNome.Value;
                    aeronave.firstAeronave = Convert.ToInt32(txtFirst.Value);
                    aeronave.businessAeronave = Convert.ToInt32(txtBusiness.Value);
                    aeronave.economyAeronave = Convert.ToInt32(txtEconomy.Value);

                    aeronave.cadastarNovo();

                    txtNome.Value = "";
                    txtFirst.Value = "";
                    txtBusiness.Value = "";
                    txtEconomy.Value = "";

                    Response.Redirect("aeronaves.aspx");
                }
            }
            catch (Exception ex)
            {
                string erro = ex.Message;
            }
        }
    }
}