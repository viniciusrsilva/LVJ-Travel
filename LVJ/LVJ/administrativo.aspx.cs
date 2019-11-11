using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LVJ.Negocio;

namespace LVJ
{
    public partial class administrativo : System.Web.UI.Page
    {
        nUsuario dadosLogin = new nUsuario();
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
        }

            protected void btnAcessar_ServerClick(object sender, EventArgs e)
            {
                dadosLogin.buscarID(txtCPF.Value);

                Session["idAdm"] = dadosLogin.idAdm;

                string cpf = txtCPF.Value;
                string senha = txtsenha.Value;

                bool ok = nUsuario.ValidarLogin(cpf, senha);

                if (ok)
                {
                    Response.Redirect("inicio-restrito.aspx");
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