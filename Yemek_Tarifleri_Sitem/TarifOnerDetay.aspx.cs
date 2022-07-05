using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];

            if (Page.IsPostBack==false)
            {

            SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where Tarifid = @p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                Txttarifad.Text = oku[1].ToString();
                txtmalzeme.Text = oku[2].ToString();
                txtyapilis.Text = oku[3].ToString();
                tarifoneren.Text = oku[5].ToString();
                onerenmail.Text = oku[6].ToString();
            }
            bgl.baglanti().Close();
            }
            //Kategori Listesi
            SqlCommand kategori = new SqlCommand("Select * from Tbl_Kategoriler",bgl.baglanti());
            SqlDataReader dr = kategori.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr;
            DropDownList1.DataBind();

        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            //Güncelleme
            SqlCommand komut1 = new SqlCommand("Update Tbl_Tarifler Set TarifDurum=1 where Tarifid = @t1",bgl.baglanti());
            komut1.Parameters.AddWithValue("@t1",id);
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();

            SqlCommand komut2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",Txttarifad.Text);
            komut2.Parameters.AddWithValue("@p2", txtmalzeme.Text);
            komut2.Parameters.AddWithValue("@p3", txtyapilis.Text);
            komut2.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Ekleme Başarılı");
        }

    }
}