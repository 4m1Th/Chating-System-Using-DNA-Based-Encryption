using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DNAENCRIPTION
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        connection cs = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null && Session["password"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if(!IsPostBack)
                {
                    grid();
                }
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string st = "pending";
            SqlDataReader dr= cs.ExeReader("select * from tb_wrequest where workreq_id='"+ aw3.SelectedValue + "'");
            dr.Read();
            int i = cs.Exec("insert into tb_assign_work values('" + aw3.SelectedValue+ "','" + aw2.SelectedValue + "','"+aw3.SelectedItem.ToString()+"','"+aw2.SelectedItem.ToString()+"','"+dr[3].ToString()+"','"+st+"')");
             if (i > 0)
            {
                Response.Write("<script>alert('Successfully Assigned!!!!')</script>");
            }


        }
        public void grid()
        {
            
            aw2.DataSource = cs.bind("select * from tb_employee");
            aw2.DataTextField = "Emp_name";
            aw2.DataValueField = "phon_no";
            aw2.DataBind();
            aw3.DataSource = cs.bind("select * from tb_wrequest");
            aw3.DataTextField = "work_name";
            aw3.DataValueField = "workreq_id";
            aw3.DataBind();
        }
    }

   
}