using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace U1S3E2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["User_Cookie"] != null ) // Se il cookie esiste, ovvero l'utente è loggato
            {
                Response.Redirect("Benvenuta.aspx"); // Reindirizzo l'utente alla pagina di benvenuto
            }
        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("User_Cookie"); // Creo un nuovo cookie con nome "User_Cookie"
            // salvo lo username inserito dall'utente nel cookie
            cookie["Username"] = username.Text;
            cookie.Expires = DateTime.Now.AddMinutes(60); // Cookie scade dopo 60 minuti
            Response.Cookies.Add(cookie); // Aggiungo cookie al browser del client
            Response.Redirect("Benvenuta.aspx");  // Reindirizzo l'utente alla pagina di benvenuto
        }
    }
}