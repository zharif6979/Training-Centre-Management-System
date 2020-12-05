using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Training_Centre_Management_System
{
    public partial class Layout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton2.Visible = true; //userlogin link button
                    LinkButton4.Visible = true; //sign up link button

                    LinkButton5.Visible = false; //logout link button
                    LinkButton6.Visible = false; //hello user link button

                    LinkButton3.Visible = true; //admin login link button
                    LinkButton7.Visible = false; //Add Package link button
                    LinkButton9.Visible = false; //Delete Package link button
                    LinkButton10.Visible = false; //Report link button
                    ImageButton1.Visible = false; // Cart link button

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton2.Visible = false; //userlogin link button
                    LinkButton4.Visible = false; //sign up link button

                    LinkButton5.Visible = true; //logout link button
                    LinkButton6.Visible = true; //hello user link button
                    LinkButton6.Text = "Hello " + Session["username"].ToString();

                    LinkButton3.Visible = true; //admin login link button
                    LinkButton7.Visible = false; //Add Room link button
                    LinkButton9.Visible = false; //Delete room link button
                    LinkButton10.Visible = false; //Report link button
                    ImageButton1.Visible = true; // Cart link button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton2.Visible = false; //userlogin link button
                    LinkButton4.Visible = false; //sign up link button

                    LinkButton5.Visible = true; //logout link button
                    LinkButton6.Visible = true; //hello user link button
                    LinkButton6.Text = "Hello Admin";

                    LinkButton3.Visible = false; //admin login link button
                    LinkButton7.Visible = true; //Add Room link button
                    LinkButton9.Visible = true; //Delete room link button
                    LinkButton10.Visible = true; //Report link button
                    ImageButton1.Visible = true; // Cart link button
                }
            }
            catch (Exception ex)
            {
                
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        



        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton2.Visible = true; //userlogin link button
            LinkButton4.Visible = true; //sign up link button

            LinkButton5.Visible = false; //logout link button
            LinkButton6.Visible = false; //hello user link button

            LinkButton3.Visible = true; //admin login link button
            LinkButton7.Visible = false; //Add Room link button
            LinkButton9.Visible = false; //Delete room link button
            LinkButton10.Visible = false; //Report link button
            ImageButton1.Visible = false; // Cart link button
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddPackage.aspx");
        }


        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeletePackage.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AddtoCart2.aspx");
        }

        
    }
}