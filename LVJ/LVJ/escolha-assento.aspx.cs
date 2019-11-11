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
    public partial class escolhaAssento : System.Web.UI.Page
    {
        nEscolhaAssento escolha = new nEscolhaAssento();
        protected void Page_Load(object sender, EventArgs e)
        {
            erroFirst.Style.Value = "display:none;";
            erroBusiness.Style.Value = "display:none;";
            erroEconomy.Style.Value = "display:none;";

            if (!IsPostBack)
            {
                if (Session["origem"] == null || Session["destino"] == null || Session["data"] == null || Session["hora"] == null)
                {
                    Response.Redirect("inicio.aspx");
                }
                else
                {
                    string origem = Session["origem"].ToString();
                    string destino = Session["destino"].ToString();
                    string data = Session["data"].ToString();
                    string hora = Session["hora"].ToString();

                    escolha.buscarVoo(origem, destino, data, hora);
                    escolha.buscaReservado(escolha.idvoo.idvoo);

                    int reservadoFirst = escolha.reservadoFirst;
                    int reservadoBusiness = escolha.reservadoBusiness;
                    int reservadoEconomy = escolha.reservadoEconomy;

                    escolha.saldoVoo(origem, destino, data, hora, reservadoFirst, reservadoBusiness, reservadoEconomy);

                    Session["voo"] = escolha.idvoo.idvoo;

                    txtOrigem.Value = escolha.origem;
                    txtDestino.Value = escolha.destino;
                    txtDia.Value = escolha.dia;
                    txtHora.Value = escolha.hora;
                    txtFirst.Value = escolha.idvoo.first.ToString();
                    txtBusiness.Value = escolha.idvoo.business.ToString();
                    txtEconomy.Value = escolha.idvoo.economy.ToString();
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
        }

        protected void btnSalvar_ServerClick(object sender, EventArgs e)
        {
            try
            {
                if (Convert.ToInt32(resFirst.Value) == 0 && Convert.ToInt32(resBusiness.Value)==0 && Convert.ToInt32(resEconomy.Value) == 0)
                {
                    divErro.Style.Value = "display:block;";
                }
                else if (Convert.ToInt32(resFirst.Value) < 0 || Convert.ToInt32(resBusiness.Value) < 0 || Convert.ToInt32(resEconomy.Value) < 0)
                {
                    divErro2.Style.Value = "display:block;";
                }
                else
                {
                    if (Convert.ToInt32(resFirst.Value) > Convert.ToInt32(txtFirst.Value))
                    {
                        erroFirst.Style.Value = "display:block;";
                    }
                    else if (Convert.ToInt32(resBusiness.Value) > Convert.ToInt32(txtBusiness.Value))
                    {
                        erroBusiness.Style.Value = "display:block;";
                    }
                    else if (Convert.ToInt32(resEconomy.Value) > Convert.ToInt32(txtEconomy.Value))
                    {
                        erroEconomy.Style.Value = "display:block;";
                    }
                    else
                    {
                        escolha.idCliente.idCliente = Session["idCliente"].ToString();
                        escolha.resFirst = Convert.ToInt32(resFirst.Value);
                        escolha.resBusiness = Convert.ToInt32(resBusiness.Value);
                        escolha.resEconomy = Convert.ToInt32(resEconomy.Value);
                        string voo = Session["voo"].ToString();

                        Session["origem"] = null;
                        Session["destino"] = null;
                        Session["data"] = null;
                        Session["hora"] = null;

                        escolha.reservar(voo);

                        Response.Redirect("minhas-reservas.aspx");
                    }

                    
                } 
            }
            catch (Exception exp)
            {
                string erro = exp.Message;
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