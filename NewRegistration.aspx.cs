using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



using System.Configuration;
using System.IO;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class NewRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string ext = Path.GetExtension(FileUpload1.FileName).ToLower();
            if (ext == ".jpg" || ext == ".jpeg" || ext == ".png")
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/img/") + filename);
                string img = "~/img/" + filename;

                SqlConnection con = new SqlConnection(@"Data Source=ANMOL\ANMOL;Initial Catalog=erpsystem;Integrated Security=True;Pooling=False");
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "insert into NewRegistration values(@1,@2,@3,@4,@5,@6,@7)";
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@1", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@2", TextBox1.Text);
                cmd.Parameters.AddWithValue("@3", TextBox2.Text);
                cmd.Parameters.AddWithValue("@4", TextBox3.Text);
                cmd.Parameters.AddWithValue("@5", TextBox4.Text);
                cmd.Parameters.AddWithValue("@6", TextBox5.Text);
                cmd.Parameters.AddWithValue("@7", img);
                int i = cmd.ExecuteNonQuery();
                if (i >= 1)
                {
                    Label8.Text = "Record Saved...!!";
                }
                else
                {
                    Label8.Text = "Errorrrr...!!";
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}