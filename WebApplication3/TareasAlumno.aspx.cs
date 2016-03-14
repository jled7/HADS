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
    public partial class TareasAlumno1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                DropDownList1.DataSource = DBUtility.getAsignaturas(Session["email"].ToString());
                DropDownList1.DataTextField = "codigo";
                DropDownList1.DataBind();
            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = DBUtility.getTareas(DropDownList1.SelectedValue.ToString());
            GridView1.DataBind();
        }


        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Response.Redirect("InstanciarTarea.aspx&codigo=" + GridView1.Rows[e.RowIndex].Cells[1].Text);
        }


    }
}