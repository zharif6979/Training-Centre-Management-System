using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Training_Centre_Management_System
{
    public partial class PlaceOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-O24NBL5\\SQLEXPRESS;Initial Catalog=tcmsDB;Integrated Security=True;");
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into CardDetail" + "(Fname,Lname,CardNo,ExpiryDate,CVV,BillingAddr) values (@Fname,@Lname,@CardNo,@ExpiryDate,@CVV,@BillingAddr)", con);
                cmd.Parameters.AddWithValue("@Fname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Lname", TextBox2.Text);
                cmd.Parameters.AddWithValue("@CardNo", TextBox3.Text);
                cmd.Parameters.AddWithValue("@ExpiryDate", TextBox4.Text);
                cmd.Parameters.AddWithValue("@CVV", TextBox5.Text);
                cmd.Parameters.AddWithValue("@BillingAddr", TextBox6.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Payment Made Successful');</script>");
            }

            Response.Redirect("Receipt.aspx");
        }
        
    }
}