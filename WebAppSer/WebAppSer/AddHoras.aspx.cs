using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppSer
{
    public partial class AddHoras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = System.Web.HttpContext.Current.Session["Var"].ToString();

            ServiceReferenceHoras.WebServiceHorasSoapClient ServicioHoras = new ServiceReferenceHoras.WebServiceHorasSoapClient();
            Label4.Text = ServicioHoras.InsertarTiem(Convert.ToDateTime(TextBox1.Text), 
            Convert.ToInt32(TextBox2.Text), Convert.ToInt32(str));

            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
        }
    }
}