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

public partial class odar : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ANMOL\ANMOL;Initial Catalog=erpsystem;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null && Request.QueryString["var"] != null)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from myprodutstab where produtsid ='" + Request.QueryString["var"].ToString() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Image1.ImageUrl = dr["img"].ToString();
                Label8.Text = dr["produtsid"].ToString();
                Label9.Text = dr["produtsname"].ToString();
                Label3.Text = dr["categr"].ToString();
                Label11.Text = dr["description"].ToString();
                Label10.Text = dr["price"].ToString();
            }
            for (int i = 0; i < 100; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int price = Convert.ToInt32(Label10.Text);
        int quantitu = Convert.ToInt32(DropDownList1.Text);
        int amount = price * quantitu;
        Label12.Text = amount.ToString();
        DropDownList1.Enabled = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=ANMOL\ANMOL;Initial Catalog=erpsystem;Integrated Security=True;Pooling=False");
        con.Open();
        string orderid = Guid.NewGuid().ToString();
        orderid = orderid.Replace("_", string.Empty);
        orderid = orderid.Substring(0, 6);
        string prductid = Label8.Text;
        string productnasme = Label9.Text;
        string price = Label10.Text;
        string Quantity = DropDownList1.Text;
        string PaymentMode = DropDownList2.Text;
        string amount = Label12.Text;
        DateTime DOR = DateTime.Now;
        string Address = TextBox1.Text;
        string Status = "Order Plased...";

        SqlCommand cmd = new SqlCommand("insert into finllorderidtab values(@1,@2,@3,@4,@5,@6,@7,@8,@9,@10)", con);
        cmd.Parameters.AddWithValue("@1", orderid);
        cmd.Parameters.AddWithValue("@2", prductid);
        cmd.Parameters.AddWithValue("@3", productnasme);
        cmd.Parameters.AddWithValue("@4", price);
        cmd.Parameters.AddWithValue("@5", Quantity);
        cmd.Parameters.AddWithValue("@6", Status);
        cmd.Parameters.AddWithValue("@7", PaymentMode);
        cmd.Parameters.AddWithValue("@8", amount);
        cmd.Parameters.AddWithValue("@9", DOR);
        cmd.Parameters.AddWithValue("@10", Address);

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Session["Order"] = orderid;
            Response.Redirect("FinalOrderStatus.aspx");
        }
    }
}