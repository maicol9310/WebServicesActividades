﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ServicioAct.Servicios
{
    /// <summary>
    /// Descripción breve de WebServiceHoras
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class WebServiceHoras : System.Web.Services.WebService
    {

        [WebMethod]
        public string InsertarTiem(DateTime Fecha, int Horas, int IdActiv)
        {
            try
            {
                WebData.Clases.ClsAct obClsAct = new WebData.Clases.ClsAct();
                return obClsAct.InsertarTiempos(Fecha, Horas, IdActiv);
            }
            catch (Exception ex) { throw ex; }
        }
    }
}