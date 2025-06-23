using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace tripbooking.Admin
{
    public partial class adminlogin : System.Web.UI.Page
    {
        public static string consrt = WebConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        SqlConnection con = new SqlConnection(consrt);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from adminlogin",con);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@pasword", txtPassword.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            
            cmd.ExecuteNonQuery();
            if(dt.Rows.Count>0)
            {
                Response.Redirect("~/Admin/admin.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid Credentials";
            }
            con.Close();
        }
    }
}