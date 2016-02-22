using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppOverlay;

namespace WebApplication3
{
    public partial class Confirmar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DBUtility.connect())
            {
                Console.WriteLine("[Success] Connected to the database. ");
            }
            if (Request.QueryString["mbr"] != null)
            {
                string Mail = Request.QueryString["mbr"].ToString();
                if (Request.QueryString["numconf"] != null)
                {
                    string numConfirmacion = Request.QueryString["numconf"].ToString();



                    if (DBUtility.isUserRegistered(Mail) && !DBUtility.isUserConfirmed(Mail))
                    {
                        if (DBUtility.isConfirmCodeSame(Mail, numConfirmacion))
                        {
                            DBUtility.confirmUser(Mail);
                            Response.Redirect("~/Correcto.aspx", true);
                        }
                        else
                        {
                            Label1.Text = "Codigo de confirmacion incorrecto";
                        }
                    }

                }

            }

        }
        protected void Page_Unload(object sender, EventArgs e)
        {
            DBUtility.close();
        }
    }
}

