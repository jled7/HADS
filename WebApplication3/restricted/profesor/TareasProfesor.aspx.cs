using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class TareasProfesor1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["email"] != null)
            //{
            //    switch (Session["tipo"].ToString())
            //    {
            //        case "A":
            //            Response.Redirect("~/Alumno.aspx", true);
            //            break;
            //    }
            //}
            //else
            //{
            //    Response.Redirect("Inicio.aspx");
            //}
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            System.Web.Security.FormsAuthentication.SignOut();
            Session.Abandon();
            Response.Redirect("/Inicio.aspx");
        }
    }
}