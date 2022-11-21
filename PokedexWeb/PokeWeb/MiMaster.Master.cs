using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;

namespace PokeWeb
{
    public partial class MiMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Page is Login || Page is Default || Page is Registro || Page is Contact || Page is Error))
            {
                if (!Seguridad.SessionActiva(Session["Trainee"]))
                    Response.Redirect("Login.aspx", false);
            }
        }


        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx", false);
        }
    }
}