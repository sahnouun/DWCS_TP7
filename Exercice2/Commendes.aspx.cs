using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Exercice2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        public static SqlConnection con = new SqlConnection(" Data Source=DESKTOP-NMPTJF2@SQLEXPRESS;Initial Catalog=Gestion_ventes;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            Mes_Commendes();
        }
        private void Mes_Commendes()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Commande c  where c.NumClient='" + (string)Session["NumClient"] + "'", con);
            mes_commendes.DataSource = cmd.ExecuteReader();
            mes_commendes.DataBind();
            con.Close();

        }
    }
}