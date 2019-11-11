using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LVJ
{
    public partial class sucesso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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

            if(Session["cadastrando"] == null)
            {
                Response.Redirect("inicio.aspx");
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