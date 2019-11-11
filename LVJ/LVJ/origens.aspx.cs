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
    public partial class origens : System.Web.UI.Page
    {
        nOrigens origem = new nOrigens();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable ori = new DataTable();
            nOrigens origem = new nOrigens();

            origem.recuperarOrigem(ori);

            gdvOrigens.DataSource = ori;
            gdvOrigens.DataBind();
        }

        protected void btnSalvar_ServerClick(object sender, EventArgs e)
        {
            try
            {
                Page.Validate();
                if (Page.IsValid == true)
                {
                    origem.cidadeOrigem = txtOrigem.Value;
                    origem.cadastrarNovo();

                    Response.Redirect("origens.aspx");
                }
            }
            catch (Exception ex)
            {
                string erro = ex.Message;
            }
            
        }

        protected void gdvOrigens_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}