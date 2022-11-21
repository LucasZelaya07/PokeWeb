using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public class TraineeNegocio
    {

        public int InsertarNuevo(Trainee nuevo)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearProcedimiento("InsertarNuevo");
                datos.setearParametro("@Email",nuevo.Email);
                datos.setearParametro("@Password", nuevo.Password);
                return datos.ejecutarAccionScalar();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }
        public bool Login(Trainee trainee)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("Select ID, Email, Password, Admin FROM USERS Where Email = @Email And Password = @Password");
                datos.setearParametro("@Email", trainee.Email);
                datos.setearParametro("@Password", trainee.Password);
                datos.ejecutarLectura();
                if(datos.Lector.Read())
                {
                    trainee.Id = (int)datos.Lector["Id"];
                    trainee.Admin = (bool)datos.Lector["Admin"];
                    return true;
                }
                return false;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
    }
}
