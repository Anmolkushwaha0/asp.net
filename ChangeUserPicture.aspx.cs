using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class ChangeUserPicture : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ANMOL\ANMOL;Initial Catalog=erpsystem;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from NewRegistration where Email='" + Session["User"].ToString() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Image1.ImageUrl = dr["Image"].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string ext = Path.GetExtension(FileUpload1.FileName).ToLower();
            if (ext == ".jpg" || ext == ".jpeg" || ext == ".png")
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/img/") + filename);
                //string img = "~/img/" + filename;
                Image2.ImageUrl = "~/img/" + filename;
                Image2.Visible = true;
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=ANMOL\ANMOL;Initial Catalog=erpsystem;Integrated Security=True;Pooling=False");
        con.Open();
        SqlCommand cmd = new SqlCommand("update NewRegistration set Image = '" + Image2.ImageUrl + "' where Email='" + Session["User"].ToString() + "'", con);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Redirect("Home.aspx");
        }
        else
        {

        }
    }
}