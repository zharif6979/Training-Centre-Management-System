using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Training_Centre_Management_System
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";
            if (e.CommandName == "AddToCart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
                TextBox box = (TextBox)(e.Item.FindControl("Datetxt"));
                TextBox kotak = (TextBox)(e.Item.FindControl("Timetxt"));
                Response.Redirect("AddtoCart2.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString() + "&date=" + box.Text.ToString() + "&time=" + kotak.Text.ToString());
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    } 
}