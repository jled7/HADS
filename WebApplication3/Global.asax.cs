using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication3
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            ArrayList alumnos = new ArrayList();
            ArrayList profesores = new ArrayList();
            Application.Contents["Alumnos"] = alumnos;
            Application.Contents["Profesores"] = profesores;

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            String sessionType;
            String email;
            ArrayList temp;
            sessionType = Session["tipo"].ToString();
            if (sessionType.Equals("A")) {
                temp = (ArrayList) Application.Contents["Alumnos"];
                email = Session["email"].ToString();
                temp.Remove(email);
                Application.Contents["Alumnos"] = temp;
            } else if (sessionType.Equals("P")) {
                temp = (ArrayList) Application.Contents["Profesores"];
                email = Session["email"].ToString();
                temp.Remove(email);
                Application.Contents["Profesores"] = temp;
            }
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}