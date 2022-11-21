using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public static class Seguridad
    {
        public static bool SessionActiva (object User)
        {
            Trainee trainee = User != null ? (Trainee)User : null;
            if (trainee != null && trainee.Id != 0)
                return true;
            else
                return false;
        }
        public static bool EsAdmin (object User)
        {
            Trainee trainee = User != null ? (Trainee)User : null;
            return trainee != null ? trainee.Admin : false;
        }
    }
}
