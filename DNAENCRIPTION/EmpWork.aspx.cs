using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DNAENCRIPTION
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        public static string status = "pending";
        connection cs = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null && Session["password"] != null)
            {
                if (!IsPostBack)
                {

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
            GridView1.DataSource = cs.bind("select * from tb_assign_work where emp_id='" + Convert.ToInt64(Session["username"]) + "' and status='"+status+"'");
            GridView1.DataBind();

        }
        public void grid1()
        {
            GridView2.DataSource = cs.bind("select * from tb_assign_work  where emp_id='" + Convert.ToInt64(Session["username"]) + "'");
            GridView2.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmp")
            {
                GridViewRow ws = (GridViewRow)(((Button)e.CommandSource).NamingContainer);
                int RowIndex = ws.RowIndex;
                long wr = Convert.ToInt64(e.CommandArgument.ToString());
                string st = "completed";
                int i = cs.Exec("update tb_wrequest set status='" + st + "' where workreq_id='" + wr + "'");
                int j= cs.Exec("update tb_assign_work set status='" + st + "' where work_id='" + wr + "'");

                if (i > 0)
                {
                    Response.Write("<script>alert('Completed!!')</script>");
                }
                grid();
                grid1();


            }

        }
    }
}