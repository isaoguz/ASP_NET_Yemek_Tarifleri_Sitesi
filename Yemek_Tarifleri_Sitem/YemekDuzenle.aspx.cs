using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];
            if (Page.IsPostBack == false)
            {

                SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where Yemekid = @p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", yemekid);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TxtAd.Text = oku[1].ToString();
                    TxtMalzeme.Text = oku[2].ToString();
                    TxtTarif.Text = oku[3].ToString();

                }
                bgl.baglanti().Close();
            }

            if (Page.IsPostBack == false)
            {


                //kategori ekle 
                SqlCommand kategori = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader oku1 = kategori.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = oku1;
                DropDownList1.DataBind();

            }
        }

        protected void BtnDuzenle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Resimler/") + FileUpload1.FileName);
            SqlCommand guncelle = new SqlCommand("Update Tbl_Yemekler Set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4,YemekResim=@p6 where Yemekid=@p5",bgl.baglanti());
            guncelle.Parameters.AddWithValue("@p1",TxtAd.Text);
            guncelle.Parameters.AddWithValue("@p2",TxtMalzeme.Text);
            guncelle.Parameters.AddWithValue("@p3",TxtTarif.Text);
            guncelle.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            guncelle.Parameters.AddWithValue("@p5",yemekid);
            guncelle.Parameters.AddWithValue("@p6", "~/Resimler/"+FileUpload1.FileName);

            guncelle.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Yemek Düzenlendi");

        }

        protected void GununYemegi_Click(object sender, EventArgs e)
        {
            //Tüm yemeklerin durumunu false yap
            SqlCommand degistir = new SqlCommand("Update  Tbl_Yemekler Set Durum=0 ",bgl.baglanti());
            degistir.ExecuteNonQuery();
            bgl.baglanti().Close();

            //id ye göre durumu false yap.
            SqlCommand trueyap = new SqlCommand("Update Tbl_Yemekler Set Durum=1 where Yemekid= @p1",bgl.baglanti());
            trueyap.Parameters.AddWithValue("@p1",yemekid);
            trueyap.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}