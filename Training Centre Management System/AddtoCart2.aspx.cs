using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography.X509Certificates;
using System.Diagnostics;
using System.Web.DynamicData;


namespace Training_Centre_Management_System
{
    public partial class AddtoCart2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["buyitems"] == null)
                {
                    Button1.Enabled = false;
                }
                else
                {
                    Button1.Enabled = true;
                }

                //Adding product to Gridview
                Session["addproduct"] = false;
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("pno");
                dt.Columns.Add("pid");
                dt.Columns.Add("pname");
                dt.Columns.Add("pimage");
                dt.Columns.Add("pprice");
                dt.Columns.Add("publish_date"); //Date column
                dt.Columns.Add("Times");
                dt.Columns.Add("pquantity");
                dt.Columns.Add("ptotalprice");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-O24NBL5\\SQLEXPRESS;Initial Catalog=tcmsDB;Integrated Security=True");
                        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Package1 WHERE PackageId=" + Request.QueryString["id"], conn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        

                        dr["pno"] = 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["PackageId"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        
                        dr["pquantity"] = Request.QueryString["quantity"];
                        dr["publish_date"] = Request.QueryString["date"];
                        dr["Times"] = Request.QueryString["time"];



                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["pprice"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["ptotalprice"] = TotalPrice;

                        

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddtoCart2.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection scon = new SqlConnection("Data Source=DESKTOP-O24NBL5\\SQLEXPRESS;Initial Catalog=tcmsDB;Integrated Security=True");

                        SqlDataAdapter da = new SqlDataAdapter("SELECT *  FROM Package1 WHERE PackageId=" + Request.QueryString["id"], scon);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        

                        dr["pno"] = sr + 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["PackageId"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];
                        dr["publish_date"] = Request.QueryString["date"];
                        dr["Times"] = Request.QueryString["time"];



                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["pprice"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["ptotalprice"] = TotalPrice;

                        

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddtoCart2.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
                }

            }
            string OrderDate = DateTime.Now.ToShortDateString();
            Session["Orderdate"] = OrderDate;
            orderid();

            //2. Calculating Final Price

            int grandtotal()
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["buyitems"];
                int nrow = dt.Rows.Count;
                int i = 0;
                int totalprice = 0;
                while (i < nrow)
                {
                    totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["ptotalprice"].ToString());

                    i = i + 1;
                }
                return totalprice;
            }
        }
            public void orderid()
            {
                String alpha = "abcdefghIjklmNopqrStuvwXyz123456789";
                Random r = new Random();
                char[] myArray = new char[5];
                for (int i = 0; i < 5; i++)
                {
                    myArray[i] = alpha[(int)(35 * r.NextDouble())];
                }
                String orderid;
                orderid = "Order_Id: " + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString()
                    + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myArray) + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
                Session["Orderid"] = orderid;

            }
        

        //4. Deleting Row From Cart
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["pno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    //Item has been deleted from shopping cart
                    break;
                }
            }

            //5. Setting PNO. after deleting row item from cart

            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["pno"] = i;
                dt.AcceptChanges();
            }

            Session["buyitems"] = dt;
            Response.Redirect("AddtoCart2.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-O24NBL5\\SQLEXPRESS;Initial Catalog=tcmsDB;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into OrderDetail(orderid,pno,packageid,packagename,price,quantity,orderdate,publisher_date,Times) values('" + Session["Orderid"] + "','"+dt.Rows[i]["pno"]+ "','" + dt.Rows[i]["pid"] + "','" + dt.Rows[i]["pname"] + "','" + dt.Rows[i]["pprice"] + "','" + dt.Rows[i]["pquantity"] + "','" + DateTime.Now.ToString("dd-MM-yyyy") + "','" +dt.Rows[i]["publish_date"]+ "', '"+ dt.Rows[i]["Times"]+"')", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            //If Session is Null Redirecting to login else Placing the order
            if (Session["username"] == null)
            {
                Response.Redirect("userlogin.aspx");
            }
            else
            {
                if (GridView1.Rows.Count.ToString() == "0")
                {
                    Response.Write("<script>alert('Your cart is Empty. You cannot place an order');<script>");
                }
                else 
                {
                    Response.Redirect("Quotation.aspx");
                }
            }
        }
    }
}
