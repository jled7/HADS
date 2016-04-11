using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Alumno1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["email"] != null)
            //{
            //    switch (Session["tipo"].ToString())
            //    {
            //        case "P":
            //            Response.Redirect("~/Profesor.aspx", true);
            //            break;
            //    }
            //}
            //else
            //{
            //    Response.Redirect("Inicio.aspx");
            //}
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            System.Web.Security.FormsAuthentication.SignOut();
            Session.Abandon();
            Response.Redirect("/Inicio.aspx");
        }
    }
}