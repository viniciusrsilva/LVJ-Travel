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
    public partial class rel_clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable clientes = new DataTable();
            nRelClientes cliente = new nRelClientes();

            cliente.recuperarClientes(clientes);

            gdvClientes.DataSource = clientes;
            gdvClientes.DataBind();
        }

        protected void gdvClientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}