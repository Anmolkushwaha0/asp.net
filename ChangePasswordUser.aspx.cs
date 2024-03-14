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

public partial class ChangePasswordUser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ANMOL\ANMOL;Initial Catalog=erpsystem;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from NewRegistration where Email=@4 and Password=@5");
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@4", Session["User"].ToString());
        cmd.Parameters.AddWithValue("@5", TextBox1.Text);
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Panel1.Visible = true;
            Button1.Enabled = false;
        }
        else
        {
            Response.Redirect("<script type='text/javascript'>alert('Invalid Password..!!);'</script>");

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=ANMOL\ANMOL;Initial Catalog=erpsystem;Integrated Security=True;Pooling=False");
        con.Open();
        SqlCommand cmd = new SqlCommand("update NewRegistration set Password = '" + TextBox2.Text + "' where Email='" + Session["User"].ToString() + "'", con);
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