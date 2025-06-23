using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace tripbooking
{
    public partial class admin : System.Web.UI.Page
    {
        public static string constr = WebConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into vehicels" + "(v_type,v_sits,v_number,v_image)values(@v_type,@v_sits,@v_number,@v_image)", con);
            string extention = Path.GetExtension(upvehicle_img.FileName).ToLower();
            if(extention ==".jpg" || extention==".png" || extention ==".jpeg")
            {
                if(upvehicle_img.PostedFile.ContentLength>2097152)//2mb
                {
                    lblmgs.Text = "Image size must be less than 2MB";
                }
                byte[] v_imgbyte;
                BinaryReader br = new BinaryReader(upvehicle_img.PostedFile.InputStream);
                v_imgbyte = br.ReadBytes(upvehicle_img.PostedFile.ContentLength);

                cmd.Parameters.AddWithValue("v_type", txtvehicle_type.Text);
                cmd.Parameters.AddWithValue("v_sits", txtvehicle_sits.Text);
                cmd.Parameters.AddWithValue("v_number", txtvehicle_number.Text);
                cmd.Parameters.AddWithValue("v_image", v_imgbyte);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully data saved')</script>");
                

            }
            else
            {
                lblmgs.Text = "Image format is not supported...!, only .jpg,.pgn,.jpeg";
            }

        }

        protected void btnv_display_Click(object sender, EventArgs e)
        {


      
                v_detalies();
            
        }

        void v_detalies()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from vehicels", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            v_grid.DataSource = dt;
            v_grid.DataBind();
            con.Close();
        }

        protected void btn_display_orders_Click(object sender, EventArgs e)
        {
            
                orderdetailes();
            
        }

        void orderdetailes()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from fix_map", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            grid_orders.DataSource = dt;
            grid_orders.DataBind();
            con.Close();
        }

        protected void btn_route_save_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into routepayment values(@r_from,@r_to,@r_payment)", con);
            cmd.Parameters.AddWithValue("@r_from", txtfrom.Text);
            cmd.Parameters.AddWithValue("@r_to", txtto.Text);
            cmd.Parameters.AddWithValue("@r_payment", txtpayment.Text);
            cmd.ExecuteNonQuery();
            r_lblmgs.Text = "Data Saved";
            
            con.Close();
        }
    }
}