using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class verConectados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList alumnos = (ArrayList) Application.Contents["Alumnos"];
            ArrayList profesores = (ArrayList)Application.Contents["Profesores"];
            int contadorAlumno = 0;
            int contadorProfesor = 0;
            ListaAlumnos.Text = "";
            ListaProfesores.Text = "";
            foreach (String alumno in alumnos)   {
                ListaAlumnos.Text += alumno.ToString() + '\n';
                contadorAlumno++;
            }
            foreach (String profesor in profesores)
            {
                ListaProfesores.Text += profesor.ToString() + '\n';
                contadorProfesor++;
            }
            contadorProfesores.Text = contadorProfesor.ToString();
            contadorAlumnos.Text = contadorAlumno.ToString();
        }
    }
}