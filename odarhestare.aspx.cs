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
using System.Data;

public partial class odarhestare : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ANMOL\ANMOL;Initial Catalog=erpsystem;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            string query = "select paymantmod,amount,datoforderi,Address from finllorderidtab inner join myprodutstab on finllorderidtab.produtsid=myprodutstab.produtsid where Email='" + Session["User"].ToString() + "'";
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Response.Redirect("Home.aspx");
        }
    }
}