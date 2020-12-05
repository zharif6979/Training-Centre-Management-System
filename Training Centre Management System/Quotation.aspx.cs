using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.EnterpriseServices;
using System.Diagnostics;

namespace Training_Centre_Management_System
{
    public partial class Quotation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Orderid = Session["Orderid"].ToString();
            Label1.Text = Orderid;
            findorderdate(Label2.Text);
            showgrid(Label1.Text);
            customeraddress(Label3.Text);

        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                exportpdf();
        }
        private void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Quotation.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();


        }
        private void findorderdate(String Orderid)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O24NBL5\\SQLEXPRESS;Initial Catalog=tcmsDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from OrderDetail where orderid='" + Label1.Text + "'");
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label2.Text = ds.Tables[0].Rows[0]["Orderdate"].ToString();
            }
            con.Close();
        }

        private void customeraddress(String full_address)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O24NBL5\\SQLEXPRESS;Initial Catalog=tcmsDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from member_master_tbl where full_address='" + Label3.Text + "'");
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
        }

        private void showgrid(String orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("pno");
            dt.Columns.Add("packageid");
            dt.Columns.Add("packagename");
            dt.Columns.Add("publisher_date");
            dt.Columns.Add("Times");
            dt.Columns.Add("quantity");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");
            
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-O24NBL5\\SQLEXPRESS;Initial Catalog=tcmsDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from OrderDetail where orderid='" + Label1.Text + "'");
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                dr["pno"] = ds.Tables[0].Rows[i]["pno"].ToString();
                dr["packageid"] = ds.Tables[0].Rows[i]["packageid"].ToString();
                dr["packagename"] = ds.Tables[0].Rows[i]["packagename"].ToString();
                dr["publisher_date"] = ds.Tables[0].Rows[i]["publisher_date"].ToString();
                dr["Times"] = ds.Tables[0].Rows[i]["Times"].ToString();
                dr["quantity"] = ds.Tables[0].Rows[i]["quantity"].ToString();
                dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                int price = Convert.ToInt32(ds.Tables[0].Rows[i]["price"].ToString());
                int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
                int totalprice = price * quantity;
                dr["totalprice"] = totalprice;
                grandtotal = grandtotal + totalprice;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Label4.Text = grandtotal.ToString();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Invoice.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddtoCart2.aspx");
        }
    }
}