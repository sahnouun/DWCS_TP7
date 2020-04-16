using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Exercice2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static SqlConnection con = new SqlConnection(" Data Source=DESKTOP-NMPTJF2@SQLEXPRESS;Initial Catalog=Gestion_ventes;Integrated Security=True");

        protected void blogin_Click(object sender, EventArgs e)
        {
          
            SqlDataAdapter da = new SqlDataAdapter("select * from Client c where c.Login='" + tlogin.Text + "'and c.Pass='" + tpass.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Session["NumClient"] = dt.Rows[i][0].ToString();
                Session["user"] = dt.Rows[i][5].ToString();
                Session["pass"] = dt.Rows[i][6].ToString();
            }
            Response.Redirect("Afficher_info_per.aspx");


        }
    }
}