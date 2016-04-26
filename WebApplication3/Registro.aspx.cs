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
            comprobarMatricula.Matriculas wsComp = new comprobarMatricula.Matriculas();
            comprobarDNI comprobarDNI = new comprobarDNI();
            if (!comprobarDNI.comprobar(TextBox5.Text))
            {
                errorMessage.Text = "DNI incorrecto";
            }
            if (wsComp.comprobar(TextBox1.Text).Equals("SI"))
            {
                Boolean status = DBUtility.registerUser(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text, 0, false);
                if (status)
                {
                    Response.Redirect("~/Correcto.aspx");
                }
                else
                {
                    errorMessage.Text = "Ya existe un usuario con ese correo";
                }

          }
          else
            {
                errorMessage.Text = "El usuario no esta matriculado.";
            }
        }
        

        protected void Page_Unload(object sender, EventArgs e)
        {
            DBUtility.close();
        }
    }
}