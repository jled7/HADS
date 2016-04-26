using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Services;

namespace WebApplication3
{
    /// <summary>
    /// Descripción breve de comprobarDNI
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class comprobarDNI : System.Web.Services.WebService
    {
        public const string CORRESPONDENCIA = "TRWAGMYFPDXBNJZSQVHLCKE";

        [WebMethod]
        public Boolean comprobar(String dni)
        {
            dni = dni.ToUpper();
            Match match = new Regex(@"\b(\d{8}[A-Z])\b").Match(dni);
            if (match.Success)
                return CORRESPONDENCIA[int.Parse(dni.Substring(0, 8)) % 23] == dni.ElementAt(8);
            else
                return false;
        }
    }
}
