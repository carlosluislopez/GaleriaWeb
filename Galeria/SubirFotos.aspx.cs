using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace Galeria
{
    public partial class SubirFotos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("~/login.aspx", true);
            }
        }

        protected void btnSubir_Click(object sender, EventArgs e)
        {
            try
            {
                string Extension = string.Empty;
                string Nombre = string.Empty;

                using (SqlConnection conexi = new SqlConnection(ConfigurationManager.ConnectionStrings["UsuarioDBEntitiesConnectionString"].ToString()))
                using (SqlCommand cmd = new SqlCommand(@"insert into dbo.Galeria(IdUsuario, Foto)
                                                                 values (@Usuario, @Foto)"
                                                       , conexi)
                                                      )
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("Usuario", Session["Usuario"]);
                    cmd.Parameters.AddWithValue("Foto", FileUpload1.FileBytes);
                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();
                }

                Response.Redirect("~/Galeria.aspx", true);

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                //lblMensaje.Text = ex.Message.ToString();
            }                  
        }
    }
}