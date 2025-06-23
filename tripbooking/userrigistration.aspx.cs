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
    public partial class userrigistration : System.Web.UI.Page
    {
        public static string constr = WebConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        protected void Page_Load(object sender, EventArgs e)
        {
            loginpagelink.Visible = false;
        }
        

        protected void btn_register_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into uregistration" + "(username,email,uphoneno,upassword,uaddress,ucity,upincode)values(@username,@email,@uphoneno,@upassword,@uaddress,@ucity,@upincode)", con);
            cmd.Parameters.AddWithValue("@username", txtuname.Text);
            cmd.Parameters.AddWithValue("@email", txtuemail.Text);
            cmd.Parameters.AddWithValue("@uphoneno", txtumoblieno.Text);
            cmd.Parameters.AddWithValue("@upassword", txtupassword.Text);
            cmd.Parameters.AddWithValue("@uaddress", txtuaddress.Text);
            cmd.Parameters.AddWithValue("@ucity", txtusercity.Text);
            cmd.Parameters.AddWithValue("@upincode", txtupincode.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Session["username"] = txtuname.Text;
            Session["usernumber"] = txtumoblieno.Text;
            Response.Redirect("bookingTrip.aspx");
            //Response.Write("<script>alert('Registration Successfully')</script>");
            loginpagelink.Visible = true;
        }

       

        protected void btn_ulogin_Click(object sender, EventArgs e)
        {
            
        }
    }
}