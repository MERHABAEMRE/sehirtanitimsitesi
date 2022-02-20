using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sehirobsistemi
{
    public partial class yerler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string baglantiString = ConfigurationManager.ConnectionStrings["baglantiString"].ConnectionString;
            string sorgu = "select * from yerler";
            SqlDataAdapter sda = new SqlDataAdapter(sorgu, baglantiString);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
}