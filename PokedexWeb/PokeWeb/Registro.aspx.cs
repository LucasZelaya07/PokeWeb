using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace PokeWeb
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            try
            {
                Trainee user = new Trainee();
                TraineeNegocio negocio = new TraineeNegocio();
                EmailService emailService = new EmailService();

                user.Email = txtEmail.Text;
                user.Password = txtPassword.Text;
                user.Id = negocio.InsertarNuevo(user);
                Session.Add("Trainee", user);
                emailService.ArmarCorreo(user.Email, "Bienvenid@ trainee", "Hola te doy la bienvenida a mi primera app");
                emailService.EnviarCorreo();
                Response.Redirect("Default.aspx", false);
            }
            catch (Exception ex)
            {

                Session.Add("Error", ex.ToString());
            }
        }
    }
}