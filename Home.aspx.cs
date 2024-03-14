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

public partial class Home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ANMOL\ANMOL;Initial Catalog=erpsystem;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = RadioButtonList1.SelectedIndex;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {        
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Adminlogintab where Adminid=@1 and Password=@2");
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@2", TextBox2.Text);
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Response.Redirect("Welcome.aspx");
        }
        else
        {
            Label3.Text = "Invalid password";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from NewRegistration where Email=@4 and Password=@5");
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@4", TextBox3.Text);
        cmd.Parameters.AddWithValue("@5", TextBox4.Text);
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            System.Threading.Thread.Sleep(5000);
            Session["User"] = TextBox3.Text;
            Response.Redirect("Dashbord.aspx");
        }
        else
        {
            Label6.Text = "Invalid password";
        }
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}