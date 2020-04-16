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
    public partial class WebForm6 : System.Web.UI.Page
    {
        public static SqlConnection con = new SqlConnection(" Data Source=DESKTOP-NMPTJF2@SQLEXPRESS;Initial Catalog=Gestion_ventes;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dville.Items.Add("Marrakech");
                dville.Items.Add("Rabat");
                dville.Items.Add("Casa");
            }
        }
        private void ajouter()
        {
            SqlCommand cmd = new SqlCommand("insert into client values('" + Nom.Text + "','" + tAdresse.Text + "','" + dville.Text + "','" + tel.Text + "','" + Login.Text + "','" + tpass_comfirmation.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Bien Ajouter');</script)");
        }

        protected void binscription_Click(object sender, EventArgs e)
        {
            ajouter();
            Response.Redirect("authentification.aspx");
        }
    }
}