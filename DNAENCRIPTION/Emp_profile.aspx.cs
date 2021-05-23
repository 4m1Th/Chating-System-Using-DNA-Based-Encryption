using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DNAENCRIPTION
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        connection cs = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null && Session["password"] != null)
            {
                if (!IsPostBack)
                {
                    MultiView1.ActiveViewIndex = 0;
                    bind();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }


        }
        public void bind()
        {
            SqlDataReader dr = cs.ExeReader("select * from tb_employee where Phon_no='" + Convert.ToInt64(Session["username"]) + "'");
            dr.Read();
            name.Text = dr[1].ToString();
            phone.Text = dr[0].ToString();
            email.Text = dr[2].ToString();
            password.Text = dr[3].ToString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;

        }

        protected void ereg_Click(object sender, EventArgs e)
        {
            string a = password.Text;
            if (a == TextBox1.Text)
            {
                int i = cs.Exec("update tb_employee set password='" + TextBox2.Text + "' where Phon_no='" + Convert.ToInt64(Session["username"]) + "' ");
                int j = cs.Exec("update login set password='" + TextBox2.Text + "' where username='" + Convert.ToInt64(Session["username"]) + "' ");
                if (i > 0)
                {
                    Response.Write("<script>alert('Successfully Updated !!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Updation Failed !!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Incorrect Current Password !!')</script>");
            }

        }
    }
}