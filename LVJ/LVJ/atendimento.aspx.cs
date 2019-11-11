using System;
using System.Collections.Generic;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LVJ
{
    public partial class atendimento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["idCliente"] == null)
                {
                    Session["idCliente"] = "0";
                }
            }

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

        protected void btnEnviar_ServerClick(object sender, EventArgs e)
        {
            try
            {
                Page.Validate();
                if (Page.IsValid == true)
                {
                    MailMessage mail = new MailMessage();
                    mail.To.Add("lvjtravel@gmail.com");
                    mail.From = new MailAddress("lvjtravel@gmail.com");
                    mail.Subject = "[Site] Contato";
                    mail.Body = txtNome.Value + " <" + txtEmail.Value + "> " + txtCelular.Value + " enviou :\n"
                        + txtMensagem.Value;

                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                    client.EnableSsl = true;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.UseDefaultCredentials = false;
                    client.Credentials =
                        new System.Net.NetworkCredential("lvjtravel@gmail.com", "lvjunilago");

                    client.Send(mail);

                    txtNome.Value = "";
                    txtEmail.Value = "";
                    txtCelular.Value = "";
                    txtMensagem.Value = "";

                    divAtendimento.Style.Value = "display:block;";
                }
            }
            catch (Exception ex)
            {
                string erro = ex.Message;
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