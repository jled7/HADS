using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;
using System.Data.SqlClient;
using AppOverlay;

namespace WebApplication3
{
    public partial class ImportarTarea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DBUtility.connect())
            {
                Console.WriteLine("[Success] Connected to the database. ");
            }
            Xml1.DocumentSource = Server.MapPath("app_data/" + DropDownList1.SelectedValue + ".xml");
            Xml1.TransformSource = Server.MapPath("app_data/XSLTFile.xsl"); 
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            Xml1.DocumentSource= Server.MapPath("app_data/"+ DropDownList1.SelectedValue + ".xml");
            Xml1.TransformSource=Server.MapPath("app_data/XSLTFile.xsl"); 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                 XmlDocument document = new XmlDocument();
                document.Load(Server.MapPath("app_data/" + DropDownList1.SelectedValue + ".xml"));

                XmlNodeList tareas = document.GetElementsByTagName("tarea");
                DataTable dTable = new DataTable();
                DataSet dSet = new DataSet();         
                SqlCommand command = new SqlCommand("SELECT * FROM TareasGenericas", DBUtility.connection);
                SqlDataAdapter dAdapter = new SqlDataAdapter(command);
                SqlCommandBuilder commandBuilder = new SqlCommandBuilder(dAdapter);
                dAdapter.Fill(dSet, "Tareas");
                dTable = dSet.Tables["Tareas"];

                for (int i = 0; i < tareas.Count; i++)
                {
                    DataRow row = dTable.NewRow();

                    row["Codigo"] = tareas[i].ChildNodes[0].ChildNodes[0].Value;
                    row["Descripcion"] = tareas[i].ChildNodes[1].ChildNodes[0].Value;
                    row["CodAsig"] = DropDownList1.SelectedValue;
                    row["HEstimadas"] = Int32.Parse(tareas[i].ChildNodes[2].ChildNodes[0].Value.ToString());
                    row["Explotacion"] = tareas[i].ChildNodes[3].ChildNodes[0].Value;
                    row["TipoTarea"] = tareas[i].ChildNodes[4].ChildNodes[0].Value;

                    dTable.Rows.Add(row);
                }

                dAdapter.Update(dSet, "Tareas");
                dTable.AcceptChanges();
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Introducido correctamente.";
            } catch (Exception ex) {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Ha ocurrido un error importando las tareas a la BD";
            }

           
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            DBUtility.close();
        }
    }
}