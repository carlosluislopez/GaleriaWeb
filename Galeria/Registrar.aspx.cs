using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galeria
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/index.aspx");
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Page.Validate("usuario");
            if (!Page.IsValid)
            {
                return;
            }

            SqlDataSource1.Insert();
            Response.Redirect("~/index.aspx", true);

        }
    }
}