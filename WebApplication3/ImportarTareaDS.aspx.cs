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
    public partial class ImportarTareaDS : System.Web.UI.Page
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

            Xml1.DocumentSource = Server.MapPath("app_data/" + DropDownList1.SelectedValue + ".xml");
            Xml1.TransformSource = Server.MapPath("app_data/XSLTFile.xsl");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                DataSet dSet = new DataSet();
                SqlCommand command = new SqlCommand("SELECT * FROM TareasGenericas", DBUtility.connection);
                SqlDataAdapter dAdapter = new SqlDataAdapter(command);
                SqlCommandBuilder commandBuilder = new SqlCommandBuilder(dAdapter);

                dSet.ReadXml(Server.MapPath("app_data/" + DropDownList1.SelectedValue + ".xml"));
                dSet.Tables[0].Columns.Add("CodAsig");

                foreach (DataRow dRow in dSet.Tables[0].Rows)
                {
                    dRow["CodAsig"] = DropDownList1.SelectedValue;
                }

                dAdapter.Update(dSet.Tables[0]);
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Introducido correctamente.";
            }
            catch (Exception ex)
            {
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