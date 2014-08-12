using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Galeria
{
    public partial class Galeria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["Usuario"] == null)
                {
                    Response.Redirect("~/login.aspx", true);
                }
                var strQuery = String.Format(@"SELECT [Id], [Foto] FROM [Galeria] where IdUsuario = {0}", Session["Usuario"]);

                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["UsuarioDBEntitiesConnectionString"].ConnectionString);
                SqlCommand command = new SqlCommand(strQuery, connection);
                SqlDataAdapter ada = new SqlDataAdapter(command);
                var dt = new DataTable("Galeria");

                ada.Fill(dt);

                gvImages.DataSource = dt;

                gvImages.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            
        }

        protected void btnSubir_Click(object sender, EventArgs e)
        {
            
        }
    }
}