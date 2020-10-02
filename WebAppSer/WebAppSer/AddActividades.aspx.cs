using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppSer
{
    public partial class AddActividades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var str = System.Web.HttpContext.Current.Session["VarEmail"].ToString();

            ServiceActividades.WebServiceTestSoapClient ServicioActividades = new ServiceActividades.WebServiceTestSoapClient();
            ServicioActividades.stInserAct(TextBox1.Text, str);

            string Exito = "Registro exitoso";

            TextBox1.Text = string.Empty;

            Label3.Text = Exito;

        }
    }
}