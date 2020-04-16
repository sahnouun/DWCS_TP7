﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercice2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            email.Text = (string)Session["user"];
            pass.Text = (string)Session["pass"];
        }
        protected void deconnexion_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("authentification.aspx");
        }
    }
}