using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DNAENCRIPTION
{
    
    public partial class WebForm5 : System.Web.UI.Page
    {
        connection cs = new connection();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null && Session["password"] != null)
            {

                if (!IsPostBack)
                {
                    LinkButton1.ForeColor = System.Drawing.Color.Green;
                    LinkButton1.Font.Bold = true;
                    LinkButton2.ForeColor = System.Drawing.Color.Black;
                    LinkButton2.Font.Bold = true;
                    MultiView1.ActiveViewIndex = 0;
                    grid();
                    grid1();
                }
                
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        public void grid()
        {
          GridView1.DataSource = cs.bind("select * from tb_client");
            GridView1.DataBind();

        }
        public void grid1()
        {
            GridView2.DataSource = cs.bind("select * from tb_employee");
            GridView2.DataBind();

        }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton1.ForeColor = System.Drawing.Color.Green;
            LinkButton1.Font.Bold = true;
            LinkButton2.ForeColor = System.Drawing.Color.Black;
            LinkButton2.Font.Bold = true;
            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton1.ForeColor = System.Drawing.Color.Black;
            LinkButton2.ForeColor = System.Drawing.Color.Green;
            LinkButton2.Font.Bold = true;
            MultiView1.ActiveViewIndex = 1;
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {

        }
    }
}