﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using AppOverlay;

namespace WebApplication3
{
    /// <summary>
    /// Descripción breve de mediaHoras
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class mediaHoras : System.Web.Services.WebService
    {

        [WebMethod]
        public string media(string asig)
        {
            if (DBUtility.connect())
            {
                SqlCommand Command;
                Command.
                SqlCommand comando = new SqlCommand("SELECT AVG(HReales) as mReal FROM TareasPersonales WHERE (Codigo = @asig)", DBUtility.connection);


                    DataTable dTable = new DataTable();
                    DataSet dSet = new DataSet();


                return asig + " media";
            }
            return "media";
        }  
    }
}

//SqlCommand command = new SqlCommand("SELECT HReales FROM TareasPersonales WHERE (Codigo = ' " + asig + " ')", DBUtility.connection);
/*
          conectar()
+
+        Dim conexion As SqlConnection = getConexion()
+        Dim comando As New SqlCommand("DedicacionMediaAsignatura", conexion)
+
+        comando.CommandType = CommandType.StoredProcedure
+        comando.Parameters.AddWithValue("asig", New SqlParameter).Value = asignatura
+
+        Dim valor As String = comando.ExecuteScalar().ToString
+
+
+        cerrarConexion()
+
+        Return valor*/