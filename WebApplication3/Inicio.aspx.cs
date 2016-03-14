using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppOverlay;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
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
            char status = DBUtility.login(TextBox1.Text, TextBox2.Text);
            if (!DBUtility.isUserConfirmed(TextBox1.Text))
            {
                errorMessage.Text = "Confirme el usuario";
            }
            else 
            {
                switch (status)
                {
                    case 'P':
                        Session["email"] = TextBox1.Text;
                        Response.Redirect("~/TareasProfesor.aspx", true);
                        break;
                    case 'A': 
                        Session["email"] = TextBox1.Text;
                        Response.Redirect("~/TareasAlumno.aspx", true);
                        break;
                    default:
                        errorMessage.Text = "Login incorrecto";
                        break;
                }
            }         

        }
        protected void Page_Unload(object sender, EventArgs e)
        {
            DBUtility.close();
        }
    }
}