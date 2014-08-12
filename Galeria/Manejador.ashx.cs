using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Galeria
{
    /// <summary>
    /// Summary description for Manejador
    /// </summary>
    public class Manejador : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string imageid = context.Request.QueryString["ImID"];  // este ImID qué se supone que es? lo tengo que tener definido en alguún lado? en la base de datos? donde?   

            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["UsuarioDBEntitiesConnectionString"].ConnectionString);
            connection.Open();

            SqlCommand command = new SqlCommand("SELECT [Foto] FROM [Galeria] where [Id]=" + imageid, connection);
            SqlDataReader dr = command.ExecuteReader();
            dr.Read();

            context.Response.BinaryWrite((Byte[])dr[0]);
            connection.Close();

            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}