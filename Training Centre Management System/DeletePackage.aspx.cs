using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Training_Centre_Management_System
{
    public partial class DeletePackage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-O24NBL5\\SQLEXPRESS; Initial Catalog=tcmsDB; Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            try
            {
                string deleteQuery = "DELETE FROM Package1 WHERE Packageid=" + TextBox1.Text;
                con.Open();
                SqlCommand cmd = new SqlCommand(deleteQuery, con);

                if (cmd.ExecuteNonQuery() == 1)
                {
                    Response.Write("<script>alert('Delete Successfull');</script>");
                }
                else 
                {
                    Response.Write("<script>alert('Delete Unsuccess');</script>");
                }
            }
            catch (Exception ex) 
            {
                
            }
            con.Close();
        }
    }
}