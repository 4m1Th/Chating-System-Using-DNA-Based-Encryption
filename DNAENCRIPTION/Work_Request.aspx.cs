using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DNAENCRIPTION
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        connection cs = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
           if(Session["username"]==null && Session["password"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {


            
            string a = "pending";
            int i = cs.Exec("insert into tb_wrequest values('" + name.Text + "','"+a+"','"+desc.Text+"','"+ Session["username"].ToString() + "')");
            if (i > 0 )
            {
                Response.Write("<script>alert('Successfully Sumbmitted!!!!')</script>");
                desc.Text = "";
                name.Text = "";
            }


        }
        public void gridd()
        {
          GridView1.DataSource=  cs.bind("select * from tb_wrequest");
            GridView1.DataBind();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
       
            gridd();
        }
    }
}