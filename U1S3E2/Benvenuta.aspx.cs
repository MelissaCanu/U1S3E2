using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace U1S3E2
{
    public partial class Benvenuta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["User_Cookie"] == null) // Se il cookie non esiste, ovvero l'utente non è loggato
            {
                Response.Redirect("Default.aspx"); // Reindirizzo l'utente alla pagina di login
            }
            else
            {
                // Se il cookie esiste, ovvero l'utente è loggato
                // Visualizzo il nome utente salvato nel cookie
                user_details.Text = "Benvenut* " + Request.Cookies["User_Cookie"]["Username"];
            }
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            // Elimino il cookie dal browser del client
            Response.Cookies["User_Cookie"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("Default.aspx"); // Reindirizzo l'utente alla pagina di login

        }
    }
}