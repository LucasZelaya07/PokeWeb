using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
using System.Net;

namespace negocio
{
    public class EmailService
    {
        private MailMessage Email;
        private SmtpClient Server;

        public EmailService()
        {
            Server = new SmtpClient();
            Server.Credentials = new NetworkCredential("ff01e6ec42e120", "78e6c7a7b640fb");
            Server.EnableSsl = true;
            Server.Port = 2525;
            Server.Host = "smtp.mailtrap.io";
        }
        public void ArmarCorreo(string EmailDestino, string Asunto, string Mensaje)
        {
            Email = new MailMessage();
            Email.From = new MailAddress("pepito@gmail.com");
            Email.To.Add(EmailDestino);
            Email.Subject = Asunto;
            Email.IsBodyHtml = true;
            Email.Body = Mensaje;
        }
        public void EnviarCorreo()
        {
            try
            {
                Server.Send(Email);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
