using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];

            if (Page.IsPostBack==false)
            {


            SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorum,YemekAd From Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yemekler.Yemekid=Tbl_Yorumlar.Yemekid where Yorumid = @p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                Txtadsoyad.Text = oku[0].ToString();
                TxtMail.Text = oku[1].ToString();
                Txticerik.Text = oku[2].ToString();
                TxtYemek.Text = oku[3].ToString();

            }
            bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand guncelle = new SqlCommand("Update Tbl_Yorumlar set Yorum=@p1,YorumOnay=@p2 where Yorumid=@p3",bgl.baglanti());
            guncelle.Parameters.AddWithValue("@p1",Txticerik.Text);
            guncelle.Parameters.AddWithValue("@p2", "True");
            guncelle.Parameters.AddWithValue("@p3", id);
            guncelle.ExecuteNonQuery();
            Response.Write("Güncellenmiştir.");


        }
    }
}