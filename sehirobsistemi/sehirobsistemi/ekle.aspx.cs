using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sehirobsistemi
{
    public partial class ekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string baglantiString = ConfigurationManager.ConnectionStrings["baglantiString"].ConnectionString;
                SqlConnection baglanti = new SqlConnection("baglantiString");
                baglanti.Open();
                string sorgu = "insert into kullanici(isim,email,telefon,adres) values(@p1,@p2,@p3,@p4)";

                SqlCommand komut = new SqlCommand(sorgu, baglanti);
                komut.Parameters.AddWithValue("@p1", txt1.Text.Trim());
                komut.Parameters.AddWithValue("@p2", txt2.Text.Trim());
                komut.Parameters.AddWithValue("@p3", txt3.Text.Trim());
                komut.Parameters.AddWithValue("@p4", txt4.Text.Trim());
                komut.ExecuteNonQuery();
                baglanti.Close();
                lbltxt.Text = "kullanıcı başarı ile kaydedildi";
            }
            catch(Exception ex) {
                lbltxt.Text = ex.Message;
            }
        }
    }
}