using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;

namespace WebApplication3
{
    public partial class ExportarTarea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
DataView view = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            
DataTable table = view.ToTable("tarea");

DataSet ds = new DataSet("tareas");
ds.Tables.Add(table);

ds.WriteXml(Server.MapPath("app_data/" + DropDownList1.SelectedValue + "_E.xml"));

XmlDocument document = new XmlDocument();
document.Load(Server.MapPath("app_data/" + DropDownList1.SelectedValue + "_E.xml"));

XmlNodeList tareas = document.GetElementsByTagName("tareas");

XmlAttribute attr = document.CreateAttribute("xmlns:has");
attr.Value = "http://ji.ehu.es/has";
tareas[0].Attributes.Append(attr);
document.Save(Server.MapPath("app_data/"+DropDownList1.SelectedValue + "_E.xml" ));

Label1.ForeColor = System.Drawing.Color.Green;
Label1.Text = "Introducido correctamente.";

        }
    }
}