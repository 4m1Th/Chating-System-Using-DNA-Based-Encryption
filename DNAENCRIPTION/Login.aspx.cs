using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DNAENCRIPTION
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        connection cs = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlDataReader dr = cs.ExeReader("select * from login where username='" +Convert.ToInt64( name.Text )+ "'");
            if (dr.Read())
            {
                if (dr[2].ToString() == pass.Text)
                {
                    Session.Add("username", name.Text);
                    Session.Add("password", pass.Text);
                    if (dr[3].ToString() == "admin")
                    {
                        Response.Redirect("AdminHome.aspx");
                    }
                    if (RadioButton1.Checked && dr[3].ToString() == "user")
                    {
                        Response.Redirect("UserHome.aspx");
                    }
                    if (RadioButton2.Checked && dr[3].ToString() == "employee")
                    {
                        Response.Redirect("EmployeeHome.aspx");
                    }
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}