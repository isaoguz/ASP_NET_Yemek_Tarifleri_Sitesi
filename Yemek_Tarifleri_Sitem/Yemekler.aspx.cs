using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string islem = " ";
        string id = " ";
        string id1 = " ";
        protected void Page_Load(object sender, EventArgs e)
        {

            Panel2.Visible = false;
            Panel4.Visible = false;
            //Yemek Listesi
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

                id1 = Request.QueryString["Kategoriid"];

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];


                //Kategori Listesi
                SqlCommand kategori = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader oku1 = kategori.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";   //ekranda görülen
                DropDownList1.DataValueField = "Kategoriid"; //arka planda görülen
                DropDownList1.DataSource = oku1;
                DropDownList1.DataBind();

            }


            if (islem == "sil")
            {
                SqlCommand sil = new SqlCommand("Delete from Tbl_Yemekler where Yemekid = @y1", bgl.baglanti());
                sil.Parameters.AddWithValue("@y1", id);
                sil.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("Yemek Silinmiştir.");


            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Resimler/") + FileUpload1.FileName);
            //Yemek Ekleme
            SqlCommand ekle = new SqlCommand("insert into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid,YemekResim) values (@p1,@p2,@p3,@p4,@p5)", bgl.baglanti());
            ekle.Parameters.AddWithValue("@p1", TxtAd.Text);
            ekle.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
            ekle.Parameters.AddWithValue("@p3", TxtTarif.Text);
            ekle.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            ekle.Parameters.AddWithValue("@p5", "~/Resimler/"+FileUpload1.FileName);

            ekle.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Yemek Eklendi");

            //Kategori Sayını Arttırma
            SqlCommand arttır = new SqlCommand("Update Tbl_Kategoriler Set KategoriAdet = KategoriAdet + 1 where Kategoriid = @p1", bgl.baglanti());
            arttır.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            arttır.ExecuteReader();
            bgl.baglanti().Close();



        }

    }
}