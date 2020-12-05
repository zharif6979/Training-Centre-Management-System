using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Training_Centre_Management_System
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

      
        
        protected void Button1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Pangsun.aspx");
        }

        protected void Button2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Bestari.aspx");
        }

        
        protected void Button3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Unggul.aspx");
        }

        protected void Button4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Merang.aspx");
        }
    }
    }
    
