using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class ImportarTarea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            Xml1.DocumentSource= Server.MapPath("app_data/"+ DropDownList1.SelectedValue + ".xml");
            Xml1.TransformSource=Server.MapPath("app_data/XSLTFile.xsl"); 
        }
    }
}