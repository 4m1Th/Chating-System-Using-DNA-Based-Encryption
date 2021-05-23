using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DNAENCRIPTION
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        connection cs = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton1.ForeColor = System.Drawing.Color.White;
            LinkButton1.Font.Bold = true;
            LinkButton2.ForeColor = System.Drawing.Color.Black;
            LinkButton2.Font.Bold = true;
            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton2.ForeColor = System.Drawing.Color.Black;
            LinkButton1.ForeColor = System.Drawing.Color.White;
            LinkButton1.Font.Bold = true;
            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton1.ForeColor = System.Drawing.Color.Black;
            LinkButton2.ForeColor = System.Drawing.Color.White;
            LinkButton2.Font.Bold = true;
            MultiView1.ActiveViewIndex = 1;
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string a = "user";
            int i = cs.Exec("insert into tb_client values('" + Convert.ToInt64(Phone_no.Text) + "','" + Client_name.Text + "','" + Mail_id.Text + "','" + Password.Text + "')");
            int j = cs.Exec("insert into login values ('" + Convert.ToInt64(Phone_no.Text) + "','" + Password.Text + "','" + a + "')");
            if (i > 0 && j > 0)
            {
                Response.Write("<script>alert('Successfully Registered!!!!')</script>");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = "employee";
            int i = cs.Exec("insert into tb_employee values('" + Convert.ToInt64(TextBox2.Text) + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')");
            int j = cs.Exec("insert into login values ('" + Convert.ToInt64(TextBox2.Text) + "','" + TextBox4.Text + "','" + a + "')");
            if (i > 0 && j > 0)
            {
                Response.Write("<script>alert('Successfully Registered!!!!')</script>");
            }
        }
    }
}