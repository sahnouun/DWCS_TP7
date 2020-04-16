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
    public partial class WebForm5 : System.Web.UI.Page
    {
        public static SqlConnection con = new SqlConnection(" Data Source=DESKTOP-NMPTJF2@SQLEXPRESS;Initial Catalog=Gestion_ventes;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            categiries.AutoPostBack = true;

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("SELECT DISTINCT catégorie FROM Article", con);
                con.Open();
                categiries.DataSource = cmd.ExecuteReader();
                categiries.DataTextField = "catégorie";
                categiries.DataBind();
                categiries.Items.Insert(0, "--Sélectionner une ville--");
                con.Close();
            }
        }
              protected void categiries_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("select * from Article where catégorie='" + categiries.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            articles.DataSource = dt;
            articles.DataBind();
            con.Close();
        }
    }
    
}