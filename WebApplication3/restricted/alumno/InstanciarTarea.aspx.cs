using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using AppOverlay;

namespace WebApplication3
{
    public partial class InstanciarTarea1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["email"].ToString();
            if (Request["codigo"] != null)
            {
                var codigo = Request["codigo"];
                Label2.Text = codigo;
            }

            GridView1.DataSource = DBUtility.getTareasEstudiante(Session["email"].ToString());
            GridView1.DataBind();
      
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Boolean status = DBUtility.instanciarTarea(Label1.Text, Label2.Text, Int32.Parse(TextBox1.Text), Int32.Parse(TextBox2.Text));
            if(status)
            {
                GridView1.DataBind();
            }
        }
    }
}