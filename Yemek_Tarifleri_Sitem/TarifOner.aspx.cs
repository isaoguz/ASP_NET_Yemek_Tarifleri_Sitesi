using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifMail) values (@p1,@p2,@p3,@p4,@p5,@p6)", bgl.baglanti()) ;
            komut.Parameters.AddWithValue("@p1",TxtTarifAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
            komut.Parameters.AddWithValue("@p3", TxtYapilis.Text);
            komut.Parameters.AddWithValue("@p4", FileResimYukle.FileName);
            komut.Parameters.AddWithValue("@p5", TxtTarifOneren.Text);
            komut.Parameters.AddWithValue("@p6", TxtMailAdresi.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifiniz alınmıştır.");

        }
    }
}