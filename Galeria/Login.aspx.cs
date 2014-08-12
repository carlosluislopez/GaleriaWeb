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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                Response.Redirect("~/Galeria.aspx", true);
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Page.Validate("login");

            if (!Page.IsValid)
                return;


            var strQuery = @"select u.Id from dbo.Usuario u with(nolock) where u.Nombre = @paramNombre and u.Password = @paramPass";

            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["UsuarioDBEntitiesConnectionString"].ConnectionString);
            SqlCommand command = new SqlCommand(strQuery, connection);

            command.Parameters.AddWithValue("paramNombre", txtNombre.Text);
            command.Parameters.AddWithValue("paramPass", txtClave.Text);

            SqlDataAdapter ada = new SqlDataAdapter(command);
            var dt = new DataTable("Galeria");

            ada.Fill(dt);

            if(dt.Rows.Count == 0)
                Response.Redirect("~/Login.aspx", true);

            Session.Add("Usuario", dt.Rows[0]["Id"]);
            Response.Redirect("~/Galeria.aspx", true);
        }
    }
}