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

public partial class Dashbord : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ANMOL\ANMOL;Initial Catalog=erpsystem;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from NewRegistration where Email='"+Session["User"].ToString()+ "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Image1.ImageUrl = dr["Image"].ToString();
            Label1.Text = dr["FullName"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home.aspx");
        
        
    }
}