using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace exercice1
{
    public partial class Gestion_client : System.Web.UI.Page
    {
        public static SqlConnection con = new SqlConnection(" Data Source=DESKTOP-NMPTJF2@SQLEXPRESS;Initial Catalog=Gestion_ventes;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            charg_grid();

            if (!IsPostBack)
            {

                dville.Items.Add("Marrakech");
                dville.Items.Add("Rabat");
                dville.Items.Add("Case");
                dville.Items.Add("frs");
            }
            Num_client();
        }
        private void charg_grid()
        {
            SqlCommand cmd = new SqlCommand("select * from client", con);
            con.Open();
            all_Clients.DataSource = cmd.ExecuteReader();
            all_Clients.DataBind();
            con.Close();
        }
        private void Ajouter()
        {
            SqlCommand cmd = new SqlCommand("insert into client values('" + Nom.Text + "','" + tAdresse.Text + "','" + dville.Text + "','" + tel.Text + "','" + Login.Text + "','" + tpass_comfirmation.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Num_client();
            Response.Write("<script>alert('Ajouter avec succes');</script>");
        }
        private void modifier()
        {
            SqlCommand cmd = new SqlCommand("update client set Nom='" + Nom.Text + "',Adresse='" + tAdresse.Text + "',Ville='" + dville.Text + "',Tel='" + tel.Text + "', Login='" + Login.Text + "',Pass='" + tpass_comfirmation.Text + "' where NumClient='" + Num.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Modifier avec succes');</script>");
        }
        private void supprimer()
        {
            SqlCommand cmd = new SqlCommand("delete from client where NumClient='" + Num.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Supprimer avec succes');</script>");
        }
        private void Num_client()
        {
            SqlCommand cmd = new SqlCommand("select top 1 NumClient from client order by NumClient desc", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                int value = int.Parse(dr[0].ToString()) + 1;

                Num.Text = value.ToString();
            }
            con.Close();
        }
        private void rechercher()
        {
            SqlCommand cmd = new SqlCommand("select * from client where NumClient='" + Num.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Nom.Text = dr[1].ToString();
                tAdresse.Text = dr[2].ToString();
                //dville.SelectedValue = dr[3].ToString();
                tel.Text = dr[4].ToString();
                Login.Text = dr[5].ToString();
                tpass.Text = dr[6].ToString();
                tpass_comfirmation.Text = dr[6].ToString();
            }
            else
            {
                Response.Write("<script>alert('aucun client');</script>");
            }
            con.Close();
        }

        protected void badd_Click(object sender, EventArgs e)
        {
            if (badd.Text == "Ajouter")
            {
                Ajouter();
                charg_grid();
                badd.Text = "Nouveau";
            }
            else
            {
                Num_client();
                Nom.Text = "";

                tel.Text = "";
                tpass.Text = "";
                tpass_comfirmation.Text = "";
                Login.Text = "";
                tAdresse.Text = "";

            }


        }

        protected void bupdate_Click(object sender, EventArgs e)
        {
            modifier();
            charg_grid();
        }

        protected void bdelete_Click(object sender, EventArgs e)
        {
            supprimer();
            charg_grid();
        }

        protected void bsearch_Click(object sender, EventArgs e)
        {
            rechercher();
            charg_grid();
        }
    }

}