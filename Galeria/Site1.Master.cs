using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galeria
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                hlSesionCerrar.Visible = true;
                hlSesionIniciar.Visible = false;
                //Response.Redirect("~/Galeria.aspx", true);
            }
            else
            {
                hlSesionCerrar.Visible = false;
                hlSesionIniciar.Visible = true;
                //Response.Redirect("~/Login.aspx", true);
            }
        }
    }
}