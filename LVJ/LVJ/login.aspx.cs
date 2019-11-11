using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LVJ.Negocio;

namespace LVJ
{
    public partial class login : System.Web.UI.Page
    {
        nLogin dadosLogin = new nLogin();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nomeCliente"] != null)
            {
                loginNome.InnerHtml = Session["nomeCliente"].ToString();
                loginNome.Style.Value = "color:white; display:block;";

                linkLogin.Style.Value = "display:none;";
                linkCadastro.Style.Value = "display:none;";
                reservas.Style.Value = "color:white; display:block";
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

        protected void btnAcessar_ServerClick(object sender, EventArgs e)
        {
            string email = txtEmail.Value;
            string senha = txtsenha.Value;

            bool ok = nLogin.ValidarLogin(email, senha);

            if (ok)
            {
                dadosLogin.buscarID(txtEmail.Value);

                Session["idCliente"] = dadosLogin.idCliente;
                Session["nomeCliente"] = dadosLogin.nomeCliente;
                Session["tipoPessoa"] = dadosLogin.tipoPessoa;

                if(Session["origem"] == null || Session["destino"] == null || Session["data"] == null || Session["hora"] == null)
                {
                    Response.Redirect("minhas-reservas.aspx");
                }
                else
                {
                    Response.Redirect("escolha-assento.aspx");
                }
                
            }
            else
            {
                divErro.Style.Value = "display:block;";
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