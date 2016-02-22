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
        public static SqlConnection connection;
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
            numConfirmacion = (int)(random.NextDouble() * 9000000) + 1000000;
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
        public static Boolean login(String correo, String password)
        {
            int count;
            string commandString = "SELECT count(*) FROM USUARIOS where correo = '" + correo + "' and password = '" + password + "'";
            command = new SqlCommand(commandString, connection);
            try
            {
                count = (int)command.ExecuteScalar();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("[Error] Unable to execute command. " + ex);
                return false;
            }
            if (count == 1)
            {
                return true;
            }
            return false;
        }
        public static Boolean isUserRegistered(String correo)
        {
            int count;
            string commandString = "SELECT count(*) FROM USUARIOS where correo = '" + correo + "'";
            command = new SqlCommand(commandString, connection);
            try
            {
                count = (int)command.ExecuteScalar();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("[Error] Unable to execute command. " + ex);
                return false;
            }
            if (count == 1)
            {
                return true;
            }
            return false;
        }
        public static Boolean isUserConfirmed(String correo)
        {
            int count;
            string commandString = "SELECT count(*) FROM USUARIOS where correo = '" + correo + "' and confirmado = 'True'";
            command = new SqlCommand(commandString, connection);
            try
            {
                count = (int)command.ExecuteScalar();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("[Error] Unable to execute command. " + ex);
                return false;
            }
            if (count == 1)
            {
                return true;
            }
            return false;
        }
        public static Boolean isConfirmCodeSame(String correo, String numConfirmacion)
        {
            int count;
            string commandString = "SELECT count(*) FROM USUARIOS where correo = '" + correo + "' and numConfirmacion = '" + numConfirmacion + "'";
            command = new SqlCommand(commandString, connection);
            try
            {
                count = (int)command.ExecuteScalar();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("[Error] Unable to execute command. " + ex);
                return false;
            }
            if (count == 1)
            {
                return true;
            }
            return false;
        }
        public static Boolean confirmUser (String correo)
        {
            string commandString = "UPDATE USUARIOS SET confirmado= 'True' WHERE correo = '" + correo + "'";
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
            return true;
        }
        public static string getRecoveryQuestion(string correo)
        {
            string preguntaSecreta;
            string commandString = "SELECT preguntaSecreta FROM USUARIOS where correo = '" + correo + "'";
            command = new SqlCommand(commandString, connection);
            try
            {
                preguntaSecreta = command.ExecuteScalar().ToString();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("[Error] Unable to execute command. " + ex);
                return null;
            }
            return preguntaSecreta;
        }
        public static Boolean checkRecoveryQuestion(string correo, string answer)
        {
            string respuestaSecreta;
            string commandString = "SELECT respuestaSecreta FROM USUARIOS where correo = '" + correo + "'";
            command = new SqlCommand(commandString, connection);
            try
            {
                respuestaSecreta = command.ExecuteScalar().ToString();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("[Error] Unable to execute command. " + ex);
                return false;
            }
            if (String.Compare(respuestaSecreta, answer) == 0)
            {
                return true;
            }
            return false;
        }
        public static Boolean changePassword(string correo, string newPassword)
        {
            string commandString = "UPDATE USUARIOS SET password= '" + newPassword + "' WHERE correo = '" + correo + "'";
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
            return true;
        }
        public static void close()
        {
            connection.Close();
        }
    }
}
