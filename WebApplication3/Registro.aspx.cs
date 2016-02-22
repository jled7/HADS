using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppOverlay;

namespace WebApplication3
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DBUtility.connect())
            {
                Console.WriteLine("[Success] Connected to the database. ");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Boolean status = DBUtility.registerUser(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text, 0, false);
            if (status)
            {
                //Esto como lo hariamos??? con la funciona WriteFile creo que se puede hacer como con symfony una pagina predeterminada de error(para el estilo) y le pasas el error en un string nose
                //bueno igual ni lees esto xD
               // Response.Write("<h1>Todo correcto</h1>"); usar redirect
            }
            else
            {
                //Response.Write("<h1>Todo incorrecto</h1>");
            }
            
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            DBUtility.close();
        }
    }
}