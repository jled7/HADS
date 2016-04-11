using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppOverlay;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["email"] != null)
            {
                switch (Session["tipo"].ToString())
                {
                    case "P":
                        Response.Redirect("/restricted/profesor/Profesor.aspx", true);
                        break;
                    case "A":
                        Response.Redirect("/restricted/alumno/Alumno.aspx", true);
                        break;
                    
                }
            }
            if (DBUtility.connect())
            {
                Console.WriteLine("[Success] Connected to the database. ");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            char status = DBUtility.login(TextBox1.Text, TextBox2.Text);
            if (status == 'P' || status == 'A')
            {
                if (!DBUtility.isUserConfirmed(TextBox1.Text))
                {
                    errorMessage.Text = "Confirme el usuario";
                }
                else
                {
                    if (TextBox1.Text.Equals("vadillo@ehu.es"))
                    {
                        Session["email"] = TextBox1.Text;
                        Session["tipo"] = "P";
                        FormsAuthentication.SetAuthCookie("vadillo", true);
                        Response.Redirect("/restricted/profesor/Profesor.aspx", true);

                    }else if(TextBox1.Text.Equals("admin@ehu.es")){
                        Session["email"] = TextBox1.Text;
                        Session["tipo"] = "P";
                        FormsAuthentication.SetAuthCookie("admin", true);
                        Response.Redirect("/restricted/admin/admin.aspx",true);
                    }
                    
                    
                    else{
                        switch (status)
                        {
                            case 'P':
                                Session["email"] = TextBox1.Text;
                                Session["tipo"] = "P";
                                FormsAuthentication.SetAuthCookie("profesor", true);
                                Response.Redirect("/restricted/profesor/Profesor.aspx", true);
                                break;
                            case 'A':
                                Session["email"] = TextBox1.Text;
                                Session["tipo"] = "A";
                                FormsAuthentication.SetAuthCookie("alumno", true);
                                Response.Redirect("/restricted/alumno/Alumno.aspx", true);
                                break;
                        }
                    }
                }
            }
            else
            {
                errorMessage.Text = "Login incorrecto";
            }

        }
        protected void Page_Unload(object sender, EventArgs e)
        {
            DBUtility.close();
        }
    }
}