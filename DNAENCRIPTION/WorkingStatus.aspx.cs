using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DNAENCRIPTION
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        public static string status = "pending";
        connection cs = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null && Session["password"] != null)
            {
                if (!IsPostBack)
                {
                    LinkButton1.ForeColor = System.Drawing.Color.Green;
                    LinkButton1.Font.Bold = true;
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
            string st = "pending";
            GridView1.DataSource = cs.bind("select * from tb_wrequest where status='"+st+"'");
            GridView1.DataBind();

        }

        public void grid1()
        {
            GridView2.DataSource = cs.bind("select * from tb_wrequest");
            GridView2.DataBind();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton1.ForeColor = System.Drawing.Color.Green;
            LinkButton1.Font.Bold = true;

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="apr")
            {
                GridViewRow ws = (GridViewRow)(((Button)e.CommandSource).NamingContainer);
                int RowIndex = ws.RowIndex;
                long wr = Convert.ToInt64(e.CommandArgument.ToString());
                status = "approved";
                int i = cs.Exec("update tb_wrequest set status='"+ status +"'where workreq_id='"+wr+"'");
                if(i>0)
                {
                    Response.Write("<script>alert('Approved!!')</script>");
                }
                grid();
                grid1();
            }
            if (e.CommandName == "rej")
            {
                GridViewRow ws = (GridViewRow)(((Button)e.CommandSource).NamingContainer);
                int RowIndex = ws.RowIndex;
                long wr = Convert.ToInt64(e.CommandArgument.ToString());
                status = "rejected";
                int i = cs.Exec("update tb_wrequest set status='" + status + "'where workreq_id='" + wr + "'");
                if (i > 0)
                {
                    Response.Write("<script>alert('Rejected!!')</script>");
                }
                grid();
                grid1();
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {

        }
    }
}