using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class KategoriAdmin : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Kategoriid"];
            if (Page.IsPostBack==false)
            {

            SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler where Kategoriid = @p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TxtAd.Text = oku[1].ToString();
                TxtAdet.Text = oku[2].ToString();
            }
            bgl.baglanti().Close();
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("Update  Tbl_Kategoriler set KategoriAd = @p1,KategoriAdet=@p2 where Kategoriid = @p3",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",TxtAd.Text);
            komut2.Parameters.AddWithValue("@p2", TxtAdet.Text);
            komut2.Parameters.AddWithValue("@p3", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Kategori Düzenlendi.");
        }
    }
}