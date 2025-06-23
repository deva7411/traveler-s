using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace tripbooking
{
    
    public partial class login : System.Web.UI.Page
    {
        public static string constr = WebConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnu_login_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from uregistration", con);
            cmd.Parameters.AddWithValue("uphoneno", txt_username.Text);
            cmd.Parameters.AddWithValue("upassword", txt_password.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            con.Close();


            if(dt.Rows.Count > 0)
            {
                Response.Redirect("bookingTrip.aspx");
            }
            else
            {
                errormgs.Text = "Invaild cradentials";
            }
        }
    }
}