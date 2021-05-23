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
    public partial class WebForm11 : System.Web.UI.Page
    {
        dna d = new dna();
        DNAclass dc = new DNAclass();
        connection cs = new connection();
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

                   

                }
               
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }
        public void drop()
        {
            chat1.DataSource = cs.bind("select * from tb_employee");
            chat1.DataTextField = "Emp_name";
            chat1.DataValueField = "Phon_no";
            chat1.DataBind();
            chat2.DataSource = cs.bind("select * from tb_client");
            chat2.DataTextField = "Client_name";
            chat2.DataValueField = "phone_no";
            chat2.DataBind();
        }
    
        public void bind1()
        {
            //DataList2.DataSource = cs.bind("select * from tb_chat where to_id='" + chat2.SelectedValue + "' ");
            //DataList2.DataBind();
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
                string str = d.Decrypt(drr[1].ToString());
                string msg = dc.decrypt(str);
                dtt.Rows.Add(name, msg);
            }
            DataList2.DataSource = dtt;
            DataList2.DataBind();

        }
        public void bind2()
        {
            //DataList2.DataSource = cs.bind("select * from tb_chat where to_id='" + chat2.SelectedValue + "' ");
            //DataList2.DataBind();
            DataTable dtt = new DataTable();
            dtt.Columns.Add("name");
            dtt.Columns.Add("message");
            dtt.Rows.Clear();
            DataTable dt1 = cs.Bind1("select * from tb_chat where (to_id='" + Convert.ToInt64(Session["username"].ToString()) + "' and from_id='" + Convert.ToInt64(chat1.SelectedValue) + "') or ( from_id='" + Convert.ToInt64(Session["username"].ToString()) + "' and to_id='" + Convert.ToInt64(chat1.SelectedValue) + "')");
            foreach (DataRow drr in dt1.Rows)
            {
                DataTable dtname = new DataTable();
                string name;

                name = drr[4].ToString();
                string str = d.Decrypt(drr[1].ToString());
                string msg = dc.decrypt(str);

                dtt.Rows.Add(name, msg);
            }
            DataList1.DataSource = dtt;
            DataList1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ad = "admin";
            SqlDataReader dr = cs.ExeReader("select * from tb_employee where Phon_no='" + Convert.ToInt64(Session["username"]) + "'");
            dr.Read();
            string emp = chat1.SelectedItem.ToString();
            string str = dc.encrypt(TextBox1.Text);
            string encrypted = d.encrypt(str);
            int i = cs.Exec("insert into tb_chat values('" + encrypted+ "','" + Convert.ToInt64( Session["username"].ToString() )+ "','"+chat1.SelectedValue+"','"+ad+"','"+chat1.SelectedItem+"')");
            if (i > 0)
            {
               
                TextBox1.Text = "";
            }
            bind2();
        }
        protected void chat1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            bind2();

            //DataList1.DataSource = cs.bind("select * from tb_chat where from_id='" + Convert.ToInt64(chat1.SelectedValue) + "' and to_id='"+ Convert.ToInt64(Session["username"].ToString()) + "'");
            //DataList1.DataBind();
        }
        protected void chat2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Panel4.Visible = true;
            bind1();
           //DataList2.DataSource = cs.bind("select * from tb_chat where from_id='" + Convert.ToInt64(chat2.SelectedValue) + "' and to_id='" + Convert.ToInt64(Session["username"].ToString()) + "'");
           // DataList2.DataBind();
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            string ad = "admin";
            SqlDataReader dr = cs.ExeReader("select * from tb_client where phone_no='" + Convert.ToInt64(Session["username"]) + "'");
            dr.Read();
            string cl = chat2.SelectedItem.ToString();
            string str = dc.encrypt(TextBox2.Text);
            string encrypted = d.encrypt(str);
            int i = cs.Exec("insert into tb_chat values('" +encrypted+ "','" +Convert.ToInt64(Session["username"].ToString()) + "','"+chat2.SelectedValue+"','"+ad+"','"+chat2.SelectedItem+"')");
            if (i > 0)
            {
               
                TextBox2.Text = "";
            }
            bind1();
        }
    }
}