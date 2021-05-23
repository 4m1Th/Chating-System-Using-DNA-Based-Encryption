using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace DNAENCRIPTION
{
    public class connection
    {

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-VC1F651;Initial Catalog=DNAPROJECT;Integrated Security=True");
        public int Exec(string Query)
        {
            con.Close();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand(Query, con);
            int i = cmd.ExecuteNonQuery();

            con.Close();
            return i;
        }

       

        public SqlDataReader ExeReader(string Query)
        {
            con.Close();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(Query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public object bind(string Query)
        {
            con.Close();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            SqlDataAdapter dr = new SqlDataAdapter(Query, con);
            DataSet ds = new DataSet();
            dr.Fill(ds);
            object dataum = ds.Tables[0];
            return dataum;
        }
        public DataTable Bind1(string Query)
        {
            con.Close();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            SqlDataAdapter dr = new SqlDataAdapter(Query, con);
            DataTable ds = new DataTable();
            dr.Fill(ds);

            return ds;
        }



    }
}