using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using AppSecurity;

namespace AppOverlay
{
    public class DBUtility
    {
        static SqlConnection connection;
        static SqlCommand command;
        public static Boolean connect()
        {
            connection = new SqlConnection();
            connection.ConnectionString = "Server=tcp:hads10.database.windows.net,1433;Database=HADS10-USUARIOS;User Id=hads10@hads10;Password=3simbolodeBatman;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            try
            {
                connection.Open();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("[Error] Unable to connect to server." + ex);
                return false;
            }
            return true;
        }

        public static Boolean registerUser(String correo, String nombre, String apellidos, String DNI, String password, String preguntaSecreta, String respuestaSecreta, int numConfirmacion, Boolean confirmado)
        {
            Random random = new Random((int)DateTime.Now.Ticks & 0x0000FFFF); // Seed depende del tiempo
            numConfirmacion = (int) (random.NextDouble() * 9000000) + 1000000;
            string commandString = "INSERT INTO USUARIOS VALUES ('" + correo + "', '" + nombre + "', '" + apellidos + "', '" + DNI + "', '" + password + "', '" + preguntaSecreta + "', '" + respuestaSecreta + "', '" + numConfirmacion + "', '" + confirmado + "')";
            command = new SqlCommand(commandString, connection);
            try
            {
                command.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("[Error] Unable to execute command. " + ex);
                return false;
            }
            AppSecurity.AppSecurity.sendConfirmEmail(correo, numConfirmacion);
            return true;
        }

        public static void close()
        {
            connection.Close();
        }
    }
}
