using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id =  " ";
        string islem = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
            //silme işlemi

            if (islem=="sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete  from Tbl_Kategoriler where Kategoriid = @d1",bgl.baglanti());
                komutsil.Parameters.AddWithValue("@d1",id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("Kategori Silindi.");
            }
            Panel2.Visible = false;
            Panel4.Visible = false;

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

        protected void KategoriEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values (@p1)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TxtAd.Text);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Kategori Eklendi.");
        }
    }
}