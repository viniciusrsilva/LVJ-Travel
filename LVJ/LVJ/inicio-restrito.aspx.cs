using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LVJ
{
    public partial class inicio_restrito : System.Web.UI.Page
    {
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
    }
}