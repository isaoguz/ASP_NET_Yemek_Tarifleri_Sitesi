using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Mesajid"];
            SqlCommand komut = new SqlCommand("Select * from Tbl_Mesajlar where Mesajid = @p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                txtgonderen.Text = oku[1].ToString();
                txtbaslik.Text = oku[2].ToString();
                txtmail.Text = oku[3].ToString();
                txticerik.Text = oku[4].ToString();
            }
            bgl.baglanti().Close();
        }
    }
}