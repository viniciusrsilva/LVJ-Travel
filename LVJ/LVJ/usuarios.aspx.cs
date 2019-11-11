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
    public partial class _usuarios : System.Web.UI.Page
    {
        nUsuario usuario = new nUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idAdm"] == null || Session["idAdm"].ToString() == "0")
            {
                Response.Redirect("administrativo.aspx");
            }
            else
            {
                DataTable usr = new DataTable();
                nUsuario usuario = new nUsuario();

                usuario.recuperarUsuario(usr);

                gdvUsuarios.DataSource = usr;
                gdvUsuarios.DataBind();
            }
        }

        protected void gdvUsuarios_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            nUsuario usr = new nUsuario();
            usr.idAdm = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "apagar")
            {
                usr.excluirUsuario();

                Response.Redirect("usuarios.aspx");
            }
        }

        protected void salvarUsuario_ServerClick(object sender, EventArgs e)
        {
            Page.Validate();
            if (IsValid == true)
            {
                usuario.nomeAdm = txtNome.Value;
                usuario.cpfAdm = txtCPF.Value;
                usuario.emailAdm = txtEmail.Value;
                usuario.senhaAdm = txtSenha.Value;

                usuario.cadastarNovo();

                Response.Redirect("usuarios.aspx");
            }
        }
    }
}