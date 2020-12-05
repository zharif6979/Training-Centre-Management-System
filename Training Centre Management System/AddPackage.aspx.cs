using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Training_Centre_Management_System
{
    public partial class AddPackage :Page
    {

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-O24NBL5\\SQLEXPRESS; Initial Catalog=tcmsDB; Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (FileUpload1.HasFile)
            {
                string filename = FileUpload1.PostedFile.FileName;
                string filepath = "image/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/image/") + filename);
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Package1 values('"+TextBox1.Text+ "','" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + filepath+ "', '" + TextBox4.Text + "' )", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Packages.aspx");
            }
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
            string filename = FileUpload1.PostedFile.FileName;
            string filepath = "image/" + FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/image/") + filename);
            string updateQuery = "UPDATE Package1 SET Pname ='" + TextBox2.Text + "',Pdesc='" + TextBox3.Text + "',Pimage='"+filepath+"' ,Pprice= " + int.Parse(TextBox4.Text) + "WHERE PackageId=" + int.Parse(TextBox1.Text);

            con.Open();
            try
            {
                SqlCommand cmd = new SqlCommand(updateQuery, con);
                if (cmd.ExecuteNonQuery() == 1)
                {
                  Response.Write("<script>alert('Edit Successfull');</script>");
                 }
                else
                {
                  Response.Write("<script>alert('Edit Unsuccess');</script>");
                }
            }
            catch (Exception ex)
            {

            }


            con.Close();
        }
        }
    }
}