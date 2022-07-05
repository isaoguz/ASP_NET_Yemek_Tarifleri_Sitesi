using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];

            SqlCommand komut = new SqlCommand("Select YemekAd from Tbl_Yemekler where Yemekid =@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                Label3.Text = oku[0].ToString();
            }
            //Yorumları listeleme
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where Yemekid = @p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();


        }

        protected void BtnYorum_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorum,Yemekid) values (@t1,@t2,@t3,@t4) ",bgl.baglanti());
            komut3.Parameters.AddWithValue("@t1",TxtAdSoyad.Text);
            komut3.Parameters.AddWithValue("@t2", TxtMail.Text);
            komut3.Parameters.AddWithValue("@t3", TxtYorum.Text);
            komut3.Parameters.AddWithValue("@t4", yemekid);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Yorum Gönderildi.");



        }
    }
}