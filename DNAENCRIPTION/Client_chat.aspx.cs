using EncDNA;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DNAENCRIPTION
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        connection cs = new connection();
        dna d = new dna();
        public long ph = 8281954162;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null && Session["password"] != null)
            {
                if (!IsPostBack)
                {
                    LinkButton1.ForeColor = System.Drawing.Color.Green;
                    LinkButton1.Font.Bold = true;
                    LinkButton2.ForeColor = System.Drawing.Color.White;
                    LinkButton2.Font.Bold = true;
                    MultiView1.ActiveViewIndex = 0;

                    drop();
                    bind();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }



        }
        public void drop()
        {
            chat2.DataSource = cs.bind("select * from tb_employee");
            chat2.DataTextField = "Emp_name";
            chat2.DataValueField = "Phon_no";
            chat2.DataBind();
        }
        public void bind()
        {
            DataTable dtt = new DataTable();
            dtt.Columns.Add("name");
            dtt.Columns.Add("message");
            dtt.Rows.Clear();
            DataTable dt1 = cs.Bind1("select * from tb_chat where (to_id='" + Convert.ToInt64(Session["username"].ToString()) + "' and from_id='" + ph + "') or ( from_id='" + Convert.ToInt64(Session["username"].ToString()) + "' and to_id='" + ph + "')");
            foreach (DataRow drr in dt1.Rows)
            {
                DataTable dtname = new DataTable();
                string name;

                name = drr[4].ToString();
                string msg = d.Decrypt(drr[1].ToString());
                dtt.Rows.Add(name, msg);
            }
            DataList1.DataSource = dtt;
            DataList1.DataBind();

            //DataList1.DataSource = cs.bind("select * from tb_chat where to_id='" +Convert.ToInt64(Session["username"]) + "' and from_id='" + ph + "'");
            //DataList1.DataBind();
        
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton2.ForeColor = System.Drawing.Color.White;
            LinkButton1.ForeColor = System.Drawing.Color.Green;
            LinkButton1.Font.Bold = true;
            MultiView1.ActiveViewIndex = 0;

        }



        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton1.ForeColor = System.Drawing.Color.White;
            LinkButton2.ForeColor = System.Drawing.Color.Green;
            LinkButton2.Font.Bold = true;
            MultiView1.ActiveViewIndex = 1;

        }

        protected void send_Click(object sender, EventArgs e)
        {
            string ad = "admin";
            SqlDataReader dr = cs.ExeReader("select * from tb_client where phone_no='" + Convert.ToInt64(Session["username"]) + "'");
            dr.Read();
            string cl = dr[1].ToString();
            string encrypted = d.encrypt(TextBox1.Text);
            int i = cs.Exec("insert into tb_chat values('" + encrypted + "','" + Session["username"].ToString() + "','" + ph + "','" + cl + "','" + ad + "')");
            if (i > 0)
            {
             
                TextBox1.Text = "";
            }
            bind();
        }
        protected void chat1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Panel4.Visible = true;
            bind1();
            //DataList2.DataSource = cs.bind("select * from tb_chat where from_id='" + Convert.ToInt64(chat2.SelectedValue) + "' and to_id='"+Convert.ToInt64(Session["username"]) +"'");
            //DataList2.DataBind();
        }
        public void bind1()
        {
            DataTable dtt = new DataTable();
            dtt.Columns.Add("name");
            dtt.Columns.Add("message");
            dtt.Rows.Clear();
            DataTable dt1 = cs.Bind1("select * from tb_chat where (to_id='" + Convert.ToInt64(Session["username"].ToString()) + "' and from_id='" + Convert.ToInt64(chat2.SelectedValue) + "') or ( from_id='" + Convert.ToInt64(Session["username"].ToString()) + "' and to_id='" + Convert.ToInt64(chat2.SelectedValue) + "')");
            foreach (DataRow drr in dt1.Rows)
            {
                DataTable dtname = new DataTable();
                string name;

                name = drr[4].ToString();
                string msg = d.Decrypt(drr[1].ToString());
                dtt.Rows.Add(name, msg);
            }
            DataList2.DataSource = dtt;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            SqlDataReader dr = cs.ExeReader("select * from tb_client where phone_no='" + Convert.ToInt64(Session["username"]) + "'");
            dr.Read();
            string cl = dr[1].ToString();
            string emp = chat2.SelectedItem.ToString();
            string encrypted = d.encrypt(TextBox2.Text);
            int i = cs.Exec("insert into tb_chat values('" + encrypted + "','" + Session["username"].ToString() + "','" + chat2.SelectedValue + "','"+cl+"','"+chat2.SelectedItem+"')");
            if (i > 0)
            {
                TextBox2.Text = "";
            }
            bind1();

        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
    }


}