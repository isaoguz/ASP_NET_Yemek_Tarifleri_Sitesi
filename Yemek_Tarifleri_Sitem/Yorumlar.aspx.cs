using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitem
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //Onaylı Yorumlar
            Panel2.Visible = false;
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yorumlar where YorumOnay=1",bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            Panel4.Visible = false;
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where YorumOnay=0", bgl.baglanti());
            SqlDataReader oku1 = komut2.ExecuteReader();
            DataList2.DataSource = oku1;
            DataList2.DataBind();
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

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}