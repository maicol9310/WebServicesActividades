using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
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
            string str = System.Web.HttpContext.Current.Session["Email"].ToString();
            String strConnString = ConfigurationManager.ConnectionStrings["Jan"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("ListAct", con);
            command.Parameters.AddWithValue("@Email", str);
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }     

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = System.Web.HttpContext.Current.Session["VarEmail"].ToString();

            ServiceActividades.WebServiceTestSoapClient ServicioActividades = new ServiceActividades.WebServiceTestSoapClient();
            Label3.Text = ServicioActividades.stInserAct(TextBox1.Text, str);

            TextBox1.Text = string.Empty;

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int valor = Convert.ToInt32(GridView1.SelectedRow.Cells[0].Text);

            int valor2 = valor;

            Response.Redirect("http://localhost:51538/Servicios/WebServiceHoras.asmx", false);
        }
    }
}