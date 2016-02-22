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
            Boolean status = DBUtility.login(TextBox1.Text, TextBox2.Text);
            if (status)
            {
                if (DBUtility.isUserConfirmed(TextBox1.Text))
                    Response.Redirect("~/placeholder.aspx", true);
                else
                    errorMessage.Text = "Confirme el usuario";

            } 
            else
            errorMessage.Text = "Login incorrecto";
        }
        protected void Page_Unload(object sender, EventArgs e)
        {
            DBUtility.close();
        }
    }
}