﻿using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;

namespace AppSecurity
{
    public class AppSecurity
    {
        public static string SMTP_SERVER = "smtp.btconnect.com";
        public static Boolean sendConfirmEmail(string mail, int numConfirmacion)
        {
            SmtpClient client = new SmtpClient(SMTP_SERVER, 25);

            MailAddress from = new MailAddress("admin@appname.com", "Admin", System.Text.Encoding.UTF8);

            MailAddress to = new MailAddress(mail);

            MailMessage message = new MailMessage(from, to);
            message.Body = "<a href='http://localhost:50555/confirmar.aspx?mbr=" + mail +"&numconf=" + numConfirmacion + "'>Haga click para confirmar</a>";
            message.BodyEncoding = System.Text.Encoding.UTF8;
            message.Subject = "Confirmación cuenta";
            message.SubjectEncoding = System.Text.Encoding.UTF8;
            try
            {
                client.SendAsync(message, "token");
            }
            catch (Exception ex)
            {
                Console.WriteLine("[Error] Unable to send email. " + ex);
                return false;
            }
            
            return true;
        }

        public static string encriptar(string text) {

            byte[] bytes = Encoding.UTF8.GetBytes(text);
            SHA256Managed hashstring = new SHA256Managed();
            byte[] hash = hashstring.ComputeHash(bytes);
            string hashString = string.Empty;
            foreach (byte x in hash)
            {
                hashString += String.Format("{0:x2}", x);
            }
            return hashString;
        }
    }
}
